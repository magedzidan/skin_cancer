import 'package:carousel_slider/carousel_slider.dart' as carousel_slider;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled1/skindetect2.dart';
import 'package:untitled1/symptoms.dart';
import 'package:untitled1/test_file.dart';
import 'features/Home/widegts/bloodTest1.dart';
import 'features/Home/skin_disease/presnention/views/skindetect.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  List imageList = [
    {"id": 1, "image_path": 'assets/virusC.png'},
    {"id": 2, "image_path": 'assets/Cancer.jpeg'},
  ];
  final carousel_slider.CarouselController carouselController =
      carousel_slider.CarouselController();
  int currentIndex = 0;
  var pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        carousel_slider.CarouselSlider.builder(
          itemCount: imageList.length,
          carouselController: carouselController,
          options: carousel_slider.CarouselOptions(
            height: 250,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          itemBuilder: (context, index, realIndex) {
            return imageListItem(imagePath: imageList[index]["image_path"]);
          },
        ),
        Align(
          alignment: Alignment.center,
          child: SmoothPageIndicator(
            textDirection: TextDirection.ltr,
            controller: pageController,
            count: imageList.length,
            effect: const ExpandingDotsEffect(
                dotWidth: 12.0,
                dotHeight: 8.0,
                dotColor: Color(0xFFd9e4e8),
                activeDotColor: Color(0xFF002ddc),
                radius: 20.0,
                spacing: 15,
                expansionFactor: 2,
                offset: 20),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Category',
          style: GoogleFonts.roboto(
              color: const Color(0xFF000000),
              fontSize: 23,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => skindetect()));
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    alignment: Alignment.center,
                    width: 130,
                    height: 156,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset('assets/icons8-skin-cancer-64.svg'),
                        Text(
                          'Skin Disease',
                          style: GoogleFonts.roboto(
                              color: const Color(0xFF000000),
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => bloodTest1()));
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    alignment: Alignment.center,
                    width: 130,
                    height: 156,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset('assets/123516220016355716314564.svg'),
                        Text(
                          'Blood Test',
                          style: GoogleFonts.roboto(
                              color: const Color(0xFF000000),
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => symptoms()));
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    alignment: Alignment.center,
                    width: 130,
                    height: 156,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                            'assets/5991423_allergy_coronavirus_covid-19_flu_illness_icon.svg'),
                        Text(
                          'Symptoms',
                          style: GoogleFonts.roboto(
                              color: const Color(0xFF000000),
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget imageListItem({required String imagePath}) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          height: 150,
        ),
        Positioned(
          bottom: 0,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'lets start with\nskin category',
                maxLines: 2,
                style: GoogleFonts.roboto(
                    color: const Color(0xFF000000),
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 35,
                width: 95,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Discover',
                      style: GoogleFonts.roboto(
                        color: const Color(0xFF0008c1),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
