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
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.purpleAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 60),
              const Row(
                children: [
                  SizedBox(width: 105),
                  Text(
                    'All-in-One\nCart\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black54,
                          offset: Offset(3, 3),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              _buildShopRow(
                context,
                'lib/images/images.png',
                const Shopify(),
                'lib/images/Untitledd.jpg',
                const Allbirds(),
                'lib/images/Untitled4.png',
                const Amazon(),
              ),
              const SizedBox(height: 50),
              _buildShopRow(
                context,
                'lib/images/Untitled4e.png',
                const Ebay(),
                'lib/images/Untitld.jpg',
                const Alibaba(),
                'lib/images/Untitledsf.jpg',
                const Amazon(),
              ),
              const SizedBox(height: 50),
              _buildShopRow(
                context,
                'lib/images/Untitledsf.jpg',
                const Amazon(),
                null,
                null,
                null,
                null,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pinkAccent,
          tooltip: 'Add',
          onPressed: () {
            // Handle floating action button tap
          },
          child: const Icon(Icons.add, color: Colors.white),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.deepPurple,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey[400],
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, size: 30),
              label: 'Home',
              backgroundColor: Colors.orangeAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_sharp, size: 30),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_outlined, size: 30),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 30),
              label: 'Search',
              backgroundColor: Colors.orangeAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined, size: 30),
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

  Widget _buildShopRow(BuildContext context, String image1, Widget page1,
      String? image2, Widget? page2, String? image3, Widget? page3) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildShopIcon(context, image1, page1),
        const SizedBox(width: 30),
        image2 != null ? _buildShopIcon(context, image2, page2!) : Container(),
        const SizedBox(width: 30),
        image3 != null ? _buildShopIcon(context, image3, page3!) : Container(),
      ],
    );
  }

  Widget _buildShopIcon(BuildContext context, String image, Widget page) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page));
      },
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 38,
          backgroundImage: AssetImage(image),
        ),
      ),
    );
  }
}
