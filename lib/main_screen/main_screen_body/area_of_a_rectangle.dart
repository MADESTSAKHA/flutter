import 'package:flutter/material.dart';

class AreaOfARectangle extends StatefulWidget {
  const AreaOfARectangle({super.key});

  @override
  State<AreaOfARectangle> createState() => _AreaOfARectangleState();
}

class _AreaOfARectangleState extends State<AreaOfARectangle> {
  TextEditingController resultA = TextEditingController();
  TextEditingController resultB = TextEditingController();

  double finalResult = double.parse(resultA) * double.parse(resultB),

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const BackButton(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              textAlign: TextAlign.center,
              'Площадь прямоугольника или квадрата',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),

          ///         Image & result[result]
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: 240,
                child: Image.asset('assets/images/area_rectangle.png',
                    fit: BoxFit.fitHeight),
              ),
              Text(finalResult.toString()),
            ],
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              ///         Digital A
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('a = ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  SizedBox(
                    // height: 70, //Высота
                    width: 110, //Ширина
                    child: TextField(
                      controller: resultA,
                      onChanged: (String str) {
                        setState(() {
                          resultA = str;
                        });
                      },
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          label: Text('число'),
                          floatingLabelAlignment: FloatingLabelAlignment.center,
                          contentPadding: EdgeInsets.all(10),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.blue),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.blue))),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              ///         Digital B
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('b = ',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  SizedBox(
                    // height: 70, //Высота
                    width: 110, //Ширина
                    child: TextField(
                      controller: resultB,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          label: Text('число'),
                          floatingLabelAlignment: FloatingLabelAlignment.center,
                          contentPadding: EdgeInsets.all(10),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.blue),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.blue))),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Stack
