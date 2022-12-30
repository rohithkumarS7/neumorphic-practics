import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:nuemo/Screens/screen2.dart';
import 'package:getwidget/getwidget.dart';

class ThirdCard extends StatefulWidget {
  const ThirdCard({super.key});

  @override
  State<ThirdCard> createState() => _ThirdCardState();
}

class _ThirdCardState extends State<ThirdCard> {
  bool isChanged = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F6FC),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Neumorphic(
              style: const NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  intensity: 0.7,
                  surfaceIntensity: 0),
              child: NeumorphicIcon(
                style: const NeumorphicStyle(
                    color: Color.fromARGB(255, 189, 187, 187)),
                FontAwesome.arrow_left,
                size: 23,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Using Neumorphic switch and the shape of the switch is circular

                // Neumorphic(
                //   padding: const EdgeInsets.all(4),
                //   style: NeumorphicStyle(
                //       shape: NeumorphicShape.flat,
                //       depth: 5,
                //       boxShape: NeumorphicBoxShape.roundRect(
                //           BorderRadius.circular(20))),
                //   child: NeumorphicSwitch(
                //     style: const NeumorphicSwitchStyle(
                //       activeThumbColor: Color.fromARGB(255, 49, 154, 247),
                //       activeTrackColor: Colors.transparent,
                //     ),
                //     onChanged: (value) {
                //       setState(() {
                //         isChanged = !isChanged;
                //       });
                //     },
                //     value: isChanged,
                //     height: 50,
                //   ),
                // ),

                // Created the switch manually witht he desired switch shape

                InkWell(
                  onTap: () {
                    setState(() {
                      isChanged = !isChanged;
                    });
                  },
                  child: isChanged ? SwitchOnWidget() : SwitchOffWidget(),
                ),

                const SizedBox(
                  width: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Tracker",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 20),
                    ),
                    SizedBox(height: 3),
                    Text("Enabled",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                            fontSize: 17))
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Neumorphic(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              style: NeumorphicStyle(
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(20))),
              child: SizedBox(
                height: 300,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Text(
                        "Weekly Productivity",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Text(
                        "Average : 62%",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Neumorphic(
                  style: const NeumorphicStyle(
                      shape: NeumorphicShape.convex, depth: -2),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: NeumorphicIcon(
                      Icons.home_outlined,
                      size: 22,
                      style: const NeumorphicStyle(color: Colors.blueAccent),
                    ),
                  ),
                ),
                const InactiveIconsCard(
                  inactiveIcon: Octicons.gift,
                ),
                const InactiveIconsCard(
                  inactiveIcon: Icons.credit_card,
                ),
                const InactiveIconsCard(
                  inactiveIcon: Icons.account_balance_wallet_outlined,
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}

class SwitchOffWidget extends StatelessWidget {
  const SwitchOffWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      padding: const EdgeInsets.all(6),
      style: NeumorphicStyle(
          depth: -2,
          shape: NeumorphicShape.convex,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20))),
      child: Neumorphic(
        padding: const EdgeInsets.all(3),
        style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15))),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 187, 188, 190),
                  borderRadius: BorderRadius.circular(10)),
              height: 33,
              width: 33,
            ),
            const SizedBox(
              width: 35,
            ),
          ],
        ),
      ),
    );
  }
}

class SwitchOnWidget extends StatelessWidget {
  const SwitchOnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      padding: const EdgeInsets.all(6),
      style: NeumorphicStyle(
          depth: -2,
          shape: NeumorphicShape.convex,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20))),
      child: Neumorphic(
        padding: const EdgeInsets.all(3),
        style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15))),
        child: Row(
          children: [
            const SizedBox(
              width: 35,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFF1096FD),
                  borderRadius: BorderRadius.circular(10)),
              height: 33,
              width: 33,
            ),
          ],
        ),
      ),
    );
  }
}
