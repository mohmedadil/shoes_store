import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shoes_store/features/authintication/login/presentation/views/login_view.dart';
import 'package:shoes_store/features/authintication/recovery/presentation/views/recovery_view.dart';
import 'package:shoes_store/features/authintication/recovery/presentation/views/verification_view.dart';
import 'package:shoes_store/features/authintication/register/presentation/views/register_view.dart';
import 'package:shoes_store/features/home/presentation/controler/cubit/home_cubit.dart';
import 'package:shoes_store/features/home/presentation/views/favourite_view.dart';
import 'package:shoes_store/features/home/presentation/views/home_view.dart';
import 'package:shoes_store/features/intro/presentation/views/intro.dart';
import 'package:shoes_store/features/splash/presntation/view/splash_view.dart';

abstract class Routers {
  static const introduction = '/intro';
  static const kLogin = '/login';
  static const kregister = '/register';
  static const krecovery = '/recovery';
  static const kverify = '/verify';
  static const khome = '/home';
  static const kfavourite = '/favourite';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeView(),
    ),
    GoRoute(
      path: introduction,
      builder: (context, state) => const IntroView(),
    ),
    GoRoute(
      path: kLogin,
      builder: (context, state) => LoginView(),
    ),
    GoRoute(
      path: kregister,
      builder: (context, state) => RegisterView(),
    ),
    GoRoute(
      path: krecovery,
      builder: (context, state) => const RecoveryView(),
    ),
    GoRoute(
      path: kverify,
      builder: (context, state) => const VerificationView(),
    ),
    GoRoute(
      path: khome,
      builder: (context, state) => HomeView(),
    ),
    GoRoute(
      path: kfavourite,
      builder: (context, state) => const FavouriteView(),
    ),
  ]);
}
  // HomeView(user: state.extra as UserCredential),