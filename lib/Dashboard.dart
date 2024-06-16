import 'package:flutter/material.dart';
import 'package:uts_pmo/rawat_inap.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(2, 63, 116, 1),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: const Color.fromRGBO(0, 199, 220, 1),
        title: const Text(''),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Color.fromRGBO(2, 63, 116, 1),
            ),
            onPressed: () {
              // Tambahkan logika untuk tombol search di sini
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Color.fromRGBO(2, 63, 116, 1),
            ),
            onPressed: () {
              // Tambahkan logika untuk tombol settings di sini
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 450,
            height: 150,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(0, 199, 220, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi, Users!',
                    style: TextStyle(
                      color: Color.fromRGBO(2, 63, 116, 1),
                      fontSize: 30,
                      height: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Welcome To One Med',
                    style: TextStyle(
                      color: Color.fromRGBO(2, 63, 116, 1),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Healthy Together with One Med:\nRecord, Locate, and Prevent!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'What do you need?',
              style: TextStyle(
                color: Color.fromRGBO(2, 63, 116, 1),
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          //baris 1
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 1, right: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 110,
                              height: 110,
                              margin: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(137, 85, 85, 85),
                                    blurRadius: 1,
                                    spreadRadius: 1,
                                    offset: Offset(0, 5),
                                  ),
                                ],
                                image: const DecorationImage(
                                  image: AssetImage('assets/Check Up.png'),
                                ),
                              ),
                            ),
                            const SizedBox(
                                height: 8), // Spacer antara Container dan Text
                            const Text(
                              'Check Up',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 1, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 110,
                          height: 110,
                          margin: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(137, 85, 85, 85),
                                blurRadius: 1,
                                spreadRadius: 1,
                                offset: Offset(0, 5),
                              ),
                            ],
                            image: const DecorationImage(
                              image: AssetImage('assets/Shopping.png'),
                            ),
                          ),
                        ),
                        const SizedBox(
                            height: 8), // Spacer antara Container dan Text
                        const Text(
                          'Shopping',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),

          //baris 2
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 1, right: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 110,
                              height: 110,
                              margin: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(137, 85, 85, 85),
                                    blurRadius: 1,
                                    spreadRadius: 1,
                                    offset: Offset(0, 5),
                                  ),
                                ],
                                image: const DecorationImage(
                                  image: AssetImage('assets/Control.png'),
                                ),
                              ),
                            ),
                            const SizedBox(
                                height: 8), // Spacer antara Container dan Text
                            const Text(
                              'Control',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman yang diinginkan
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RawatPage()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 1, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 110,
                            height: 110,
                            margin: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(137, 85, 85, 85),
                                  blurRadius: 1,
                                  spreadRadius: 1,
                                  offset: Offset(0, 5),
                                ),
                              ],
                              image: const DecorationImage(
                                image: AssetImage('assets/Rawat Inap.png'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ), // Spacer antara Container dan Text
                          const Text(
                            'Rawat Inap',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),

          //baris 3
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 1, right: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 110,
                              height: 110,
                              margin: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(137, 85, 85, 85),
                                    blurRadius: 1,
                                    spreadRadius: 1,
                                    offset: Offset(0, 5),
                                  ),
                                ],
                                image: const DecorationImage(
                                  image: AssetImage('assets/Rawat Jalan.png'),
                                ),
                              ),
                            ),
                            const SizedBox(
                                height: 8), // Spacer antara Container dan Text
                            const Text(
                              'Rawat Jalan',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 1, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 110,
                          height: 110,
                          margin: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(137, 85, 85, 85),
                                blurRadius: 1,
                                spreadRadius: 1,
                                offset: Offset(0, 5),
                              ),
                            ],
                            image: const DecorationImage(
                              image: AssetImage('assets/Riwayat Kesehatan.png'),
                            ),
                          ),
                        ),
                        const SizedBox(
                            height: 8), // Spacer antara Container dan Text
                        const Text(
                          'Riwayat Kesehatan',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),

          //baris 4
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 1, right: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 110,
                              height: 110,
                              margin: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(137, 85, 85, 85),
                                    blurRadius: 1,
                                    spreadRadius: 1,
                                    offset: Offset(0, 5),
                                  ),
                                ],
                                image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/Panggilan Darurat.png'),
                                ),
                              ),
                            ),
                            const SizedBox(
                                height: 8), // Spacer antara Container dan Text
                            const Text(
                              'Panggilan Darurat',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 1, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 110,
                          height: 110,
                          margin: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(137, 85, 85, 85),
                                blurRadius: 1,
                                spreadRadius: 1,
                                offset: Offset(0, 5),
                              ),
                            ],
                            image: const DecorationImage(
                              image: AssetImage('assets/Konsultasi Online.png'),
                            ),
                          ),
                        ),
                        const SizedBox(
                            height: 8), // Spacer antara Container dan Text
                        const Text(
                          'Konsultasi Online',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),

          Row(
            children: [Container()],
          )
        ],
      ),
    );
  }
}
