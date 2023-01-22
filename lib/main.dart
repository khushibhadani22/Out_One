import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    (Platform.isAndroid)
        ? MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const MyApp(),
      },
    )
        : (Platform.isIOS)
        ? CupertinoApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
      },
    )
        : Container(),
  );
}

bool SwitchValA = false;
bool SwitchValB = false;
bool SwitchValC = false;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Settings UI",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const Text(
              "Common",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            const Card(
              elevation: 1,
              child: ListTile(
                leading: Icon(
                  Icons.language,
                  color: Colors.black,
                ),
                title: Text(
                  "Language",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("English"),
              ),
            ),
            const Card(
              elevation: 1,
              child: ListTile(
                leading: Icon(
                  Icons.cloud_outlined,
                  color: Colors.black,
                ),
                title: Text(
                  "Environment",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Production"),
              ),
            ),
            const Text(
              "Account",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            const Card(
              elevation: 1,
              child: ListTile(
                leading: Icon(
                  Icons.phone_outlined,
                  color: Colors.black,
                ),
                title: Text(
                  "Phone Number",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Card(
              elevation: 1,
              child: ListTile(
                leading: Icon(
                  Icons.email_outlined,
                  color: Colors.black,
                ),
                title: Text(
                  "Email",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Card(
              elevation: 1,
              child: ListTile(
                leading: Icon(
                  Icons.login,
                  color: Colors.black,
                ),
                title: Text(
                  "Sign Out",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SwitchListTile(
                title: const Text(
                  "Lock App In BackGround",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                value: SwitchValA,
                onChanged: (val) {
                  setState(() {
                    SwitchValA = val;
                  });
                }),
            SwitchListTile(
                title: const Text(
                  "Use FingerPrint",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                value: SwitchValB,
                onChanged: (val) {
                  setState(() {
                    SwitchValB = val;
                  });
                }),
            SwitchListTile(
                title: const Text(
                  "Change Password",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                value: SwitchValC,
                onChanged: (val) {
                  setState(() {
                    SwitchValC = val;
                  });
                }),
            const Text(
              "Misc",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            const Card(
              elevation: 1,
              child: ListTile(
                leading: Icon(
                  Icons.file_copy_outlined,
                  color: Colors.black,
                ),
                title: Text(
                  "Terms Of Service",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("English"),
              ),
            ),
            const Card(
              elevation: 1,
              child: ListTile(
                leading: Icon(
                  Icons.filter,
                  color: Colors.black,
                ),
                title: Text(
                  "Open Source Licence",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Production"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: CupertinoColors.black,
          middle: Text(
            "Settings UI",
            style: TextStyle(
                color: CupertinoColors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
        ),
        child: Container(
          color: CupertinoColors.extraLightBackgroundGray,
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 330, bottom: 10),
                child: Text(
                  "Common",
                  style: TextStyle(color: CupertinoColors.black, fontSize: 15),
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: CupertinoColors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          flex: 1,
                          child: Icon(
                            CupertinoIcons.textformat_abc,
                            color: CupertinoColors.black,
                          ),
                        ),
                        const Expanded(
                            flex: 8,
                            child: Text(
                              " Language",
                              style: TextStyle(
                                  color: CupertinoColors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        Expanded(
                            flex: 3,
                            child: Row(
                              children: const [
                                Text(
                                  "English",
                                  style: TextStyle(
                                      color: CupertinoColors.systemGrey),
                                ),
                                Icon(
                                  CupertinoIcons.forward,
                                  color: CupertinoColors.black,
                                ),
                              ],
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        const Expanded(
                          flex: 1,
                          child: Icon(
                            CupertinoIcons.cloud_fill,
                            color: CupertinoColors.black,
                          ),
                        ),
                        const Expanded(
                            flex: 9,
                            child: Text(
                              "  Environment",
                              style: TextStyle(
                                  color: CupertinoColors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        Expanded(
                            flex: 5,
                            child: Row(
                              children: const [
                                Text(
                                  "Production",
                                  style: TextStyle(
                                      color: CupertinoColors.systemGrey,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  CupertinoIcons.forward,
                                  color: CupertinoColors.black,
                                ),
                              ],
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10, right: 333),
                child: Text(
                  "Account",
                  style: TextStyle(
                      color: CupertinoColors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              Container(
                height: 160,
                width: double.infinity,
                color: CupertinoColors.white,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: const [
                        Expanded(
                          flex: 1,
                          child: Icon(
                            CupertinoIcons.phone_fill,
                            color: CupertinoColors.black,
                          ),
                        ),
                        Expanded(
                            flex: 9,
                            child: Text(
                              " Phone number",
                              style: TextStyle(
                                  color: CupertinoColors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        Expanded(
                          flex: 1,
                          child: Icon(
                            CupertinoIcons.forward,
                            color: CupertinoColors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: const [
                        Expanded(
                          flex: 1,
                          child: Icon(
                            CupertinoIcons.mail_solid,
                            color: CupertinoColors.black,
                          ),
                        ),
                        Expanded(
                            flex: 9,
                            child: Text(
                              " Email",
                              style: TextStyle(
                                  color: CupertinoColors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        Expanded(
                          flex: 1,
                          child: Icon(
                            CupertinoIcons.forward,
                            color: CupertinoColors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: const [
                        Expanded(
                          flex: 1,
                          child: Icon(
                            CupertinoIcons.doc_checkmark_fill,
                            color: CupertinoColors.black,
                          ),
                        ),
                        Expanded(
                            flex: 9,
                            child: Text(
                              " Sign out",
                              style: TextStyle(
                                  color: CupertinoColors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        Expanded(
                          flex: 1,
                          child: Icon(
                            CupertinoIcons.forward,
                            color: CupertinoColors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10, right: 340),
                child: Text(
                  "Security",
                  style: TextStyle(
                      color: CupertinoColors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              Container(
                height: 180,
                width: double.infinity,
                color: CupertinoColors.white,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const Expanded(
                            flex: 1,
                            child: Icon(
                              CupertinoIcons.lock_circle,
                              color: CupertinoColors.black,
                            )),
                        const Expanded(
                            flex: 10,
                            child: Text(
                              " Lock app in background",
                              style: TextStyle(
                                  color: CupertinoColors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        Expanded(
                            flex: 2,
                            child: CupertinoSwitch(
                              value: SwitchValA,
                              onChanged: (val) {
                                SwitchValA = val;
                              },
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Expanded(
                            flex: 1,
                            child: Icon(
                              CupertinoIcons.lock,
                              color: CupertinoColors.black,
                            )),
                        const Expanded(
                            flex: 10,
                            child: Text(
                              " Use fingerprint",
                              style: TextStyle(
                                  color: CupertinoColors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        Expanded(
                            flex: 2,
                            child: CupertinoSwitch(
                              onChanged: (val) {
                                SwitchValB = val;
                              },
                              value: SwitchValB,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Expanded(
                            flex: 1,
                            child: Icon(
                              CupertinoIcons.padlock_solid,
                              color: CupertinoColors.black,
                            )),
                        const Expanded(
                            flex: 10,
                            child: Text(
                              " Change password",
                              style: TextStyle(
                                  color: CupertinoColors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        Expanded(
                            flex: 2,
                            child: CupertinoSwitch(
                              onChanged: (val) {
                                SwitchValC = val;
                              },
                              value: SwitchValC,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10, right: 370),
                child: Text(
                  "Misc",
                  style: TextStyle(
                      color: CupertinoColors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: CupertinoColors.white,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: const [
                        Expanded(
                          flex: 1,
                          child: Icon(
                            CupertinoIcons.doc_chart_fill,
                            color: CupertinoColors.black,
                          ),
                        ),
                        Expanded(
                            flex: 9,
                            child: Text(
                              " Terms of Service",
                              style: TextStyle(
                                  color: CupertinoColors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        Expanded(
                          flex: 1,
                          child: Icon(
                            CupertinoIcons.forward,
                            color: CupertinoColors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: const [
                        Expanded(
                          flex: 1,
                          child: Icon(
                            CupertinoIcons.divide_square_fill,
                            color: CupertinoColors.black,
                          ),
                        ),
                        Expanded(
                            flex: 9,
                            child: Text(
                              " Open source licenses",
                              style: TextStyle(
                                  color: CupertinoColors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        Expanded(
                          flex: 1,
                          child: Icon(
                            CupertinoIcons.forward,
                            color: CupertinoColors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
