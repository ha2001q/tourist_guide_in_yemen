import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/images/images.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          // _fetchDataRefresh();
        },
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
              actions: [
                SizedBox(
                  width: 120, // Set a fixed width for the SizedBox
                  child: Row(
                    children: [
                      Expanded(
                          child:Image.asset(Images.logoIcon)
                      )
                      // Expanded(child: _buildAppBarSection(imageProfile == " "? AppConstants.noImageUrl: imageProfile)), // Assuming _buildAppBarSection returns a widget
                     ],
                  ),
                ),
              ],
              expandedHeight: 250,
              floating: true,
              automaticallyImplyLeading: false,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      child: SvgPicture.asset(Images.halfCircle),
                    ),
                    SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(height: kToolbarHeight), // Adjust height as needed
                          // _buildGreetingSection(),
                          const SizedBox(height: 20),
                          // _buildSearchBarAndFilter(),
                        ],
                      ),
                    )
                  ],
                ),
                centerTitle: true,
                collapseMode: CollapseMode.pin,
              ),
            ),
            // SliverToBoxAdapter(
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.stretch,
            //     children: [
            //
            //       const SizedBox(height: 20),
            //       SizedBox()
            //       // _buildMainCategoriesRowList(),
            //       // const SizedBox(height: 25),
            //       // _buildHomePageSectionsBanners(),
            //       // _buildHomePageSectionsSubCategories(),
            //       // _buildFeaturedProperties(),
            //       // const SizedBox(height: 15),
            //       // _buildHighPlaces(),
            //       // const SizedBox(height: 15),
            //       // _buildTopRealEstateAgents(),
            //       // const SizedBox(height: 15),
            //       // _buildDiscoverNearProperties(),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),

    );
  }
}
