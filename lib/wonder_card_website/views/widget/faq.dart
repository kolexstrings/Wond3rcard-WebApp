import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonder_card_website/utils/size_constants.dart';
import 'package:wonder_card_website/utils/wonder_card_colors.dart';
import 'package:wonder_card_website/wonder_card_website/views/widget/get_a_demo_section.dart';

class FAQ {
  final String question;
  final String answer;

  FAQ({required this.question, required this.answer});
}

class FAQSection extends StatefulWidget {
  const FAQSection({super.key});

  @override
  State<FAQSection> createState() => _FAQSectionState();
}

class _FAQSectionState extends State<FAQSection> {
  String searchQuery = '';
  int? expandedIndex;

  @override
  Widget build(BuildContext context) {
    final filteredFaqs =
        faqList.where((faq) {
          return faq.question.toLowerCase().contains(
                searchQuery.toLowerCase(),
              ) ||
              faq.answer.toLowerCase().contains(searchQuery.toLowerCase());
        }).toList();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 103),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Frequently Asked Questions',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xff191A15),
            ),
          ),
          const SizedBox(height: 25),
          SizedBox(
            width: 1001,
            height: 141,
            child: Text(
              softWrap: true,
              'Everything you need to know to get started with WonderCard—from setting up your first digital card to managing teams, tracking engagement, and even printing high-quality physical cards. Whether you\'re an individual, a team lead, or a business owner, we\'ve got your questions covered.',
              style: GoogleFonts.barlow(
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: Color(0xff9E9E9E),
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(child: _faq(filteredFaqs, context)),

              Spacer(),
              Expanded(child: GetADemoSection()),
            ],
          ),
        ],
      ),
    );
  }

  Container _faq(List<FAQ> filteredFaqs, BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (filteredFaqs.isEmpty)
            Center(
              child: Text(
                'No results found.',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            )
          else
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              height: 640,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: filteredFaqs.length,
                itemBuilder: (context, index) {
                  final faq = filteredFaqs[index];
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Theme(
                      data: Theme.of(
                        context,
                      ).copyWith(dividerColor: AppColors.primaryShade),
                      child: ExpansionTile(
                        key: Key(index.toString()),
                        initiallyExpanded: expandedIndex == index,
                        collapsedIconColor: Colors.white,
                        iconColor: Colors.white,
                        onExpansionChanged: (expanded) {
                          setState(() {
                            expandedIndex = expanded ? index : null;
                          });
                        },
                        title: Text(
                          faq.question,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff424242),
                          ),
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8,
                            ),
                            child: Text(
                              faq.answer,
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff757575),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}

final List<FAQ> faqList = [
  FAQ(
    question: 'Intellectual Property?',
    answer:
        'These Terms and Conditions outline the rules and regulations for using our website and services.',
  ),
  FAQ(
    question: 'What is wond3rcard?',
    answer:
        'These Terms and Conditions outline the rules and regulations for using our website and services.',
  ),
  FAQ(
    question: 'Interpretation and Definitions?',
    answer:
        'Absolutely! We offer 6 months of free support after project delivery, and ongoing maintenance packages too.',
  ),
  FAQ(
    question: 'Restrictions?',
    answer:
        'It depends on the scope. A typical website project takes 4-6 weeks from start to launch.',
  ),
  FAQ(
    question: 'Limitation of Liability?',
    answer:
        'Yes, we offer post-launch revisions based on our maintenance packages or hourly rates.',
  ),
];

class FAQSectionMobile extends StatefulWidget {
  const FAQSectionMobile({super.key});

  @override
  State<FAQSectionMobile> createState() => _FAQSectionMobileState();
}

class _FAQSectionMobileState extends State<FAQSectionMobile> {
  String searchQuery = '';
  int? expandedIndex;

  @override
  Widget build(BuildContext context) {
    final filteredFaqs =
        faqList.where((faq) {
          return faq.question.toLowerCase().contains(
                searchQuery.toLowerCase(),
              ) ||
              faq.answer.toLowerCase().contains(searchQuery.toLowerCase());
        }).toList();

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            softWrap: true,
            textAlign: TextAlign.center,
            'Frequently Asked Questions',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xff191A15),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Text(
              textAlign: TextAlign.center,
              softWrap: true,
              'Everything you need to know to get started with WonderCard—from setting up your first digital card to managing teams, tracking engagement, and even printing high-quality physical cards. Whether you\'re an individual, a team lead, or a business owner, we\'ve got your questions covered.',
              style: GoogleFonts.barlow(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xff9E9E9E),
              ),
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [_faq(filteredFaqs, context), GetADemoSectionMobile()],
          ),
        ],
      ),
    );
  }

  Widget _faq(List<FAQ> filteredFaqs, BuildContext context) {
    if (filteredFaqs.isEmpty) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'No results found.',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 380,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: filteredFaqs.length,
          itemBuilder: (context, index) {
            final faq = filteredFaqs[index];
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white),
              ),
              child: Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: AppColors.primaryShade),
                child: ExpansionTile(
                  key: Key(index.toString()),
                  initiallyExpanded: expandedIndex == index,
                  collapsedIconColor: Colors.black,
                  iconColor: Colors.black,
                  onExpansionChanged: (expanded) {
                    setState(() {
                      expandedIndex = expanded ? index : null;
                    });
                  },
                  title: Text(
                    faq.question,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff424242),
                    ),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        faq.answer,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xff757575),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
