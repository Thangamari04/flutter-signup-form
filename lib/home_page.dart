import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.grey[100],
        fontFamily: 'HindMadurai-Regular',
      ),
      home: MyHomePage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.sort),
          onPressed: () {
            // Add icon action here
            // ignore: avoid_print
            print('Left icon pressed');
          },
        ),
        title: const Text(
          'முகப்பு',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Add your right icon action here
              // ignore: avoid_print
              print('Right icon pressed');
            },
          ),
        ],
        backgroundColor: Colors.grey[100],
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            width: 343,
            height: 107,
            margin: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color(0xFF1CAE81),
              borderRadius: BorderRadius.circular(11),
            ),
            child: Row(
              children: [
                const Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 16.0),
                        Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Text(
                            'தமிழ்: உலகின் அழகு',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Text(
                            'தமிழின் சிறந்த கலை மற்றும் அறிவின் மையமாக.',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/image1.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 342,
            height: 194,
            margin: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                // Left image
                Positioned(
                  left: 0,
                  top: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/left_image.png', // Replace with your left image asset
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: 50, // Adjust as needed
                  ),
                ),
                // Right image
                Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/right_image.png', // Replace with your right image asset
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: 50, // Adjust as needed
                  ),
                ),
                // Centered image
                Center(
                  child: Image.asset(
                    'assets/center_image.png', // Replace with your center image asset
                    width: 120, // Adjust width as needed
                    height: 120, // Adjust height as needed
                    fit: BoxFit.cover,
                  ),
                ),
                // Bottom text
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: Colors.black.withOpacity(0.6),
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 8.0),
                    child: const Text(
                      'Bottom Text',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
