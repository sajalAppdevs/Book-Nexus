import 'package:book_nexsus/constants/constants.dart';
import 'package:book_nexsus/extensions/context_extension.dart';
import 'package:book_nexsus/gen/assets.gen.dart';
import 'package:book_nexsus/ui/product_detail_screen.dart';
import 'package:book_nexsus/ui/product_listing_screen.dart';
import 'package:book_nexsus/widgets/product_explore_box.dart';
import 'package:flutter/material.dart';

class ExploreTopicLists extends StatelessWidget {
  const ExploreTopicLists({
    super.key,
    required this.topicNames,
  });
  final List<String> topicNames;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: SizedBox(
              height: 300,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          topicNames[index],
                          style: const TextStyle(
                            fontFamily: 'NB',
                            fontSize: 20,
                            color: AppColors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => context.push(
                            ProductListingScreen(
                              name: topicNames[index],
                            ),
                          ),
                          child: Row(
                            children: [
                              const Text(
                                'show all',
                                style: TextStyle(
                                  fontFamily: 'NB',
                                  fontSize: 12,
                                  color: AppColors.greenAccent,
                                ),
                              ),
                              const SizedBox(width: 3),
                              Assets.svg.arrowCircleRight.svg(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 254,
                    width: double.infinity,
                    child: CustomScrollView(
                      scrollDirection: Axis.horizontal,
                      slivers: [
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              return Padding(
                                padding:
                                    EdgeInsets.only(left: index == 0 ? 15 : 8),
                                child: GestureDetector(
                                  onTap: () =>
                                      context.push(const ProductDetailScreen()),
                                  child: const ProductExploreBox(),
                                ),
                              );
                            },
                            childCount: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        childCount: topicNames.length,
      ),
    );
  }
}
