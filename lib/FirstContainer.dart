// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:moovi/secondPage.dart';
import 'constant.dart';
import 'movieData.dart';
final movieDataMap = movieDataList.asMap();

class FirstContainer extends StatelessWidget{
  final int index;

  const FirstContainer({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(index: index,)));
      },
      child: SizedBox(
        height: 670,
        child: Stack(
          children: <Widget>[
            Image.asset(movieDataMap[index]!.cover),
            Stack(
              children: [
                Positioned.fill(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Image.asset('assets/images/teslaPOV2.png'),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 175,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: [0,0.9],
                        colors: [Color.fromRGBO(0, 0, 0, 1.0), Color.fromRGBO(
                            0, 0, 0, 0.0)]
                      )
                    ),
                  ),
                )
              ],
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: Text(
                    "Playing today",
                    style: ThemeText.slightBoldWhiteText,
                  ),
                )
            ),
            Positioned.fill(
              bottom: -100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Text(movieDataMap[index]!.title, style: ThemeText.subText,),
                  Text(movieDataMap[index]!.genre, style: ThemeText.slightBoldWhiteText,),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => SecondPage(index: 0,)));
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(const Size(150, 30)),
                        backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(
                            0, 0, 0, 0.1)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(200),
                              side: const BorderSide(color: Colors.white),
                            )
                        ),
                      ),
                      child: const Text('book now', style: ThemeText.mainText,),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}