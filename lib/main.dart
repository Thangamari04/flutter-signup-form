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
      home: ThirukkuralPage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class ThirukkuralPage extends StatefulWidget {
  @override
// ignore: library_private_types_in_public_api
  _ThirukkuralPageState createState() => _ThirukkuralPageState();
}

class _ThirukkuralPageState extends State<ThirukkuralPage> {
  String selectedSection = 'Arathupal';

  Widget _getSectionContent(String section) {
    switch (section) {
      case 'Arathupal':
        return Column(
          children: [
            _buildContainer(
              athikaramText: 'இயல் 01',
              leftContent: 'பாயிரவியல்',
              kuralText: 'குறள்:',
              rangeText: '0-40',
            ),
            _buildContainer(
              athikaramText: 'இயல் 02',
              leftContent: 'இல்லறவியல்',
              kuralText: 'குறள்:',
              rangeText: '41-240',
            ),
            _buildContainer(
              athikaramText: 'இயல் 03',
              leftContent: 'துறவறவியல்',
              kuralText: 'குறள்:',
              rangeText: '240-370',
            ),
            _buildContainer(
              athikaramText: 'இயல் 04',
              leftContent: 'ஊழியல்',
              kuralText: 'குறள்:',
              rangeText: '370-380',
            ),
          ],
        );
      case 'Porulpal':
        return Column(
          children: [
            _buildContainer(
              athikaramText: 'இயல் 06',
              leftContent: 'அரசியல்',
              kuralText: 'குறள்:',
              rangeText: '380-630',
            ),
            _buildContainer(
              athikaramText: 'இயல் 07',
              leftContent: 'அமைச்சியல்',
              kuralText: 'குறள்:',
              rangeText: '630-730',
            ),
            _buildContainer(
              athikaramText: 'இயல் 08',
              leftContent: 'அரணியல்',
              kuralText: 'குறள்:',
              rangeText: '730-750',
            ),
            _buildContainer(
              athikaramText: 'இயல் 09',
              leftContent: 'கூழியல்',
              kuralText: 'குறள்:',
              rangeText: '750-760',
            ),
            _buildContainer(
              athikaramText: 'இயல் 10',
              leftContent: 'படையில்',
              kuralText: 'குறள்:',
              rangeText: '760-780',
            ),
            _buildContainer(
              athikaramText: 'இயல் 11',
              leftContent: 'நட்பியல்',
              kuralText: 'குறள்:',
              rangeText: '780-950',
            ),
            _buildContainer(
              athikaramText: 'இயல் 12',
              leftContent: 'குடியியல்',
              kuralText: 'குறள்:',
              rangeText: '950-1080',
            ),
          ],
        );
      case 'Inbathupal':
        return Column(
          children: [
            _buildContainer(
              athikaramText: 'அதிகாரம் 13',
              leftContent: 'களவியல்',
              kuralText: 'குறள்:',
              rangeText: '1080-1150',
            ),
            _buildContainer(
              athikaramText: 'அதிகாரம் 14',
              leftContent: 'கற்பியல்',
              kuralText: 'குறள்:',
              rangeText: '1150-1330',
            ),
          ],
        );
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () {
// Add button logic
          },
        ),
        title: const Text(
          'திருக்குறள்',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {
// Add filter button logic
            },
          ),
        ],
        backgroundColor: Colors.grey[100],
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 1,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(2),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: selectedSection == 'Arathupal'
                    ? (MediaQuery.of(context).size.width / 3 -
                            MediaQuery.of(context).size.width / 3 * 0.25) /
                        2
                    : selectedSection == 'Porulpal'
                        ? (MediaQuery.of(context).size.width / 3 -
                                MediaQuery.of(context).size.width / 3 * 0.25) +
                            MediaQuery.of(context).size.width / 3 / 2
                        : (2 * (MediaQuery.of(context).size.width / 3) -
                                MediaQuery.of(context).size.width / 3 * 0.25) +
                            MediaQuery.of(context).size.width / 3 / 2,
                child: Container(
                  height: 4,
                  width: MediaQuery.of(context).size.width / 3 * 0.25,
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(4),
                      bottom: Radius.circular(4),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              selectedSection = 'Arathupal';
                            });
                          },
                          style: TextButton.styleFrom(
                            minimumSize: Size.zero,
                            padding: EdgeInsets.zero,
                          ),
                          child: Text(
                            'அறத்துப்பால்',
                            style: TextStyle(
                              color: selectedSection == 'Arathupal'
                                  ? const Color.fromARGB(255, 60, 155, 144)
                                  : Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              selectedSection = 'Porulpal';
                            });
                          },
                          style: TextButton.styleFrom(
                            minimumSize: Size.zero,
                            padding: EdgeInsets.zero,
                          ),
                          child: Text(
                            'பொருட்பால்',
                            style: TextStyle(
                              color: selectedSection == 'Porulpal'
                                  ? Colors.teal.shade700
                                  : Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              selectedSection = 'Inbathupal';
                            });
                          },
                          style: TextButton.styleFrom(
                            minimumSize: Size.zero,
                            padding: EdgeInsets.zero,
                          ),
                          child: Text(
                            'இன்பத்துப்பால்',
                            style: TextStyle(
                              color: selectedSection == 'Inbathupal'
                                  ? Colors.teal.shade700
                                  : Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(12.0),
              child: _getSectionContent(selectedSection),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContainer({
    required String athikaramText,
    required String leftContent,
    required String kuralText,
    required String rangeText,
  }) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            athikaramText,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                leftContent,
                style: const TextStyle(
                  color: Color.fromARGB(221, 26, 26, 26),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    kuralText,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    rangeText,
                    style: const TextStyle(
                      color: Color.fromARGB(221, 26, 26, 26),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
