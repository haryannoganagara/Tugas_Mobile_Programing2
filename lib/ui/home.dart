import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tugas_mp2/theme.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tugas_mp2/ui/suhu.dart';
import 'login.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final Box _boxLogin = Hive.box("login");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Konversi"),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white),
              ),
              child: IconButton(
                onPressed: () {
                  _boxLogin.clear();
                  _boxLogin.put("loginStatus", false);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Login();
                      },
                    ),
                  );
                },
                icon: const Icon(Icons.logout_rounded),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Menu Konversi",
                  textAlign: TextAlign.center,
                  style: titleText.copyWith(
                    color: kBlackColor,
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .85,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: [
                     Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Column(
                          children: <Widget>[
                            const Spacer(),
                            SvgPicture.asset(
                              "assets/images/degree.svg",
                              height: 70,
                              width: 70,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "SUHU",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => const SuhuPage()),
                                  );
                              },
                              child: const Text('Buka Konversi'),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Column(
                          children: <Widget>[
                            const Spacer(),
                            SvgPicture.asset(
                              "assets/images/ruler.svg",
                              height: 70,
                              width: 70,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "JARAK",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Column(
                          children: <Widget>[
                            const Spacer(),
                            SvgPicture.asset(
                              "assets/images/scales.svg",
                              height: 70,
                              width: 70,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "MASA",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Column(
                          children: <Widget>[
                            const Spacer(),
                            SvgPicture.asset(
                              "assets/images/time.svg",
                              height: 70,
                              width: 70,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "WAKTU",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
          ],
          
        ),
        
      ),
      
    );
  }
}
