import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            image: AssetImage('images/myno.jpg'),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: const Center(
                      child: Text('Pneumonia Detector',
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.5),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        const Text('Add X-ray Image',
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                        Container(
                          margin: const EdgeInsets.only(top: 5, bottom: 5),
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              // color: Colors.red,
                              border:
                                  Border.all(color: Colors.black, width: 2)),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Image shows here',
                                    style: TextStyle(color: Colors.white)),
                                Icon(
                                  Icons.image,
                                  color: Colors.white.withOpacity(0.7),
                                  size: 80,
                                ),
                              ],
                            ),
                          ),
                        ),
                        OutlinedButton(
                          style: ButtonStyle(
                              side: MaterialStateProperty.all<BorderSide>(
                                  const BorderSide(color: Colors.white)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              overlayColor: MaterialStateProperty.all<Color>(
                                  Colors.white.withOpacity(0.5))),
                          onPressed: () {},
                          child: const Text('Add X-ray Image'),
                        ),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.only(
                                top: 10, bottom: 10, left: 40, right: 40)),
                        side: MaterialStateProperty.all<BorderSide>(
                            const BorderSide(color: Colors.white)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        overlayColor: MaterialStateProperty.all<Color>(
                            Colors.white.withOpacity(0.5))),
                    onPressed: () {},
                    child: const Text('Predict'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
