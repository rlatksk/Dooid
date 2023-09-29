import 'package:dooid/screens/transferScreen/transferSuccess.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slide_to_act_reborn/slide_to_act_reborn.dart';

class wSlider extends StatefulWidget {
  final String toWhere;
  final String name;
  final int amount;
  final String msg;

  wSlider({
    required this.toWhere,
    Key? key, 
    required this.name, 
    required this.amount, 
    required this.msg, 
  }) : super(key: key);

  @override
  State<wSlider> createState() => _wSliderState();
}

class _wSliderState extends State<wSlider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: SlideAction(
        height: 73,
        borderRadius: 50,
        innerColor: Color(0xFFFF5151),
        outerColor: Color(0xFF131313),
        text: 'Slide to confirm',
        alignment: Alignment.bottomCenter,
        sliderButtonIcon: SvgPicture.asset('assets/icons/slider_button.svg'),
        sliderButtonIconPadding: 0,
        textStyle: const TextStyle(
          fontFamily: 'Montserrat',
          color: Color(0xFFBABABA),
        ),
        onSubmit: () {
          setState(() {
            if (widget.toWhere == 'TFSuccess') {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => TfSuccess(
                  name: widget.name,
                  amount: widget.amount, 
                  msg: widget.msg,
                ),
              ),
            );
          }
          }
          );
          
        },
      ),
    );
  }
}