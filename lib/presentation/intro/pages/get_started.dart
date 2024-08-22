import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_app/common/widgets/button/basic_app_button.dart';
import 'package:music_app/core/configs/assets/app_images.dart';
import 'package:music_app/core/configs/assets/app_vectors.dart';
import 'package:music_app/core/configs/theme/app_colors.dart';
import 'package:music_app/presentation/choose_mode/pages/choose_mode.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 70),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AppImages.introBackground))),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 70),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo),
                ),
                const Spacer(),
                const Text(
                  'Enjoy listening to music',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18.0),
                ),
                const SizedBox(
                  height: 21,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac hendrerit est. Sed ultricies metus at aliquam feugiat.',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.gray,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                BasicAppButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ChooseModeScreen()));
                    },
                    title: "Get Started")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
