import 'package:flutter/material.dart';

class HeaderTop extends StatelessWidget {
  const HeaderTop({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 21),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
              padding: const EdgeInsets.only(
                left: 21,
                right: 21,
                bottom: 0,
              ),
              // height: size.height * 0.2 - 29,
              decoration: const BoxDecoration(
                color: Color(0xFF7CB342),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                ),
              ),
              child: Center(
                child: Text(text,
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              )
              // Row(
              //   children: <Widget>[
              //     SizedBox(
              //       height: size.height * 5,
              //     ),
              //     Text(text,
              //         style: Theme.of(context).textTheme.headline5!.copyWith(
              //             color: Colors.white, fontWeight: FontWeight.bold)),
              //   ],
              // ),
              ),
        ],
      ),
    );
  }
}
