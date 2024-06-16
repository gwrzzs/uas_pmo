import 'package:flutter/material.dart';
import 'package:uts_pmo/Dashboard.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One Med',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color.fromARGB(255, 4, 218, 114),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(0, 199, 220, 1),
          title: const Text(''),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 350,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 0, 199, 220),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/Logo.png"),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(209, 247, 224, 224),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Image.asset("assets/Information.png"),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Information",
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(209, 247, 224, 224),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Image.asset("assets/Hotline.png"),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Hotline",
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(209, 247, 224, 224),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Image.asset("assets/P3K.png"),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "P3K",
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(209, 247, 224, 224),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Image.asset("assets/News.png"),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "NEWS",
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Sign In',
              style: TextStyle(
                color: Color.fromRGBO(2, 63, 116, 1),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            
            SizedBox(
              width: 400, // Lebar kotak input ID dan Password
              child: TextField(
                
                decoration: InputDecoration(
                  
                  labelText: 'ID',
                  hintText: 'Enter your ID',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50), // Rounded border
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50), // Rounded border
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 400,
              child: TextField(
                obscureText: true, // Untuk membuat password tersembunyi
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50), // Rounded border
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50), // Rounded border
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 400, // Mengisi lebar maksimum
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Navigasi ke halaman dashboard
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Dashboard(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color.fromRGBO(0, 199, 220, 1), // Warna biru
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50), // Rounded button
                  ),
                ),
                child: const Text(
                  'Log In',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Or Log In with',
              style: TextStyle(
                color: Color.fromRGBO(2, 63, 116, 1),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    // Action when Google icon is tapped
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Lingkaran
                      border: Border.all(color: Colors.black),
                      color: Colors.white,
                    ),
                    child: Image.asset("assets/google.png"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Action when Facebook icon is tapped
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Lingkaran
                      border: Border.all(color: Colors.black),
                      color: Colors.white,
                    ),
                    child: Image.asset("assets/facebook.png"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Action when Apple icon is tapped
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Lingkaran
                      border: Border.all(color: Colors.black),
                      color: Colors.white,
                    ),
                    child: Image.asset("assets/apple.png"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Have an account? ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Action when Sign In text is tapped
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
