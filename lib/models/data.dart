import 'package:flutter/material.dart';
import 'package:motos_yamaha/models/cha.dart';

final listCategory = ['Yamaha'];

final listCha = [
  Cha(
    'Yamaha YZF-R1',
    'Motores 1000',
    'Precios Desde 499,999',
    4,
    [
      ImageCha(
        'images/moto1.png',
        Color.fromARGB(255, 40, 234, 6)
      ),
      ImageCha(
        'images/moto5.png',
        const Color(0xFFFFEB3B),
      ),
      ImageCha(
        'images/moto4.png',
        const Color(0xffB50D0D),
      ),
    ],
  ),
  Cha(
    'Yamaha YZF-R6',
    'Motores 600',
    'Precios Desde 319,999',
    4,
    [
      ImageCha(
        'images/moto2.png',
        Color.fromARGB(255, 40, 6, 234),
      ),
      ImageCha(
        'images/moto5.png',
        const Color(0xFFFFEB3B),
      ),
      ImageCha(
        'images/moto4.png',
        const Color(0xffB50D0D),
      ),
    ],
  ),
  Cha(
    'Yamaha YZF-R3',
    'Motores 300',
    'Precios Desde 154,999',
    4,
    [
      ImageCha(
        'images/moto3.png',
        Color.fromARGB(255, 220, 220, 220),
      ),
      ImageCha(
        'images/moto5.png',
        const Color(0xFFFFEB3B),
      ),
      ImageCha(
        'images/moto4.png',
        const Color(0xffB50D0D),
      ),
    ],
  ),
];