import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PricingPlan {
  final String title;
  final String price;
  final List<String> features;

  PricingPlan({
    required this.title,
    required this.price,
    required this.features,
  });
}

final List<PricingPlan> pricingPlans = [
  PricingPlan(
    title: 'Basic NFC Card (Plastic)',
    price: '\$14',
    features: ['Simple and durable plastic NFC card'],
  ),
  PricingPlan(
    title: 'Premium Metal NFC Card',
    price: '\$35',
    features: ['Sleek metal card with premium finish'],
  ),
  PricingPlan(
    title: 'Custom-Branded NFC Card',
    price: '\$35',
    features: ['Minimum order: 10. Ideal for businesses'],
  ),
];

class PricingPlanCard extends StatelessWidget {
  final PricingPlan plan;
  final bool isYearly;

  const PricingPlanCard({
    super.key,
    required this.plan,
    required this.isYearly,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.deepPurpleAccent, width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.deepPurpleAccent.withOpacity(0.3),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            textAlign: TextAlign.center,
            plan.title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
               color: Color(0xff191A15),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            textAlign: TextAlign.center,
            plan.price,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color(0xff191A15),
            ),
          ),
          const SizedBox(height: 20),
          ...plan.features.map(
            (feature) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffF9FAFB),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: Colors.deepPurpleAccent,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        feature,
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NfcCardPricing extends StatefulWidget {
  const NfcCardPricing({super.key});

  @override
  State<NfcCardPricing> createState() => _NfcCardPricingState();
}

class _NfcCardPricingState extends State<NfcCardPricing> {
  bool isYearly = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
      SizedBox(height: 25),
              Text(
                      textAlign: TextAlign.center,
                      'NFC Card Pricing',
                      style: GoogleFonts.barlow(
                        fontWeight: FontWeight.w700,
                        fontSize: 60,
                        color: Color(0xff191A15),
                      ),
                    ),
      
        Text(
          textAlign: TextAlign.center,
          '(One-Time Purchase)',
          style: GoogleFonts.barlow(
            fontWeight: FontWeight.w700,
            fontSize: 60,
            color: Color(0xff191A15),
          ),
        ),
          SizedBox(
            height: 250,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: pricingPlans.length,
              itemBuilder: (context, index) {
                final plan = pricingPlans[index];
                return PricingPlanCard(plan: plan, isYearly: isYearly);
              },
            ),
          ),
        ],
      ),
    );
  }
}





class NfcCardPricingMobile extends StatefulWidget {
  const NfcCardPricingMobile({super.key});

  @override
  State<NfcCardPricingMobile> createState() => _NfcCardPricingMobileState();
}

class _NfcCardPricingMobileState extends State<NfcCardPricingMobile> {
  bool isYearly = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    SizedBox(height: 25),
            Text(
                    textAlign: TextAlign.center,
                    'NFC Card Pricing',
                    style: GoogleFonts.barlow(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: Color(0xff191A15),
                    ),
                  ),
    
      Text(
        textAlign: TextAlign.center,
        '(One-Time Purchase)',
        style: GoogleFonts.barlow(
          fontWeight: FontWeight.w700,
          fontSize: 30,
          color: Color(0xff191A15),
        ),
      ),
        SingleChildScrollView(
          child: ListView.builder(
            padding: const EdgeInsets.all(10),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: pricingPlans.length,
            itemBuilder: (context, index) {
              final plan = pricingPlans[index];
              return Column(
                children: [
                  PricingPlanCard(plan: plan, isYearly: isYearly),
                  SizedBox(height: 10),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
