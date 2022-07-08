import 'package:flutter/material.dart';

import 'package:animate_do/animate_do.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:portfolio_web/shared/constants.dart';
import 'package:portfolio_web/widgets/custom_circular_container.dart';
import 'package:portfolio_web/widgets/custom_social_media_icon.dart';

import '../widgets/custom_circular_container_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, bottom: 40),
          child: Column(
            children: [
              FadeInUp(
                from: 50,
                duration: const Duration(milliseconds: 1600),
                child: Container(
                  width: 120,
                  height: 120,
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(60),
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      '${Constants.pathImages}avatar.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              FadeInDown(
                from: 50,
                duration: const Duration(milliseconds: 1600),
                child: const Text(
                  'Altevir Cardoso Neto',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              FadeInDown(
                duration: const Duration(milliseconds: 1600),
                child: const Text(
                  'Desenvolvedor .NET | Mobile',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CustomCircularContainer(title: '.NET'),
                  CustomCircularContainer(title: 'C#'),
                  CustomCircularContainer(title: 'Xamarin', fontSize: 12),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CustomCircularContainer(title: 'Dart'),
                  CustomCircularContainer(title: 'Flutter'),
                ],
              ),
              const Spacer(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CustomCircularContainerIcon(
                    pathIcon: '${Constants.pathImages}${Constants.vsStudioPNG}',
                    title: 'Visual Studio',
                  ),
                  SizedBox(width: 10),
                  CustomCircularContainerIcon(
                    pathIcon: '${Constants.pathImages}${Constants.vsCodePNG}',
                    title: 'VS Code',
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FadeInUp(
                    from: 50,
                    duration: const Duration(milliseconds: 1600),
                    child: const CustomSocialMediaIcon(
                      icon: FeatherIcons.github,
                      color: Colors.white,
                      url: Constants.github,
                    ),
                  ),
                  const SizedBox(width: 10),
                  FadeInDown(
                    from: 50,
                    duration: const Duration(milliseconds: 1600),
                    child: const CustomSocialMediaIcon(
                      icon: FeatherIcons.linkedin,
                      color: Colors.white,
                      url: Constants.linkedin,
                    ),
                  ),
                  const SizedBox(width: 10),
                  FadeInUp(
                    from: 50,
                    duration: const Duration(milliseconds: 1600),
                    child: const CustomSocialMediaIcon(
                      icon: FeatherIcons.instagram,
                      color: Colors.white,
                      url: Constants.instagram,
                    ),
                  ),
                  const SizedBox(width: 10),
                  FadeInDown(
                    from: 50,
                    duration: const Duration(milliseconds: 1600),
                    child: const CustomSocialMediaIcon(
                      icon: FeatherIcons.twitter,
                      color: Colors.white,
                      url: Constants.twitter,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
