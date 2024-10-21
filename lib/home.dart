// import 'package:flutter/material.dart';
// import 'package:webview/Alibaba.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         body: Container(
//           color: Colors.white70,
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Container(
//                     color: Colors.orangeAccent,
//                     child: IconButton(
//                       icon: const Icon(
//                         Icons.location_on,
//                       ),
//                       onPressed: () {
//                         Navigator.of(context).push(MaterialPageRoute(
//                             builder: (context) => const MyWebsite()));
//                       },
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   Expanded(
//                     child: Container(
//                       color: Colors.white,
//                       child: TextField(
//                         decoration: InputDecoration(
//                           hintText: 'Go To Shopify Website...',
//                           suffixIcon: IconButton(
//                             icon: const Icon(Icons.arrow_forward),
//                             onPressed: () {
//                               Navigator.of(context).push(MaterialPageRoute(
//                                   builder: (context) => const MyWebsite()));
//                             },
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     color: Colors.orangeAccent,
//                     child: IconButton(
//                       icon: const Icon(Icons.search),
//                       onPressed: () {
//                         Navigator.of(context).push(MaterialPageRoute(
//                             builder: (context) => const MyWebsite()));
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 10),
//               const Row(
//                 children: [
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Icon(
//                     Icons.local_movies_outlined,
//                     color: Colors.orangeAccent,
//                     size: 30,
//                   ),
//                   Text(
//                     ' Entertainment   ',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 15,
//                     ),
//                   ),
//                   Icon(
//                     Icons.forest,
//                     color: Colors.orangeAccent,
//                     size: 30,
//                   ),
//                   Text(
//                     ' Environmental   ',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 15,
//                     ),
//                   ),
//                   Icon(
//                     Icons.local_movies,
//                     color: Colors.orangeAccent,
//                     size: 30,
//                   ),
//                   Text(
//                     ' Expo ',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 15,
//                     ),
//                   ),
//                 ],
//               ),
//               const Row(
//                 children: [
//                   Text(
//                     'Featured Events',
//                     style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                   )
//                 ],
//               ),
//               Expanded(
//                 child: GridView.builder(
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2, // Number of columns
//                     mainAxisSpacing: 14, // Spacing between columns
//                     crossAxisSpacing: 6, // Spacing between rows
//                     childAspectRatio: 0.6, // Aspect ratio of each card
//                   ),
//                   itemCount: 8, // Set the number of cards to display
//                   itemBuilder: (context, index) {
//                     final isLeftAligned = index.isEven; // Alternate alignment
//                     return GestureDetector(
//                       onTap: () {
//                         // Handle tap on grid item
//                       },
//                       child: Card(
//                         elevation: 4,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         child: Container(
//                           padding: const EdgeInsets.all(16),
//                           alignment: isLeftAligned
//                               ? Alignment.centerLeft
//                               : Alignment.centerRight,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Container(
//                                 width: 100,
//                                 height: 100,
//                                 color: Colors.grey,
//                               ),
//                               const SizedBox(height: 8),
//                               const Text(
//                                 'Title Placeholder',
//                                 style: TextStyle(
//                                   overflow: TextOverflow.ellipsis,
//                                 ),
//                               ),
//                               const SizedBox(height: 8),
//                               // Placeholder for description
//                               const Text(
//                                 'Description Placeholder',
//                                 maxLines: 3,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                               const SizedBox(height: 8),
//                               const Text(
//                                 'Date Placeholder',
//                                 style: TextStyle(color: Colors.grey),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           backgroundColor: Colors.black,
//           tooltip: 'Add',
//           onPressed: () {
//             // Handle floating action button tap
//           },
//           child: const Icon(Icons.add),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           items: const [
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.home_outlined,
//                 size: 30,
//               ),
//               label: 'Home',
//               backgroundColor: Colors.orangeAccent,
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.category_sharp,
//                 size: 30,
//               ),
//               label: 'Category',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.add_circle_outline_outlined,
//                 size: 30,
//               ),
//               label: 'Add',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.search,
//                 size: 30,
//               ),
//               label: 'Search',
//               backgroundColor: Colors.orangeAccent,
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.person_outlined,
//                 size: 30,
//               ),
//               label: 'Profile',
//             ),
//           ],
//           onTap: (index) {
//             switch (index) {
//               case 0:
//                 // Navigate to Home screen
//                 break;
//               case 1:
//                 // Navigate to Category screen
//                 break;
//               case 2:
//                 // Navigate to Add screen
//                 break;
//               case 3:
//                 // Navigate to Search screen
//                 break;
//               case 4:
//                 // Navigate to Profile screen
//                 break;
//               default:
//                 break;
//             }
//           },
//         ),
//       );
// }
