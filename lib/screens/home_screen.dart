import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:wemight_urbantech/constants/color_constant.dart';
import 'package:wemight_urbantech/constants/style_constant.dart';
import 'package:wemight_urbantech/models/carousel_model.dart';
import 'package:wemight_urbantech/models/popular_destination_model.dart';
import 'package:wemight_urbantech/models/travlog_model.dart';
import 'package:wemight_urbantech/widgets/bottom_navigation_travelkuy.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Setting up AppBar
      appBar: AppBar(
        backgroundColor: mBackgroundColor,
        title: SvgPicture.asset('assets/svg/logo_top.svg'),
        elevation: 0,
      ),

      // Setting up Background Color
      backgroundColor: mBackgroundColor,

      // Setting up Custom Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationTravelkuy(),

      // Body
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            // Promos Section
            Padding(
              padding: EdgeInsets.only(left: 16, bottom: 24),
              child: Text(
                'Assalomu alaykum 👋 Sog\'lig\'ingizga e\'tiborli bo\'ling!',

              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 16, right: 16),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 190,
                    child: Swiper(
                      onIndexChanged: (index) {
                        setState(() {
                          _current = index;
                        });
                      },
                      autoplay: true,
                      layout: SwiperLayout.DEFAULT,
                      itemCount: carousels.length,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(
                                  carousels[index].image,
                                ),
                                fit: BoxFit.cover),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: map<Widget>(
                          carousels,
                          (index, image) {
                            return Container(
                              alignment: Alignment.centerLeft,
                              height: 6,
                              width: 6,
                              margin: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _current == index
                                      ? mBlueColor
                                      : mGreyColor),
                            );
                          },
                        ),
                      ),

                      // More
                      Text(
                        'Ko\'proq...',
                        style: mMoreDiscountStyle,
                      )
                    ],
                  ),
                ],
              ),
            ),

            // Service Section
            Padding(
              padding: EdgeInsets.only(left: 16, top: 24, bottom: 12),
              child: Text(
                'Xizmatlar',
                style: mTitleStyle,
              ),
            ),
            Container(
              height: 144,
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                            color: mFillColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: mBorderColor, width: 1),
                          ),
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/svg/1.svg',
                                fit: BoxFit.fill,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Qon donorligi',
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      'Yordam qo\'lini cho\'z',
                                      style: mServiceSubtitleStyle,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                            color: mFillColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: mBorderColor, width: 1),
                          ),
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/svg/2.svg',
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'A\'zolar donorligi',
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      'Oson topish',
                                      style: mServiceSubtitleStyle,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                            color: mFillColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: mBorderColor, width: 1),
                          ),
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/svg/3.svg',
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Qon tahlil',
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      'Ariza yuborish',
                                      style: mServiceSubtitleStyle,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                            color: mFillColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: mBorderColor, width: 1),
                          ),
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/svg/4.svg',
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'E\'lonlar',
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      'Qonga muhtojlar',
                                      style: mServiceSubtitleStyle,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),

            // Popular Destination Section
            Padding(
              padding: EdgeInsets.only(left: 16, top: 24, bottom: 12),
              child: Text(
                'Foydali manbaalar',
                style: mTitleStyle,
              ),
            ),
            Container(
              height: 140,
              child: ListView.builder(
                itemCount: populars.length,
                padding: EdgeInsets.only(left: 16, right: 16),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      height: 140,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: mBorderColor, width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 16),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              populars[index].image,
                              height: 74,
                            ),
                            Text(
                              populars[index].name,
                              style: mPopularDestinationTitleStyle,
                            ),
                            Text(
                              populars[index].country,
                              style: mPopularDestinationSubtitleStyle,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // // Travlog Section
            // Padding(
            //   padding: EdgeInsets.only(left: 16, top: 24, bottom: 12),
            //   child: Text(
            //     'Yangiliklar',
            //     style: mTitleStyle,
            //   ),
            // ),
            // Container(
            //   height: 181,
            //   child: ListView.builder(
            //     padding: EdgeInsets.only(left: 16),
            //     itemCount: travlogs.length,
            //     scrollDirection: Axis.horizontal,
            //     itemBuilder: (context, index) {
            //       return Container(
            //         margin: EdgeInsets.only(right: 16),
            //         width: 220,
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: <Widget>[
            //             Stack(
            //               children: <Widget>[
            //                 Container(
            //                   height: 104,
            //                   decoration: BoxDecoration(
            //                     borderRadius: BorderRadius.circular(8),
            //                     image: DecorationImage(
            //                         image: AssetImage(travlogs[index].image),
            //                         fit: BoxFit.cover),
            //                   ),
            //                 ),
            //                 Positioned(
            //                   child: SvgPicture.asset(
            //                       'assets/svg/travlog_top_corner.svg'),
            //                   right: 0,
            //                 ),
            //                 Positioned(
            //                   top: 8,
            //                   right: 8,
            //                   child: SvgPicture.asset(
            //                       'assets/svg/travelkuy_logo_white.svg'),
            //                 ),
            //                 Positioned(
            //                   bottom: 0,
            //                   child: SvgPicture.asset(
            //                       'assets/svg/travlog_bottom_gradient.svg'),
            //                 ),
            //                 Positioned(
            //                   bottom: 8,
            //                   left: 8,
            //                   child: Text(
            //                     'Travlog ' + travlogs[index].name,
            //                     style: mTravlogTitleStyle,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(
            //               height: 8,
            //             ),
            //             Text(
            //               travlogs[index].content,
            //               maxLines: 3,
            //               style: mTravlogContentStyle,
            //             ),
            //             SizedBox(
            //               height: 8,
            //             ),
            //             Text(
            //               travlogs[index].place,
            //               style: mTravlogPlaceStyle,
            //             )
            //           ],
            //         ),
            //       );
            //     },
            //   ),
            //)
          ],
        ),
      ),
    );
  }
}
