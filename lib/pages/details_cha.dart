import 'package:flutter/material.dart';
import 'package:motos_yamaha/models/cha.dart';
import 'package:motos_yamaha/widgets/custom_button.dart';
import 'package:motos_yamaha/widgets/transition.dart';

class DetailsChaPage extends StatefulWidget {
  const DetailsChaPage({Key? key, required this.cha}) : super(key: key);

  final Cha cha;

  @override
  State<DetailsChaPage> createState() => _DetailsChaPageState();
}

class _DetailsChaPageState extends State<DetailsChaPage> {
  int valueIndexColor = 0;
  int valueIndexSize = 300; 

  double sizecha(int index, Size size) {
    switch (index) {
      case 300: 
        return (size.height * 0.09);
      case 660:
        return (size.height * 0.07);
      case 900:
        return (size.height * 0.05);
      case 999:
        return (size.height * 0.04);
      default:
        return (size.height * 0.05);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: -size.height * 0.15,
              right: -size.height * 0.20,
              child: TweenAnimationBuilder<double>(
                duration: const Duration(milliseconds: 250),
                tween: Tween(begin: 0, end: 1),
                builder: (context, value, __) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    height: value * (size.height * 0.5),
                    width: value * (size.height * 0.5),
                    decoration: BoxDecoration(
                      color: widget.cha.listImage[valueIndexColor].color,
                      shape: BoxShape.circle,
                    ),
                  );
                },
              ),
            ),
            Positioned(
              top: kToolbarHeight,
              left: 16,
              right: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.attach_money,
                      size: 50,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: size.height * 0.20,
              right: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: FittedBox(
                  child: Text(
                    widget.cha.clan,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[100],
                    ),
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 250),
              top: size.height * 0.22,
              right: sizecha(valueIndexSize, size),
              left: sizecha(valueIndexSize, size),
              child: Hero(
                tag: widget.cha.name,
                child: Image(
                  image: AssetImage(
                    widget.cha.listImage[valueIndexColor].image,
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.6,
              left: 16,
              right: 16,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: ShakeTransition(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.cha.nacimiento,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                widget.cha.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      ShakeTransition(
                        left: false,
                        child: Text(
                          widget.cha.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ShakeTransition(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),
                        const Text(
                          'CILINDRAJE',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: List.generate(
                            4,
                            (index) => Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: CustomButton(
                                onTap: () {
                                  valueIndexSize = [300, 660, 900, 999][index];
                                  setState(() {});
                                },
                                color: [300, 660, 900, 999][index] == valueIndexSize
                                    ? widget.cha.listImage[valueIndexColor].color
                                    : Colors.white,
                                child: Text(
                                  '${[300, 660, 900, 999][index]}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                    color: [300, 660, 900, 999][index] == valueIndexSize
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ShakeTransition(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'COLOR',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: List.generate(
                                widget.cha.listImage.length,
                                (index) => GestureDetector(
                                  onTap: () {
                                    valueIndexColor = index;
                                    setState(() {});
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 8),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color:
                                          widget.cha.listImage[index].color,
                                      shape: BoxShape.circle,
                                      border: index == valueIndexColor
                                          ? Border.all(
                                              color: Colors.white, width: 2)
                                          : null,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}







