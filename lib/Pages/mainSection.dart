import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/animations/entranceFader.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/pages/about/about.dart';
import 'package:portfolio/pages/contact/contact.dart';
import 'package:portfolio/pages/home/home.dart';
import 'package:portfolio/pages/navBar/navBarLogo.dart';
import 'package:portfolio/pages/portfolio/portfolio.dart';
import 'package:portfolio/pages/services/services.dart';
import 'package:portfolio/widget/footer.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isPressed = false;
  bool _isScrollingDown = false;
  ScrollController _scrollController = ScrollController();

  final List<String> _sectionsName = [
    "HOME",
    "ABOUT",
    "SERVICES",
    "PROJECTS",
    "CONTACT"
  ];

  final List<IconData> _sectionsIcons = [
    Icons.home,
    Icons.person,
    Icons.settings,
    Icons.build,
    Icons.article,
    Icons.phone,
  ];

  void _scroll(int i) {
    _scrollController.animateTo(
      i == 0
          ? 0.0
          : i == 1
              ? MediaQuery.of(context).size.height * 1.05
              : i == 2
                  ? MediaQuery.of(context).size.height * 1.98
                  : i == 3
                      ? MediaQuery.of(context).size.height * 2.9
                      : MediaQuery.of(context).size.height * 4,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  Widget sectionWidget(int i) {
    if (i == 0) {
      return HomePage();
    } else if (i == 1) {
      return About();
    } else if (i == 2) {
      return Services();
    } else if (i == 3) {
      return Portfolio();
    } else if (i == 4) {
      return Contact();
    } else if (i == 5) {
      return Footer();
    } else {
      return Container();
    }
  }

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!_isScrollingDown) {
          _isScrollingDown = true;
          setState(() {});
        }
      }

      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (_isScrollingDown) {
          _isScrollingDown = false;
          setState(() {});
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _scrollController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: k2PrimaryColor,
      appBar: MediaQuery.of(context).size.width < 760
          ? AppBar(
              iconTheme: IconThemeData(color: kTextColor),
              elevation: 0,
              backgroundColor: Colors.transparent,
              actions: [
                NavBarLogo(),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                )
              ],
            )
          : _appBarTabDesktop(),
      drawer: MediaQuery.of(context).size.width < 760 ? _appBarMobile() : null,
      body: Stack(
        children: [
          SectionsBody(
            scrollController: _scrollController,
            sectionsLength: _sectionsIcons.length,
            sectionWidget: sectionWidget,
          ),
        ],
      ),
    );
  }

  Widget _appBarActions(
    String childText,
    int index,
    IconData icon,
  ) {
    return MediaQuery.of(context).size.width > 760
        ? EntranceFader(
            offset: Offset(0, -10),
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 250),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 60.0,
              child: MaterialButton(
                hoverColor: kPrimaryColor,
                onPressed: () => _scroll(index),
                child: Text(
                  childText,
                  style:
                      TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              hoverColor: kPrimaryColor.withAlpha(70),
              onPressed: () {
                _scroll(index);
                Navigator.pop(context);
              },
              child: ListTile(
                leading: Icon(
                  icon,
                  color: kPrimaryColor,
                ),
                title: Text(childText,
                    style: TextStyle(
                      color: kTextColor,
                    )),
              ),
            ),
          );
  }

  Widget _appBarTabDesktop() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: k2PrimaryColor,
      title: MediaQuery.of(context).size.width < 780
          ? EntranceFader(
              duration: Duration(milliseconds: 250),
              offset: Offset(0, -10),
              delay: Duration(seconds: 3),
              child: NavBarLogo(
                height: 20.0,
              ))
          : EntranceFader(
              offset: Offset(0, -10),
              duration: Duration(milliseconds: 250),
              delay: Duration(milliseconds: 100),
              child: NavBarLogo(
                height: MediaQuery.of(context).size.height * 0.035,
              ),
            ),
      actions: [
        for (int i = 0; i < _sectionsName.length; i++)
          _appBarActions(
            _sectionsName[i],
            i,
            _sectionsIcons[i],
          ),
        EntranceFader(
          offset: Offset(0, -10),
          delay: Duration(milliseconds: 100),
          duration: Duration(milliseconds: 250),
          child: Container(
            height: 60.0,
            width: 120.0,
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              hoverColor: kPrimaryColor.withAlpha(150),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: kPrimaryColor)),
              onPressed: () {
                launchURL("https://drive.google.com/drive/u/0/my-drive");
              },
              child: Text(
                "RESUME",
                style: TextStyle(
                  color: kTextColor,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 15.0),
      ],
    );
  }

  Widget _appBarMobile() {
    return Drawer(
      child: Material(
        color: k2PrimaryColor,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: NavBarLogo(
                  height: 27,
                ),
              ),
              Divider(
                color: kTextColor,
              ),
              Divider(
                color: kTextColor,
              ),
              for (int i = 0; i < _sectionsName.length; i++)
                _appBarActions(
                  _sectionsName[i],
                  i,
                  _sectionsIcons[i],
                ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: kPrimaryColor.withAlpha(150),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: kPrimaryColor)),
                  onPressed: () {
                    launchURL(
                        "https://drive.google.com/file/d/11jkl8mf5I4a84CssB8z22WXrGaFMTfd4/view?usp=sharing");
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.book,
                      color: Colors.red,
                    ),
                    title: Text(
                      "RESUME",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionsBody extends StatelessWidget {
  final ScrollController scrollController;
  final int sectionsLength;
  final Widget Function(int) sectionWidget;

  const SectionsBody({
    Key key,
    this.scrollController,
    this.sectionsLength,
    this.sectionWidget,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        // physics: !kIsWeb ? ScrollPhysics() : NeverScrollableScrollPhysics(),
        controller: scrollController,
        itemCount: sectionsLength,
        itemBuilder: (context, index) => sectionWidget(index),
      ),
    );
  }
}

// onPointerSignal: (ps) {
//           if (ps is PointerScrollEvent) {
//             final newOffset = scrollController.offset + ps.scrollDelta.dy;
//             if (ps.scrollDelta.dy.isNegative) {
//               scrollController.jumpTo(math.max(0, newOffset));
//             } else {
//               scrollController.jumpTo(math.min(
//                   scrollController.position.maxScrollExtent, newOffset));
//             }
//           }
//         },