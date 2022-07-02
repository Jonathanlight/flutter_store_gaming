import 'package:flutter/material.dart';

class Game {
  final String id, image, imageDetail, title, online, description;
  final double rating;

  Game({
    required this.id,
    required this.title,
    required this.online,
    required this.image,
    required this.imageDetail,
    required this.description,
    required this.rating,
  });
}

List<Game> games = [
  Game(
    id: '89001',
    title: 'Immortals Fenyx',
    online: '1k online',
    image: 'assets/images/game_01.png',
    imageDetail: 'assets/images/game_d_01.png',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris porttitor faucibus felis ut consequat. Donec ac massa sodales, gravida erat et, finibus purus. Aliquam faucibus scelerisque purus malesuada laoreet.',
    rating: 3.0,
  ),
  Game(
    id: '89002',
    title: 'The witcher',
    online: '2k online',
    image: 'assets/images/game_02.png',
    imageDetail: 'assets/images/game_d_02.png',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris porttitor faucibus felis ut consequat. Donec ac massa sodales, gravida erat et, finibus purus. Aliquam faucibus scelerisque purus malesuada laoreet.',
    rating: 5.0,
  ),
  Game(
    id: '89003',
    title: 'Farcry',
    online: '1.5k online',
    image: 'assets/images/game_03.png',
    imageDetail: 'assets/images/game_d_03.png',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris porttitor faucibus felis ut consequat. Donec ac massa sodales, gravida erat et, finibus purus. Aliquam faucibus scelerisque purus malesuada laoreet.',
    rating: 4.0,
  ),
  Game(
    id: '89004',
    title: 'Forza Horizon 4',
    online: '2.8k online',
    image: 'assets/images/game_04.png',
    imageDetail: 'assets/images/game_d_04.png',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris porttitor faucibus felis ut consequat. Donec ac massa sodales, gravida erat et, finibus purus. Aliquam faucibus scelerisque purus malesuada laoreet.',
    rating: 5.0,
  ),
];
