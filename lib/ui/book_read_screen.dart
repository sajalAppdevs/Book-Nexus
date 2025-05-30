import 'package:book_nexsus/constants/constants.dart';
import 'package:book_nexsus/extensions/context_extension.dart';
import 'package:book_nexsus/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class BookReadScreen extends StatelessWidget {
  const BookReadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueBG,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () => context.pop,
                      child: Assets.svg.arrowDown.svg(
                        height: 24,
                        width: 24,
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 24,
                      width: 24,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.greenAccent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Assets.svg.play.svg(),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Assets.svg.headphoneOutlined.svg(),
                    const SizedBox(width: 12),
                    Assets.svg.moreVertical.svg(),
                  ],
                ),
              ),
              SizedBox(
                height: context.screenHeight - 130,
                width: double.infinity,
                child: const CustomScrollView(
                  slivers: [
                    SliverPadding(
                      padding: EdgeInsets.only(bottom: 17, top: 24),
                      sliver: SliverToBoxAdapter(
                        child: Text(
                          'What is in it for me? Learn how to become an effecive unofficial project manager',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.white,
                            fontFamily: 'NB',
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: EdgeInsets.only(bottom: 17),
                      sliver: SliverToBoxAdapter(
                        child: Text(
                          '''Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.''',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.white,
                            fontFamily: 'NR',
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: EdgeInsets.only(bottom: 17),
                      sliver: SliverToBoxAdapter(
                        child: Text(
                          '''The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen.''',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.white,
                            fontFamily: 'NR',
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: EdgeInsets.only(bottom: 17),
                      sliver: SliverToBoxAdapter(
                        child: Text(
                          '''Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way.''',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.white,
                            fontFamily: 'NR',
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: EdgeInsets.only(bottom: 50),
                      sliver: SliverToBoxAdapter(
                        child: Text(
                          '''Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then''',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.white,
                            fontFamily: 'NR',
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
