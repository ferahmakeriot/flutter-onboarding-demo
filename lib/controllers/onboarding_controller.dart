import 'package:flutter/cupertino.dart';
import 'package:onboarding_demo/models/onboarding_info.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  var pageController = PageController();

  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;

  forwardAction() {
    if (isLastPage) {
    } else
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(
      'assets/order.png',
      'Yemeğini Sipariş Et',
      'Artık cep telefonunuzdan istediğiniz zaman yemek sipariş edebilirsiniz',
    ),
    OnboardingInfo(
      'assets/cook.png',
      'Güvenli Yemek Pişirme',
      'Güvenliği koruyoruz ve yemek yaparken temiz tutuyoruz.',
    ),
    OnboardingInfo(
      'assets/deliver.png',
      'Hızlı Teslimat',
      'En sevdiğiniz yemeklerin hemen teslim edileceği siparişler',
    ),
  ];
}
