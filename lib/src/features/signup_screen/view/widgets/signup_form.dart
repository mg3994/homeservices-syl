import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeservices/src/features/signup_screen/controller/signup_controller.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/sizes.dart';
import '../../../../core/constants/text_strings.dart';

class SingupForm extends GetView<SignUpController> {
  const SingupForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const OutlineInputBorder focusedOutlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(
          color: tblue), // Couleur de la bordure lorsque le champ est en focus
    );

    final Size size = MediaQuery.of(context).size;

    return Form(
      key: controller.formKey,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.phoneNumber,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person_outline_outlined),
                labelText: tPhone,
                hintText: tPhone,
                focusedBorder:
                    focusedOutlineInputBorder, // Bordure en focus avec la couleur tblue
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey[
                          700]!), // Couleur de la bordure lorsque le champ n'est pas en focus (gris foncé)
                ),
                labelStyle: TextStyle(
                    color: Colors.grey[
                        700]), // Couleur du texte du titre de la bordure avant de toucher la case (gris foncé)
              ),
              cursorColor:
                  tblue, // Couleur du curseur lorsque le champ est en focus
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              controller: controller.nameController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.fingerprint),
                labelText: tFullName,
                hintText: tFullName,
                focusedBorder:
                    focusedOutlineInputBorder, // Bordure en focus avec la couleur tblue
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey[
                          700]!), // Couleur de la bordure lorsque le champ n'est pas en focus (gris foncé)
                ),
                labelStyle: TextStyle(
                    color: Colors.grey[
                        700]), // Couleur du texte du titre de la bordure avant de toucher la case (gris foncé)
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons
                      .remove_red_eye_sharp), // Couleur de l'icône de l'œil (tblue)
                ),
              ),
              cursorColor:
                  tblue, // Couleur du curseur lorsque le champ est en focus
            ),
            const SizedBox(height: tFormHeight - 20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: tblue,
                ),
                child: const Text(tForgpassword),
              ),
            ),
            SizedBox(
              width: size.width, // Prend toute la largeur disponible
              height: tFormHeight +
                  20.0, // Même hauteur que les champs de texte avec un espacement supplémentaire
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: tblue, // Couleur de fond du bouton
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  tLogin.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white, // Couleur du texte en blanc
                    fontWeight: FontWeight.bold, // Texte en gras
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
