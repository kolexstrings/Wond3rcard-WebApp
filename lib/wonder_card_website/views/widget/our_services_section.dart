import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonder_card_website/utils/wonder_card_colors.dart';
import 'package:wonder_card_website/wonder_card_website/views/glass_card.dart';
import 'package:wonder_card_website/wonder_card_website/views/widget/section_widget.dart';

class OurServicesSection extends StatelessWidget {
  const OurServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;

    return Padding(
      padding: const EdgeInsets.only(left: 113, right: 113),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Our Features you can get',
            style: GoogleFonts.barlow(
              fontWeight: FontWeight.w600,
              fontSize: 60,
              color: Color(0xff191A15),
            ),
          ),

          SizedBox(height: 40),

          SizedBox(
            width: 532,
            height: 108,
            child: Text(
              softWrap: true,
              'Discover how Wond3rCard transforms identity management with cutting-edge features designed for today\'s digital landscape.',
              style: GoogleFonts.barlow(
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: AppColors.grayScale500,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(25),
            margin: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset('images/card-bg.png'),
                          Text(
                            'NFC-Enabled Smart Cards',
                            style: GoogleFonts.barlow(
                              color: Color(0xff191A15),
                              fontWeight: FontWeight.w600,
                              fontSize: 36,
                            ),
                          ),
                          const SizedBox(height: 24),
                          SizedBox(
                            width: 644.68,
                            height: 108,
                            child: Text(
                              'Utilize Near Field Communication for quick, contactless contact sharing during networking events such as meetings, workshops, and conferences—eliminating the hassle of manually saving contacts.',
                              style: GoogleFonts.barlow(
                                fontWeight: FontWeight.w500,
                                fontSize: 21,
                                color: AppColors.grayScale500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Spacer(),
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset('images/digital_identity.png'),
                          Text(
                            'Digital Identity Management:',
                            style: GoogleFonts.barlow(
                              color: Color(0xff191A15),
                              fontWeight: FontWeight.w600,
                              fontSize: 36,
                            ),
                          ),
                          const SizedBox(height: 24),
                          SizedBox(
                            width: 644.68,
                            height: 108,
                            child: Text(
                              'Streamline the creation and management of digital identities, reducing administrative burdens associated with traditional ID card management.',
                              style: GoogleFonts.barlow(
                                fontWeight: FontWeight.w500,
                                fontSize: 21,
                                color: AppColors.grayScale500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('images/card_design.png'),
                          Text(
                            'Custom Card Design',
                            style: GoogleFonts.barlow(
                              color: Color(0xff191A15),
                              fontWeight: FontWeight.w600,
                              fontSize: 36,
                            ),
                          ),
                          const SizedBox(height: 24),
                          SizedBox(
                            width: 644.68,
                            height: 108,
                            child: Text(
                              'Cards can be tailored to include your personal/business branding and specific role-based access features',
                              style: GoogleFonts.barlow(
                                fontWeight: FontWeight.w500,
                                fontSize: 21,
                                color: AppColors.grayScale500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),

                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('images/mobile_app.png'),
                          Text(
                            'Mobile App',
                            style: GoogleFonts.barlow(
                              color: Color(0xff191A15),
                              fontWeight: FontWeight.w600,
                              fontSize: 36,
                            ),
                          ),
                          const SizedBox(height: 24),
                          SizedBox(
                            width: 644.68,
                            height: 108,
                            child: Text(
                              'Companion application for real-time updates and enhanced networking capabilities.',
                              style: GoogleFonts.barlow(
                                fontWeight: FontWeight.w500,
                                fontSize: 21,
                                color: AppColors.grayScale500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OurServicesSectionMobile extends StatelessWidget {
  const OurServicesSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
 
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            textAlign: TextAlign.center,
            softWrap: true,
            'Our Features you can get',
            style: GoogleFonts.barlow(
              fontWeight: FontWeight.w600,
              fontSize: 38,
              color: Color(0xff191A15),
            ),
          ),

          SizedBox(height: 40),

          SizedBox(
            width: 360,
            height: 180,
            child: Text(
              softWrap: true,
              'Discover how Wond3rCard transforms identity management with cutting-edge features designed for today\'s digital landscape.',
              style: GoogleFonts.barlow(
                fontWeight: FontWeight.w500,
                fontSize: 22,
                color: AppColors.grayScale500,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(25),
            margin: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      children: [
                        Image.asset('images/card-bg.png'),
                        Text(
                          'NFC-Enabled Smart Cards',
                          style: GoogleFonts.barlow(
                            color: Color(0xff191A15),
                            fontWeight: FontWeight.w600,
                            fontSize: 36,
                          ),
                        ),
                        const SizedBox(height: 24),
                        SizedBox(
                          width: 338.6795959472656,
height: 216,

                          child: Text(
                            softWrap: true,
                            textAlign: TextAlign.start,
                            'Utilize Near Field Communication for quick, contactless contact sharing during networking events such as meetings, workshops, and conferences—eliminating the hassle of manually saving contacts.',
                            style: GoogleFonts.barlow(
                              fontWeight: FontWeight.w500,
                              fontSize: 21,
                              color: AppColors.grayScale500,
                            ),
                          ),
                        ),
                      ],
                    ),

                   
                    Column(
                      children: [
                        Image.asset('images/digital_identity.png'),
                        Text(
                          'Digital Identity Management:',
                          style: GoogleFonts.barlow(
                            color: Color(0xff191A15),
                            fontWeight: FontWeight.w600,
                            fontSize: 36,
                          ),
                        ),
                        const SizedBox(height: 24),
                        SizedBox(
                          width: 340.6601867675781,
height: 180,

                          child: Text(
                            textAlign: TextAlign.start,
                            softWrap: true,
                            'Streamline the creation and management of digital identities, reducing administrative burdens associated with traditional ID card management.',
                            style: GoogleFonts.barlow(
                              fontWeight: FontWeight.w500,
                              fontSize: 21,
                              color: AppColors.grayScale500,
                            ),
                          ),
                        ),
                      ],
                    ),
                
                
                  ],
                ),

                SizedBox(height: 30),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('images/card_design.png'),
                        Text(
                          textAlign: TextAlign.start,
                          softWrap: true,
                          'Custom Card Design',
                          style: GoogleFonts.barlow(
                            color: Color(0xff191A15),
                            fontWeight: FontWeight.w600,
                            fontSize: 36,
                          ),
                        ),
                        const SizedBox(height: 24),
                        SizedBox(
                         width: 356,
height: 120,

                          child: Text(
                            textAlign: TextAlign.start,
                            softWrap: true,
                            'Cards can be tailored to include your personal/business branding and specific role-based access features',
                            style: GoogleFonts.barlow(
                              fontWeight: FontWeight.w500,
                              fontSize: 21,
                              color: AppColors.grayScale500,
                            ),
                          ),
                        ),
                      
                       const SizedBox(height: 15),
                      ],
                    ),
                  
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('images/mobile_app.png'),
                        Text(
                          'Mobile App',
                          style: GoogleFonts.barlow(
                            color: Color(0xff191A15),
                            fontWeight: FontWeight.w600,
                            fontSize: 36,
                          ),
                        ),
                        const SizedBox(height: 24),
                        SizedBox(
                          width: 644.68,
                          height: 140,
                          child: Text(
                              textAlign: TextAlign.start,
                            softWrap: true,
                            'Companion application for real-time updates and enhanced networking capabilities.',
                            style: GoogleFonts.barlow(
                              fontWeight: FontWeight.w500,
                              fontSize: 21,
                              color: AppColors.grayScale500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
            
            
              ],
            ),
          ),
        ],
      ),
    );
  }
}
