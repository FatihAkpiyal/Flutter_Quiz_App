import 'package:flutter/material.dart';
import 'package:staj_projesi/constant.dart';

class ResultBox extends StatelessWidget {
  const ResultBox(
      {super.key,
      required this.result,
      required this.questionLength,
      required this.onPressed});

  final int result;
  final int questionLength;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Padding(
        padding: EdgeInsets.all(70.0),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Result',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                ),
              ),
              SizedBox(height: 20.0),
              CircleAvatar(
                child: Text(
                  '$result/$questionLength',
                  style: TextStyle(fontSize: 25),
                ),
                radius: 60,
                backgroundColor: result == questionLength
                    ? correct
                    : result < questionLength / 2
                        ? incorrect
                        : result == questionLength / 2
                            ? Colors.yellow
                            : Colors.blue,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                result == questionLength / 2
                    ? 'Almost There'
                    : result < questionLength / 2
                        ? 'try again?'
                        : 'Great',
                style: TextStyle(color: const Color.fromARGB(255, 8, 75, 10)),
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: onPressed,
                child: Text(
                  'Start over',
                  style: TextStyle(
                      color: Colors.blue, fontSize: 20, letterSpacing: 1),
                ),
              ),
            ]),
      ),
    );
  }
}
