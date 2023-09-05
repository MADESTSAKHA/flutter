import 'package:flutter/material.dart';

class AreaOfARectangle extends StatefulWidget {
  const AreaOfARectangle({super.key});

  @override
  State<AreaOfARectangle> createState() => _AreaOfARectangleState();
}

class _AreaOfARectangleState extends State<AreaOfARectangle> {
  TextEditingController resultA = TextEditingController();
  TextEditingController resultB = TextEditingController();

  double sum = 0;

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
              sum != 0
                  ? Text(
                      sum.toString(),
                      style: const TextStyle(
                          fontSize: 40, fontWeight: FontWeight.bold),
                    )
                  : const Text(''),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  ///         Digital A
                  Row(
                    children: [
                      const Text('a = ',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      SizedBox(
                        // height: 70, //Высота
                        width: 110, //Ширина
                        child: TextField(
                          controller: resultA,
                          onChanged: (_) => calculateSum(),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              label: Text('число'),
                              floatingLabelAlignment:
                                  FloatingLabelAlignment.center,
                              contentPadding: EdgeInsets.all(10),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: Colors.blue),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.blue))),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  ///         Digital B
                  Row(
                    children: [
                      const Text('b = ',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      SizedBox(
                        // height: 70, //Высота
                        width: 110, //Ширина
                        child: TextField(
                          controller: resultB,
                          onChanged: (_) => calculateSum(),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              label: Text('число'),
                              floatingLabelAlignment:
                                  FloatingLabelAlignment.center,
                              contentPadding: EdgeInsets.all(10),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: Colors.blue),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.blue))),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),

              ///       Bottom clear ALL
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      sum = 0;
                      resultA.text = '';
                      resultB.text = '';
                    });
                  },
                  child: const Text('Clear all'))
            ],
          ),
        ],
      ),
    );
  }

  void calculateSum() {
    final double value1 = double.tryParse(resultA.text) ?? 0;
    final double value2 = double.tryParse(resultB.text) ?? 0;
    setState(() {
      sum = value1 * value2;
    });
  }
}
