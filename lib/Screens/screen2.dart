import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

class SecondCard extends StatelessWidget {
  const SecondCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F6FC),
      // appBar: NeumorphicAppBar(
      //   leading: Neumorphic(
      //     style: NeumorphicStyle(boxShape: NeumorphicBoxShape.circle()),
      //     child: Center(child: Icon(Icons.menu)),
      //   ),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 55),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Neumorphic(
                style: const NeumorphicStyle(
                  shape: NeumorphicShape.convex,
                ),
                child: NeumorphicIcon(
                  Icons.menu,
                  size: 25,
                  style: const NeumorphicStyle(
                    color: Color.fromARGB(255, 124, 110, 110),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const ProfileCard(),
              const SizedBox(
                height: 45,
              ),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: const [
                  TodoCard(
                    icon: Icons.alarm,
                    topText: "Daily",
                    bottomText: "Homework",
                  ),
                  TodoCard(
                    icon: Icons.menu_book,
                    topText: "Digital",
                    bottomText: "Dairy",
                  ),
                  TodoCard(
                    icon: Icons.edit_note,
                    topText: "Weekly",
                    bottomText: "Update",
                  ),
                  TodoCard(
                    icon: Icons.calendar_month,
                    topText: "School",
                    bottomText: "Calendar",
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const ProgressCard(),
              const SizedBox(
                height: 20,
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
        ),
      ),
    );
  }
}

class InactiveIconsCard extends StatelessWidget {
  final IconData inactiveIcon;

  const InactiveIconsCard({super.key, required this.inactiveIcon});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
        child: Container(
      color: const Color.fromARGB(255, 238, 238, 237),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: NeumorphicIcon(
        inactiveIcon,
        size: 25,
        style: const NeumorphicStyle(color: Color.fromARGB(255, 177, 206, 252)),
      ),
    ));
  }
}

class ProgressCard extends StatelessWidget {
  const ProgressCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20))),
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
        child: Column(
          children: [
            const NeumorphicProgress(
              style: ProgressStyle(
                lightSource: LightSource.right,
                depth: -20,
              ),
              height: 7,
              percent: 0.8,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Profile Status",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
                Text("80%",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TodoCard extends StatelessWidget {
  final IconData icon;
  final String topText;
  final String bottomText;

  const TodoCard(
      {super.key,
      required this.icon,
      required this.topText,
      required this.bottomText});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: SizedBox(
          width: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NeumorphicIcon(
                icon,
                size: 33,
                style: const NeumorphicStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 7,
              ),
              NeumorphicText(
                topText,
                style: const NeumorphicStyle(color: Colors.grey, depth: 20),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                bottomText,
                style: const TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20))),
      child: Container(
        color: const Color(0xFFEBF2FA),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: const Image(
                  height: 70,
                  image: NetworkImage(
                      "https://i.pinimg.com/736x/08/f1/a6/08f1a6ec3517982c2bebf0f6f1161598.jpg")),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Priya Darshini"),
                    SizedBox(
                      height: 5,
                    ),
                    Text("7 new messages")
                  ]),
            ),
            Neumorphic(
              child: Container(
                color: const Color(0xFF4CFF4C),
                height: 10,
                width: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
