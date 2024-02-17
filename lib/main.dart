import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.78),
        // backgroundColor: Color(0xFF363636),
        title: const Text(
          'Flutter Hylophone',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/do.mp3'));
              },
              child: Container(
                width: double.infinity,
                height: 100,
                color: const Color(0xFFEF443A),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/re.mp3'));
              },
              child: Container(
                width: double.infinity,
                height: 100,
                color: const Color(
                  0xFFF99700,
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/mi.mp3'));
              },
              child: Container(
                width: double.infinity,
                height: 100,
                color: const Color(
                  0xFFFFE93B,
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/fa.mp3'));
              },
              child: Container(
                width: double.infinity,
                height: 100,
                color: const Color(
                  0xFF4CB050,
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/sol.mp3'));
              },
              child: Container(
                width: double.infinity,
                height: 100,
                color: const Color(
                  0xFF2E968C,
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/lya.mp3'));
              },
              child: Container(
                width: double.infinity,
                height: 100,
                color: const Color(
                  0xFF2996F5,
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/si.mp3'));
              },
              child: Container(
                width: double.infinity,
                height: 100,
                color: const Color(
                  0xFF9B28B1,
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/do2.mp3'));
              },
              child: Container(
                width: double.infinity,
                height: 100,
                color: const Color(
                  0xFF363636,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
