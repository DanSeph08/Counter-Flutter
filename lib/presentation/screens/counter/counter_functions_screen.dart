import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int counterClicks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 226, 167, 167),
        appBar: AppBar(
          title: const Center(child: Text('Counter Functions')),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () {
                setState(() {
                  counterClicks = 0;
                });
              },
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$counterClicks",
                style:
                    const TextStyle(fontSize: 120, fontWeight: FontWeight.w100),
              ),
              Text("$counterClicks" == "1" ? "click" : "clicks",
                  style: const TextStyle(fontSize: 50))
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple),
                child: Center(
                  child: Text(
                    'Menu',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Home'),
                leading: const Icon(Icons.home),
                onTap: () {
                  const AlertDialog(
                    title: Text('Home'),
                    content: Text('Home'),
                  );
                },
              ),
              ListTile(
                title: const Text('Profile'),
                leading: const Icon(Icons.person),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Settings'),
                leading: const Icon(Icons.settings),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: () {
                  setState(() {
                    counterClicks = 0;
                  });
                },
              ),
              IconButton(
                icon: const Icon(Icons.plus_one),
                onPressed: () {
                  setState(() {
                    counterClicks++;
                  });
                },
              ),
              IconButton(
                icon: const Icon(Icons.exposure_minus_1),
                onPressed: () {
                  if (counterClicks == 0) return;
                  setState(() {
                    counterClicks--;
                  });
                },
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.refresh_outlined,
              onPressed: () {
                setState(() {
                  counterClicks = 0;
                });
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  counterClicks++;
                });
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.exposure_minus_1,
              onPressed: () {
                if (counterClicks == 0) return;
                setState(() {
                  counterClicks--;
                });
              },
            ),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  //Si se requiere que el primer parametro sea obligatoriamente uno especifico se coloca antes del objeto
  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
