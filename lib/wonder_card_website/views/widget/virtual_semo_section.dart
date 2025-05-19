import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VirtualSemoSection extends StatelessWidget {
  const VirtualSemoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color(0xffF9F8FE),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Why wond3ercard?',
                      style: GoogleFonts.barlow(
                        fontWeight: FontWeight.w600,
                        fontSize: 60,
                        color: Color(0xff191A15),
                      ),
                    ),

                    SizedBox(height: 25),
                    SizedBox(
                      width: 614,
                      height: 72,

                      child: Text(
                        softWrap: true,
                        'Your digital identity deserves more than just a name. Here’s what sets WonderCard apart from ordinary card platforms.',
                        style: GoogleFonts.barlow(
                          fontWeight: FontWeight.w500,
                          fontSize: 19.2,
                          color: Color(0xffA6A6A6),
                        ),
                      ),
                    ),

                    Container(
                      width: 436.6636047363281,
                      height: 65.00003814697266,
                      child: Image.asset('images/blue-logo.png'),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        cardInsightWidget(
                          'images/card_insight.png',
                          'Card Insights',
                          'rack who viewed or engaged with your digital card in real time.',
                        ),

                        SizedBox(height: 15),
                        cardInsightWidget(
                          'images/live_update.png',
                          'Live Updates',
                          'Instantly update your card details—no need to reprint or resend.',
                        ),

                        SizedBox(height: 15),
                        cardInsightWidget(
                          'images/effortless_sharing.png',
                          'Effortless Sharing',
                          'Share your card via QR, link, or NFC with a single tap—anywhere.',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget cardInsightWidget(String imageLink, String title, String subTitle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 72,
          height: 72,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            boxShadow: [
              BoxShadow(
                color: Color(0x0D000000), // #0000000D
                offset: Offset(0, 4.8),
                blurRadius: 10.8,
              ),
            ],
            borderRadius: BorderRadius.circular(8), // optional: round corners
          ),
          child: Image.asset(imageLink),
        ),
        SizedBox(width: 13),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.barlow(
                fontWeight: FontWeight.w700,
                fontSize: 33.6,
              ),
            ),

            SizedBox(height: 10),
            SizedBox(
              width: 513.5999755859375,
              height: 72,

              child: Text(
                subTitle,
                style: GoogleFonts.barlow(
                  fontWeight: FontWeight.w500,
                  fontSize: 21.6,
                  color: Color(0xffA6A6A6),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class VirtualSemoSectionMobile extends StatelessWidget {
  const VirtualSemoSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        color: Color(0xffF9F8FE),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              softWrap: true,
              'Why wond3ercard?',
              style: GoogleFonts.barlow(
                fontWeight: FontWeight.w600,
                fontSize: 40,
                color: Color(0xff191A15),
              ),
            ),
            
            Container(
             padding: EdgeInsets.all(10),
             margin: EdgeInsets.all(10),
              child: Text(
                textAlign: TextAlign.center,
                softWrap: true,
                'Your digital identity deserves more than just a name. Here’s what sets WonderCard apart from ordinary card platforms.',
                style: GoogleFonts.barlow(
                  fontWeight: FontWeight.w500,
                  fontSize: 15.2,
                  color: Color(0xffA6A6A6),
                ),
              ),
            ),
          
          
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                cardInsightWidgetMobile(
                  'images/card_insight.png',
                  'Card Insights',
                  'Track who viewed or engaged with your digital card in real time.',
                ),
                        
                SizedBox(height: 10),
                cardInsightWidgetMobile(
                  'images/live_update.png',
                  'Live Updates',
                  'Instantly update your card details—no need to reprint or resend.',
                ),
                        
                SizedBox(height: 10),
                cardInsightWidgetMobile(
                  'images/effortless_sharing.png',
                  'Effortless Sharing',
                  'Share your card via QR, link, or NFC with a single tap—anywhere.',
                ),
              ],
            ),
        
        
        
          ],
        ),
      ),
    );
  }

  Widget cardInsightWidgetMobile(
    String imageLink,
    String title,
    String subTitle,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            boxShadow: [
              BoxShadow(
                color: Color(0x0D000000), // #0000000D
                offset: Offset(0, 4.8),
                blurRadius: 10.8,
              ),
            ],
            borderRadius: BorderRadius.circular(8), // optional: round corners
          ),
          child: Image.asset(imageLink),
        ),
        SizedBox(height: 13),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: GoogleFonts.barlow(
                fontWeight: FontWeight.w700,
                fontSize: 23.6,
              ),
            ),
  
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.only(left: 8, right: 8, bottom: 0, top: 8),
    
              child: Text(
                textAlign: TextAlign.center,
                softWrap: true,
                subTitle,
                style: GoogleFonts.barlow(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.6,
                  color: Color(0xffA6A6A6),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
