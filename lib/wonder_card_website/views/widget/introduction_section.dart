import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonder_card_website/utils/wonder_card_colors.dart';
import 'package:wonder_card_website/utils/wonder_card_strings.dart';
import 'dart:ui';

import 'package:wonder_card_website/wonder_card_website/views/widget/section_widget.dart';

final themeNotifier = ValueNotifier(ThemeMode.light);

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;

    return Section(
      title: '',
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.purple[50],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Flex(
          direction: isMobile ? Axis.vertical : Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              // flex: isMobile ? 0 : ,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 101),
                    //EdgeInsets.only(left: isMobile ? 20 : 50),
                    child: Text(
                      'Revolutionize Your Identity Management',
                      style: GoogleFonts.barlow(
                        //  fontSize: isMobile ? 14 : 17,
                        color: Colors.black,

                        fontWeight: FontWeight.w700,
                        fontSize: 96,
                      ),
                    ).animate(delay: (200).ms).fadeIn(duration: 600.ms),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 108, top: 25),
                    child: Image.asset(
                      'images/landing_page_vector.png',
                      width: 400,
                    ).animate(delay: (200).ms).fadeIn(duration: 600.ms),
                  ),

                  SizedBox(
                    width: 667,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 108, top: 25),
                      child: Text(
                        'Experience seamless, secure, and smart digital identity solutions with Wond3rCard\'s NFC-enabled technology.',
                        style: GoogleFonts.barlow(
                          //  fontSize: isMobile ? 14 : 17,
                          color: Colors.black,

                          fontWeight: FontWeight.w500,
                          fontSize: 21.6,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        context.go(RouteString.signup);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryShade,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            if (!isMobile)
              Expanded(
                flex: 1,
                child: Image.asset(
                  'images/phone-hand-mockup.png',
                  fit: BoxFit.contain,
                ),
              ),

            if (isMobile)
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset(
                  'images/phone-hand-mockup.png',
                  fit: BoxFit.contain,
                  height: 200,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class IntroductionSectionMobile extends StatelessWidget {
  const IntroductionSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.purple[50],
        borderRadius: BorderRadius.circular(8),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    //EdgeInsets.only(left: isMobile ? 20 : 50),
                    child: Text(
                      textAlign: TextAlign.center,
                      softWrap: true,
                      'Revolutionize Your Identity Management',
                      style: GoogleFonts.barlow(
                        fontWeight: FontWeight.w700,
                        fontSize: 48,
                        color: Colors.black,
                      ),
                    ).animate(delay: (200).ms).fadeIn(duration: 600.ms),
                  ),

                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      'images/landing_page_vector.png',
                      width: 294,
                    ).animate(delay: (200).ms).fadeIn(duration: 600.ms),
                  ),

                  SizedBox(
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Experience seamless, secure, and smart digital identity solutions with Wond3rCard\'s NFC-enabled technology.',
                        style: GoogleFonts.barlow(
                          color: Colors.black,

                          fontWeight: FontWeight.w500,
                          fontSize: 15.6,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        context.go(RouteString.signup);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryShade,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48),
                        ),
                        padding: const EdgeInsets.all(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                'images/phone-hand-mockup.png',
                fit: BoxFit.contain,
                height: 200,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
