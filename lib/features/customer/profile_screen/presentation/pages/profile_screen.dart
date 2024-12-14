import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourist_guide_in_yemen/features/customer/profile_screen/presentation/pages/profile_update_screen.dart';

import '../../../../../core/utils/images.dart';
import '../widgets/profile_appbar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBarWidget(
        editIcon: Images.editIcon,
        onTapBack: (){

          Navigator.pop(context);
          print("onTapback");
        },
        onTapEdit: (){

          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=>const ProfileUpdateScreen(),));
          print("onTapEdit");
        },
        title: "personal_profile",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child:
        // FutureBuilder<ProfileModel?>(
        //     future: profileRepository.getProfile(id ?? 0),
        //     builder: (context, snapshot){
        //       if(snapshot.hasError){
        //         return const SizedBox();
        //       } else if(snapshot.hasData){
        //         return
                  SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /// image
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          // image: DecorationImage(
                          //   image: CachedNetworkImageProvider(snapshot.data!.image ?? AppConstants.noImageUrl),
                          //   fit: BoxFit.cover,
                          // ),
                        ),
                      ),
                      const SizedBox(height: 5,),
                      /// text user_name
                      // Text(snapshot.data!.username!, style: fontMediumBold,),

                      const SizedBox(height: 30),
                      /// text full_name
                      // UserDataWidget(
                      //   userData: snapshot.data!.name!,
                      //   iconUserData: Images.smallProfile,
                      // ),
                      const SizedBox(height: 15,),
                      /// phone_number
                      // UserDataWidget(
                      //     userData: snapshot.data!.phoneNumber!,
                      //     iconUserData: Images.phoneIcon),
                      const SizedBox(height: 15,),
                      /// email
                      // UserDataWidget(
                      //     userData: snapshot.data!.email!,
                      //     iconUserData: Images.smallEmailIcon),

                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: (){
                              //   if(isGoogleLinked != true){
                              //     _handleGoogleBtnClick();
                              //   }
                              setState(() {
                                // isGoogleLinked = !isGoogleLinked;

                              });

                            },
                            child: Container(
                              width: (MediaQuery.sizeOf(context).width / 2) - 21,
                              height: 85,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  // color: isGoogleLinked?Theme.of(context).primaryColor:Theme.of(context).cardColor
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    const SizedBox(width: 10,),
                                    SvgPicture.asset(Images.googleIcon),
                                    // Text(
                                    //   !isGoogleLinked?"Link":"isLinked",
                                    //   style: fontMedium.copyWith(color: !isGoogleLinked?Theme.of(context).primaryColor:Theme.of(context).cardColor),
                                    // ),
                                    const SizedBox(width: 10,)
                                  ],
                                ),
                              ),
                            ),
                          ),

                          InkWell(
                            onTap: (){
                              setState(() {
                                // if(isFaceBookLinked != true){
                                //   // FirebaseAuth instance = FirebaseAuth()/;
                                //
                                //   profileRepository;
                                // }
                                //                 isFaceBookLinked = !isFaceBookLinked;
                              });
                            },
                            child: Container(
                              width: (MediaQuery.sizeOf(context).width /2) - 21,
                              height: 85,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  // color: isFaceBookLinked
                                  //     ?Theme.of(context).primaryColor
                                  //     :Theme.of(context).cardColor

                              ),
                              child: Center(
                                child: Row(

                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    const SizedBox(width: 10,),
                                    SvgPicture.asset(Images.facebookIcon),
                                    // Text(
                                    //   !isFaceBookLinked?"Link":"isLinked",
                                    //   style: fontMedium.copyWith(color: !isFaceBookLinked?Theme.of(context).primaryColor:Theme.of(context).cardColor),
                                    //
                                    // ),
                                    const SizedBox(width: 10,)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )

                    ],
                  ),
                ),
            //   }else {
            //     return const SizedBox();
            //   }
            // }
        ),

    );
  }
}
