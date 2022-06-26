import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CardPage extends StatelessWidget {
  final String title ;
  final String firstText ;
  final String secoundText ;
  final String thirdText ;
  final String fourtText ;
  final String image ;

  const CardPage({Key? key,required this.image,required this.title, required this.firstText, required this.secoundText, required this.thirdText,required this.fourtText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Container(
      // height: 267,
      // width: 168,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 10,
              offset: const Offset(0,3),
            ),

          ]
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // const SizedBox(
              //   height: 24,
              // ),
              SizedBox(

                child: Image.network(image,fit: BoxFit.cover,),
              ),
              Text(title,
                style: TextStyle(
                  fontSize: 16,
                ),

              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children:  [
                  Text(firstText,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.pink,
                    ),
                  ),
                  Spacer(),

                  Text(secoundText,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.pink,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children:  [
                   Text(thirdText,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.pink,
                    ),
                  ),
                  const Spacer(),
                  Text(fourtText,
                    style:
                    GoogleFonts.baloo2(
                      fontStyle: FontStyle.normal,
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}
