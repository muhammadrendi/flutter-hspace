import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconNavigationHeader extends StatelessWidget {
  const IconNavigationHeader({
    Key key,
    @required this.svgSrc,
    @required this.press,
  }) : super(key: key);

  final String svgSrc;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.50),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: SvgPicture.asset(
            svgSrc,
            width: 20,
          ),
        ),
      ),
    );
  }
}
