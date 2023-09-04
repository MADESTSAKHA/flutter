import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'main_screen_body/area_of_a_rectangle.dart';
import 'main_screen_body/area_of_a_triangle.dart';
import 'main_screen_body/area_of_a_circle.dart';
import 'main_screen_body/area_of_a_parallelogram.dart';
import 'main_screen_body/area_of_a_regular_polygon.dart';
import 'main_screen_body/area_of_a_ellipse.dart';
import 'main_screen_body/area_of_a_sector_circle.dart';
import 'main_screen_body/area_of_a_trapezium.dart';

class AreaCalculator extends StatefulWidget {
  const AreaCalculator({super.key});

  @override
  State<AreaCalculator> createState() => _AreaCalculatorState();
}

class _AreaCalculatorState extends State<AreaCalculator> {
  bool _switchVoice = true;

  /// Shape name sound [figureName]
  void switchVoice(figureName) {
    _switchVoice ? AudioPlayer().play(AssetSource(figureName)) : '';
  }

  @override
  Widget build(BuildContext context) {
    void goToPage(Widget page) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Row(
          children: [
            const Expanded(
              flex: 5,
              child: Text('Что измеряем?',
                  style: TextStyle(color: Colors.black, fontSize: 20)),
            ),
            Expanded(
              flex: 3,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    _switchVoice = !_switchVoice;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('Звук:',
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _switchVoice = !_switchVoice;
                        });
                      },
                      icon: _switchVoice
                          ? const Icon(
                              Icons.volume_up,
                              color: Colors.black,
                            )
                          : const Icon(
                              Icons.volume_off,
                              color: Colors.red,
                            ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          CardWidget(
            text: 'Площадь прямоугольника или квадрата',
            nameImage: 'area_rectangle.png',
            onPressed: () {
              switchVoice('audio/rectangleOrSquare.mp3');
              goToPage(const AreaOfARectangle());
            },
          ),
          CardWidget(
            text: 'Площадь треугольника',
            nameImage: 'area_triangle.png',
            onPressed: () {
              switchVoice('audio/triangle.mp3');
              goToPage(const AreaOfATriangle());
            },
          ),
          CardWidget(
            text: 'Площадь круга',
            nameImage: 'area_circle.png',
            onPressed: () {
              switchVoice('audio/circle.mp3');
              goToPage(const AreaOfACircle());
            },
          ),
          CardWidget(
            text: 'Площадь параллелограмма',
            nameImage: 'area_parallelogram.png',
            onPressed: () {
              switchVoice('audio/parallelogram.mp3');
              goToPage(const AreaOfAParallelogram());
            },
          ),
          CardWidget(
            text: 'Площадь правильного многоугольника',
            nameImage: 'area_polygon.png',
            onPressed: () {
              switchVoice('audio/regularPolygon.mp3');
              goToPage(const AreaOfARegularPolygon());
            },
          ),
          CardWidget(
            text: 'Площадь эллипса',
            nameImage: 'area_ellipse.png',
            onPressed: () {
              switchVoice('audio/ellipse.mp3');
              goToPage(const AreaOfAEllipse());
            },
          ),
          CardWidget(
            text: 'Площадь сектора круга',
            nameImage: 'area_sector.png',
            onPressed: () {
              switchVoice('audio/circleSector.mp3');
              goToPage(const AreaOfASectorCircle());
            },
          ),
          CardWidget(
            text: 'Площадь трапеции',
            nameImage: 'area_trapeze.png',
            onPressed: () {
              switchVoice('audio/trapezoid.mp3');
              goToPage(const AreaOfATrapezium());
            },
          ),
        ],
      ),
    );
  }
}

/// CardWidget [text],[nameImage],[onPressed]
class CardWidget extends StatelessWidget {
  final String text;
  final String nameImage;
  final Function()? onPressed;

  const CardWidget(
      {super.key, required this.text, required this.nameImage, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.redAccent,
      onTap: onPressed,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
                width: 160,
                child: Text(
                  text,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )),
            Image.asset(
              'assets/images/$nameImage',
              // width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
