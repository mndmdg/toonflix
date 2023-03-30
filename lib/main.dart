import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  // dart entry point
  runApp(_AppState());
}

// 위젯을 만든다는 건 클래스를 만든다는 것
class App extends StatelessWidget {
  // 우리 앱의 root

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  'Total balance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '\$ 5 194 482',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Button(
                        text: 'Transfer',
                        bgColor: Color(0xFFF1B33B),
                        textColor: Colors.black),
                    Button(
                        text: 'Transfer',
                        bgColor: Color(0xFF1F2123),
                        textColor: Colors.white),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    const CurrencyCard(
                      name: 'Euro',
                      code: 'EUR',
                      amount: "6 428",
                      icon: Icons.euro_rounded,
                      isInverted: false,
                      order: 0,
                    ),
                    Transform.translate(
                      offset: const Offset(0, -20),
                      child: const CurrencyCard(
                        name: 'Bitcoin',
                        code: 'BTC',
                        amount: "9 785",
                        icon: Icons.currency_bitcoin_rounded,
                        isInverted: true,
                        order: 1,
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -40),
                      child: const CurrencyCard(
                        name: 'Dollar',
                        code: 'USD',
                        amount: "728",
                        icon: Icons.attach_money_outlined,
                        isInverted: false,
                        order: 2,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _AppState extends StatefulWidget {
  @override
  State<_AppState> createState() => __AppStateState();
}

class __AppStateState extends State<_AppState> {
  List<int> numbers = [];
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  void onClicked() {
    setState(() {
      numbers.add(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? const MyLargeTitle() : const Text('nothing'),
              for (var n in numbers) Text('$n'),
              IconButton(
                onPressed: onClicked,
                icon: const Icon(
                  Icons.add_box_rounded,
                ),
              ),
              IconButton(
                onPressed: toggleTitle,
                icon: const Icon(
                  Icons.remove_red_eye_rounded,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    Key? key,
  }) : super(key: key);

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  void initState() {
    super.initState();
    print('hello!');
  }

  @override
  void dispose() {
    print('dispose!');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('hello!!');
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
