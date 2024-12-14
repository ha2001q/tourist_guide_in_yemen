import 'package:flutter/material.dart';
import '../widgets/PlaceCard.dart';
import '../widgets/ServicesCard.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver{
  int _selectedTab = 0;
  int _selectedCategory = 0;

  final List<String> _cities = ['الكل', 'حجة', 'الحديدة', 'تعز', 'صنعاء'];
  final List<String> _categories = ['الكل', 'مساجد', 'سدود وشلالات', 'قلاع وحصون'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // الجزء العلوي مع الصورة الشخصية والترحيب
                  Row(
                    children: [
                      CircleAvatar(

                        backgroundImage: AssetImage('assets/svg/half_circle.svg'),

                        radius: 20,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "كيف يومك ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 4),
                                // Image.asset('assets/svg/half_circle.svg', height: 20),
                                // const Text("أيمن!"),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.location_on,
                                    color: Color(0xFFE17055), size: 16),
                                const Text(
                                  "اليمن، صنعاء",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: const Color(0xFFE17055),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.workspace_premium,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // شريط البحث
                  TextField(
                    decoration: InputDecoration(
                      hintText: "ابحث",
                      prefixIcon: const Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // شريط التنقل بين المدن
                  SizedBox(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _cities.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: ChoiceChip(
                            label: Text(_cities[index]),
                            selected: _selectedTab == index,
                            onSelected: (selected) {
                              setState(() {
                                _selectedTab = index;
                              });
                            },
                            backgroundColor: Colors.grey[200],
                            selectedColor: const Color(0xFFE17055),
                            labelStyle: TextStyle(
                              color: _selectedTab == index
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            // قسم المعالم السياحية
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // صورة جبال خولان
                    Container(
                      margin: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/logo_icon.jpg'),
                          fit: BoxFit.cover,
                        ),

                      ),
                      height: 200,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 20,
                            left: 20,
                            child: Row(
                              children: [
                                const Text(
                                  "جبال خولان",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFE17055),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // قسم استكشاف الأماكن
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "استكشاف الأماكن",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),

                          // شريط التصنيفات
                          SizedBox(
                            height: 40,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: _categories.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4),
                                  child: ChoiceChip(
                                    label: Text(_categories[index]),
                                    selected: _selectedCategory == index,
                                    onSelected: (selected) {
                                      setState(() {
                                        _selectedCategory = index;
                                      });
                                    },
                                    backgroundColor: Colors.grey[200],
                                    selectedColor: const Color(0xFFE17055),
                                    labelStyle: TextStyle(
                                      color: _selectedCategory == index
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),

                          const SizedBox(height: 16),

                          // بطاقات المواقع
                          GridView.count(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            crossAxisCount: 2,
                            childAspectRatio: 1,
                            mainAxisSpacing: 16,
                            crossAxisSpacing: 16,
                            children: [
                              PlaceCard(
                                title: 'حديقة السبعين',
                                location: 'اليمن، صنعاء',
                                rating: 4.0,
                                reviews: 36,
                                imagePath: 'assets/images/logo_icon.jpg',
                              ),
                              PlaceCard(
                                title: 'جبل النبي شعيب',
                                location: 'اليمن، صنعاء',
                                rating: 4.0,
                                reviews: 36,
                                imagePath: 'assets/images/logo_icon.jpg',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // قسم معجب بأشخاص
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "معجب بأشخاص",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "عرض الكل",
                                  style: TextStyle(
                                    color: Color(0xFFE17055),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ServicesCard(
                            title: 'مطعم الملكي',
                            type: 'مطاعم',
                            location: 'اليمن، صنعاء',
                            rating: 4.0,
                            reviews: 36,
                            // '\$400/night',
                          ),
                          const SizedBox(height: 16),
                          ServicesCard(
                            title: 'مقهى حراز',
                            type: 'Park',
                            location: 'اليمن، صنعاء',
                            rating: 4.0,
                            reviews: 36,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }

    //   Scaffold(
    //   body: RefreshIndicator(
    //     onRefresh: () async {
    //       // _fetchDataRefresh();
    //     },
    //
    //     child: CustomScrollView(
    //       physics: const AlwaysScrollableScrollPhysics(),
    //       slivers: <Widget>[
    //         SliverAppBar(
    //           actions: [
    //             SizedBox(
    //               width: 120, // Set a fixed width for the SizedBox
    //               child: Row(
    //                 children: [
    //                   Expanded(
    //                       child:Image.asset(Images.logoIcon)
    //                   )
    //                   // Expanded(child: _buildAppBarSection(imageProfile == " "? AppConstants.noImageUrl: imageProfile)), // Assuming _buildAppBarSection returns a widget
    //                  ],
    //               ),
    //             ),
    //           ],
    //           expandedHeight: 250,
    //           floating: true,
    //           automaticallyImplyLeading: false,
    //           flexibleSpace: FlexibleSpaceBar(
    //             background: Stack(
    //               children: [
    //                 Positioned(
    //                   top: 0,
    //                   right: 0,
    //                   child: SvgPicture.asset(Images.halfCircle),
    //                 ),
    //                 SafeArea(
    //                   child: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.stretch,
    //                     children: [
    //                       const SizedBox(height: kToolbarHeight), // Adjust height as needed
    //                       // _buildGreetingSection(),
    //                       const SizedBox(height: 20),
    //                       // _buildSearchBarAndFilter(),
    //                     ],
    //                   ),
    //                 )
    //               ],
    //             ),
    //             centerTitle: true,
    //             collapseMode: CollapseMode.pin,
    //           ),
    //         ),
    //         // SliverToBoxAdapter(
    //         //   child: Column(
    //         //     crossAxisAlignment: CrossAxisAlignment.stretch,
    //         //     children: [
    //         //
    //         //       const SizedBox(height: 20),
    //         //       SizedBox()
    //         //       // _buildMainCategoriesRowList(),
    //         //       // const SizedBox(height: 25),
    //         //       // _buildHomePageSectionsBanners(),
    //         //       // _buildHomePageSectionsSubCategories(),
    //         //       // _buildFeaturedProperties(),
    //         //       // const SizedBox(height: 15),
    //         //       // _buildHighPlaces(),
    //         //       // const SizedBox(height: 15),
    //         //       // _buildTopRealEstateAgents(),
    //         //       // const SizedBox(height: 15),
    //         //       // _buildDiscoverNearProperties(),
    //         //     ],
    //         //   ),
    //         // ),
    //       ],
    //     ),
    //   ),
    //
    // );
//   }
}




