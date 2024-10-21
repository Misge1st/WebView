import 'package:flutter/material.dart';
import 'package:webview/Alibaba.dart';
import 'package:webview/Allbirds.dart';
import 'package:webview/Amazon.dart';
import 'package:webview/Ebay.dart';
import 'package:webview/Shopify.dart';

class ShoppingHub extends StatefulWidget {
  const ShoppingHub({Key? key}) : super(key: key);

  @override
  State<ShoppingHub> createState() => _ShoppingHubState();
}

class _ShoppingHubState extends State<ShoppingHub> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          color: Colors.white70,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 105,
                  ),
                  Text(
                    'SHOPPING\nHUB\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  )
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 45),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Shopify()));
                      // Navigate to profile screen
                    },
                    child: const CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('lib/images/images.png'),
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Allbirds()));
                      // Navigate to profile screen
                    },
                    child: const CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('lib/images/Untitledd.jpg'),
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Amazon()));
                      // Navigate to profile screen
                    },
                    child: const CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('lib/images/Untitled4.png'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  const SizedBox(width: 45),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Ebay()));
                      // Navigate to profile screen
                    },
                    child: const CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('lib/images/Untitled4e.png'),
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Alibaba()));
                      // Navigate to profile screen
                    },
                    child: const CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('lib/images/Untitld.jpg'),
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  const SizedBox(width: 45),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Amazon()));
                      // Navigate to profile screen
                    },
                    child: const CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('lib/images/Untitledsf.jpg'),
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          tooltip: 'Add',
          onPressed: () {
            // Handle floating action button tap
          },
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 30,
              ),
              label: 'Home',
              backgroundColor: Colors.orangeAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.category_sharp,
                size: 30,
              ),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline_outlined,
                size: 30,
              ),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              label: 'Search',
              backgroundColor: Colors.orangeAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
                size: 30,
              ),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            switch (index) {
              case 0:
                // Navigate to Home screen
                break;
              case 1:
                // Navigate to Category screen
                break;
              case 2:
                // Navigate to Add screen
                break;
              case 3:
                // Navigate to Search screen
                break;
              case 4:
                // Navigate to Profile screen
                break;
              default:
                break;
            }
          },
        ),
      );
}
