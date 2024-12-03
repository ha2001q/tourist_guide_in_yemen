import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourist_guide_in_yemen/core/utils/styles.dart';

import '../../../../../core/utils/images.dart';
import '../widgets/favorite_appbar.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}



class _FavoriteScreenState extends State<FavoriteScreen> {

  bool isDesign1 = true;
  void showDesign1() {
    setState(() {
      isDesign1 = true;
    });
  }

  void showDesign2() {
    setState(() {
      isDesign1 = false;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FavoriteAppBar(onTap: () => {},),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text("0 ", style: fontMediumBold),
                    Text("elements",style: fontLarge,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Theme.of(context).cardColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: showDesign1,
                          child: Container(
                            height: 24,
                            width: 34,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: isDesign1 ? Colors.white : Colors.transparent,
                            ),
                            child: Center(
                              child: SvgPicture.asset(Images.listIcon,
                                fit: BoxFit.contain,
                                color: isDesign1 ? null : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: showDesign2,
                          child: Container(
                            height: 24,
                            width: 34,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: isDesign1 ? Colors.transparent : Colors.white,
                            ),
                            child: Center(
                              child: SvgPicture.asset(Images.grideIcon,
                                fit: BoxFit.contain,
                                color: isDesign1 ? null : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
