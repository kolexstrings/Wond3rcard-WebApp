import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonder_card_website/utils/size_constants.dart';
import 'package:wonder_card_website/utils/wonder_card_colors.dart';
import 'package:wonder_card_website/wonder_card_website/views/widget/pricing_plan_section.dart';

class PlanSection extends StatelessWidget {
  const PlanSection({super.key});

  @override
  Widget build(BuildContext context) {
    return isMobile(context)
        ? Padding(
          padding: const EdgeInsets.all(20),
          child: _columnMethod(context),
        )
        : _columnMethod(context);
  }

  Column _columnMethod(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          textAlign: TextAlign.center,
          'Choose Plan',
          style: GoogleFonts.barlow(
            fontWeight: FontWeight.w700,
            fontSize: isDesktop(context) ? 60 : 30,
            color: Color(0xff191A15),
          ),
        ),

        Text(
          textAlign: TextAlign.center,
          'That’s Right For You',
          style: GoogleFonts.barlow(
            fontWeight: FontWeight.w700,
            fontSize: isDesktop(context) ? 60 : 30,
            color: Color(0xff191A15),
          ),
        ),

        isDesktop(context)
            ? SizedBox(
              width: 1006,
              height: 72,

              child: Text(
                softWrap: true,
                'Wond3rcard offers flexible pricing tailored to individuals, professionals, and enterprises. Choose between affordable monthly plans or save with yearly subscriptions.',

                style: GoogleFonts.barlow(
                  fontWeight: FontWeight.w500,
                  fontSize: isDesktop(context) ? 21.6 : 14,
                  color: AppColors.grayScale500,
                ),
              ),
            )
            : Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(5),
              child: Text(
                textAlign: TextAlign.center,
                softWrap: true,
                'Wond3rcard offers flexible pricing tailored to individuals, professionals, and enterprises. Choose between affordable monthly plans or save with yearly subscriptions.',

                style: GoogleFonts.barlow(
                  fontWeight: FontWeight.w500,
                  fontSize: isDesktop(context) ? 21.6 : 14,
                  color: AppColors.grayScale500,
                ),
              ),
            ),

        PricingPlansSection(),
        Text(
          softWrap: true,
          textAlign: TextAlign.center,
          'Physical NFC cards are sold separately and require an active subscription.',
          style: GoogleFonts.barlow(
            fontWeight: FontWeight.w500,
            fontSize: isDesktop(context) ? 27.33 : 15,
            color: Color(0xffFF0A1D),
          ),
        ),
      ],
    );
  }
}
