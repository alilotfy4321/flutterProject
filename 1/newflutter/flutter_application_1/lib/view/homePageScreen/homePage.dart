import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/homePageControler/homePageStates.dart';
import 'package:flutter_application_1/controller/homePageControler/homepageCubit.dart';
import 'package:flutter_application_1/reusableComponents.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //bloc---------------------------------------------
    return BlocProvider(
      create: (context) => HomePagecubit(),
      child: BlocBuilder<HomePagecubit, HomePagestates>(
        builder: (context, state) {
          // define an object from cubit------
          HomePagecubit controller = context.read<HomePagecubit>();
          ////////////////////////////////////////////////////////////////////
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://static.vecteezy.com/system/resources/thumbnails/011/432/528/small/enter-login-and-password-registration-page-on-screen-sign-in-to-your-account-creative-metaphor-login-page-mobile-app-with-user-page-flat-illustration-vector.jpg',
                    ),
                  ),

                  // ignore: prefer_const_constructors
                  vSpace(),
                  const Text(
                    'Hello',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                  vSpace(),
                  const Text('Welcome to tasky manage your daily tasks.',
                      maxLines: 2),
                  vSpace(),
                  button(
                      width: 150,
                      bgcolor: controller.buttonColor,
                      radius: 100,
                      onClic: controller.onClickButton,
                      text: 'Login'),
                  vSpace(),
                  button(
                      width: 150,
                      bgcolor: controller.buttonColor,
                      radius: 100,
                      onClic: controller.onClickButton,
                      text: 'signUp'),
                  vSpace(),
                  const Text(
                    'SignUp using ',
                  ),
                  vSpace(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.facebook,
                            color: Colors.blue,
                          )),
                      vSpace(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.mail_sharp,
                          )),
                      vSpace(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.facebook,
                            color: Colors.blue,
                          )),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
