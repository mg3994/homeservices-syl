import 'package:flutter/material.dart';

import '../../../../core/constants/assets.dart';
import '../../../../core/constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
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
          height: size.height *
              0.25, // Utiliser une fraction de la hauteur de l'écran
        ),
        SizedBox(
            height:
                size.height * 0.02), // Espacement basé sur la taille de l'écran
        Text(tLoginTitle, style: Theme.of(context).textTheme.headline1),
        SizedBox(
            height:
                size.height * 0.01), // Espacement basé sur la taille de l'écran
        Text(tLoginSubTitle, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}
