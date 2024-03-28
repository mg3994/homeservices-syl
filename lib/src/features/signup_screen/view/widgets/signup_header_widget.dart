import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/assets.dart';
import '../../../../core/constants/text_strings.dart';

class SignupHeaderWidget extends StatelessWidget {
  const SignupHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: const AssetImage(ImagePathConstant.tSplasgImage),
          height: size.height * 0.15,
        ),
        Text(
          tSingupTitle,
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }
}
