import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_website/ui/carousel/carousel.dart';
import 'package:flutter_website/utils/utils.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'components/components.dart';
import 'ui/blocks/features.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint(breakpoint: 450, name: MOBILE),
            ResponsiveBreakpoint(breakpoint: 800, name: DESKTOP),
          ],
          background: Container(color: background)),
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              ResponsiveWrapper(
                  minWidth: 1200,
                  defaultScale: true,
                  mediaQueryData: MediaQueryData(size: Size(1200, 640)),
                  child: Carousel()),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: border)),
                margin: EdgeInsets.fromLTRB(1, 0, 1, 32),
                padding: EdgeInsets.all(40),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    constraints:
                        BoxConstraints.loose(Size(800, double.infinity)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Made by ",
                                style: headlineSecondaryTextStyle.copyWith(
                                    fontSize: 24)),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Image.asset(
                                  "assets/images/google_logo.png",
                                  width: 75,
                                  height: 24,
                                  fit: BoxFit.fill),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 32),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text:
                                        "Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for ",
                                    style: headlineSecondaryTextStyle),
                                TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () async {
                                        openUrl("https://flutter.dev/docs");
                                      },
                                    text: "mobile",
                                    style: headlineSecondaryTextStyle.copyWith(
                                        color: primary)),
                                TextSpan(
                                    text: ", ",
                                    style: headlineSecondaryTextStyle),
                                TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        openUrl("https://flutter.dev/web");
                                      },
                                    text: "web",
                                    style: headlineSecondaryTextStyle.copyWith(
                                        color: primary)),
                                TextSpan(
                                    text: ", and ",
                                    style: headlineSecondaryTextStyle),
                                TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        openUrl("https://flutter.dev/desktop");
                                      },
                                    text: "desktop",
                                    style: headlineSecondaryTextStyle.copyWith(
                                        color: primary)),
                                TextSpan(
                                    text: " from a single codebase.",
                                    style: headlineSecondaryTextStyle),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 32),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FlatButton(
                                onPressed: () => openUrl(
                                    "https://flutter.dev/docs/get-started/install"),
                                color: primary,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(0))),
                                padding: EdgeInsets.symmetric(
                                    vertical: 22, horizontal: 80),
                                child: Text(
                                  "Get started",
                                  style: buttonTextStyle,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: FlatButton(
                                  onPressed: () => {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(0))),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 16),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 8),
                                        child: Icon(
                                          Icons.play_circle_filled,
                                          size: 24,
                                          color: primary,
                                        ),
                                      ),
                                      Text(
                                        "Watch video",
                                        style: buttonTextStyle.copyWith(
                                            fontSize: 16, color: primary),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 16),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Coming from another platform? Docs: ",
                                  style: bodyTextStyle),
                              TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      openUrl(
                                          "https://flutter.dev/docs/get-started/flutter-for/ios-devs");
                                    },
                                  text: "iOS",
                                  style:
                                      bodyTextStyle.copyWith(color: primary)),
                              TextSpan(text: ", ", style: bodyTextStyle),
                              TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      openUrl(
                                          "https://flutter.dev/docs/get-started/flutter-for/android-devs");
                                    },
                                  text: "Android",
                                  style:
                                      bodyTextStyle.copyWith(color: primary)),
                              TextSpan(text: ", ", style: bodyTextStyle),
                              TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      openUrl(
                                          "https://flutter.dev/docs/get-started/flutter-for/web-devs");
                                    },
                                  text: "Web",
                                  style:
                                      bodyTextStyle.copyWith(color: primary)),
                              TextSpan(text: ", ", style: bodyTextStyle),
                              TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      openUrl(
                                          "https://flutter.dev/docs/get-started/flutter-for/react-native-devs");
                                    },
                                  text: "React Native",
                                  style:
                                      bodyTextStyle.copyWith(color: primary)),
                              TextSpan(text: ", ", style: bodyTextStyle),
                              TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      openUrl(
                                          "https://flutter.dev/docs/get-started/flutter-for/xamarin-forms-devs");
                                    },
                                  text: "Xamarin",
                                  style:
                                      bodyTextStyle.copyWith(color: primary)),
                              TextSpan(text: ".", style: bodyTextStyle),
                            ]),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Features(),
            ],
          ),
        ),
      ),
      theme: Theme.of(context).copyWith(platform: TargetPlatform.android),
      debugShowCheckedModeBanner: false,
    );
  }
}
