import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lawyermanagement/modules/landing_screens/register.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blueGrey[100]!, // Light gradient start
            Colors.blueGrey[700]!, // Darker gradient end
          ],
          begin: Alignment.topLeft, // Direction from top-left to bottom-right
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: Offset(0, 4), // Slight shadow for depth
          ),
        ],
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Padding(
              //   padding: const EdgeInsets.only(left: 100),
              //   child: Row(
              //     children: [
              //       Row(
              //         children: [
              //           const Text(
              //             'Contact us',
              //             style: TextStyle(
              //               fontWeight: FontWeight.w700,
              //               fontSize: 15,
              //               color: Colors.black,
              //             ),
              //           ),
              //           const SizedBox(width: 15),
              //           Container(
              //             width: 2,
              //             height: 20,
              //             color: Colors.black,
              //           ),
              //           const SizedBox(width: 15),
              //           InkWell(
              //             onTap: () {},
              //             hoverColor: Colors.grey[200],
              //             hoverDuration: const Duration(milliseconds: 500),
              //             child: const CircleAvatar(
              //               backgroundColor: Colors.black,
              //               child: FaIcon(
              //                 FontAwesomeIcons.twitter,
              //                 color: Colors.blue,
              //                 size: 20,
              //               ),
              //             ),
              //           ),
              //           const SizedBox(width: 10),
              //           InkWell(
              //             onTap: () {},
              //             hoverColor: Colors.grey[200],
              //             hoverDuration: const Duration(milliseconds: 500),
              //             child: CircleAvatar(
              //               backgroundColor: Colors.black,
              //               child: FaIcon(
              //                 FontAwesomeIcons.facebook,
              //                 color: Colors.blue[800],
              //                 size: 20,
              //               ),
              //             ),
              //           ),
              //           const SizedBox(width: 10),
              //           InkWell(
              //             onTap: () {},
              //             hoverColor: Colors.grey[200],
              //             hoverDuration: const Duration(milliseconds: 500),
              //             child: const CircleAvatar(
              //               backgroundColor: Colors.black,
              //               child: FaIcon(
              //                 FontAwesomeIcons.instagram,
              //                 color: Colors.red,
              //                 size: 20,
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //       const Spacer(),
              //       Padding(
              //         padding: const EdgeInsets.only(right: 100),
              //         child: Row(
              //           children: [
              //             const FaIcon(
              //               Icons.mail,
              //               color: Colors.lightBlueAccent,
              //               size: 20,
              //             ),
              //             const SizedBox(width: 15),
              //             const Text(
              //               'w.oppo@gmail.com',
              //               style: TextStyle(
              //                 fontWeight: FontWeight.w700,
              //                 fontSize: 15,
              //                 color: Colors.black,
              //               ),
              //             ),
              //             const SizedBox(width: 15),
              //             InkWell(
              //               onTap: () {},
              //               child: const FaIcon(
              //                 FontAwesomeIcons.whatsapp,
              //                 color: Colors.green,
              //                 size: 20,
              //               ),
              //             ),
              //             const SizedBox(width: 15),
              //             Container(
              //               width: 2,
              //               height: 20,
              //               color: Colors.white54,
              //             ),
              //             const SizedBox(width: 15),
              //             InkWell(
              //               onTap: () {},
              //               child: const Row(
              //                 children: [
              //                   FaIcon(
              //                     FontAwesomeIcons.phone,
              //                     size: 20,
              //                     color: Colors.black,
              //                   ),
              //                   SizedBox(width: 15),
              //                   Text(
              //                     '+201116061728',
              //                     style: TextStyle(
              //                       fontWeight: FontWeight.w700,
              //                       fontSize: 15,
              //                       color: Colors.black,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Container(
                height: 600,
                width: double.infinity,
                padding: const EdgeInsets.all(100),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://www.opleg.com/images/site/home/intro.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Legal practice management software that actually helps firms',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'Easy To Use, Professional, Cloud Based Law Practice Management Software',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      width: 140,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.yellow[700],
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: MaterialButton(
                        hoverColor: Colors.teal[100],
                        hoverElevation: 5,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterScreen()));
                        },
                        child: const Text(
                          'Order Now',
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Column(
                children: [
                  Text(
                    '3 different areas in the system',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'They are designed to communicate ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    'between all parties to the case from anywhere.',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(60),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 450, // Set a fixed height for all
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          alignment: AlignmentDirectional.topStart,
                          decoration: BoxDecoration(
                            border: Border.all(
                                style: BorderStyle.solid,
                                color: Colors.blueAccent,
                                width: 0.8),
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.lightBlue[50],
                          ),
                          child: Column(
                            children: [
                              Center(
                                child: Image.network(
                                  'https://tse3.mm.bing.net/th?id=OIP.uomkpLp6YJKUpxcrZk6zdQHaHk&pid=Api&P=0&h=220',
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Align(
                                alignment: AlignmentDirectional.topStart,
                                child: Text(
                                  'Management Area',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 80,
                                height: 3,
                                color: Colors.blueAccent,
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'Manage the entire system, control all services and tasks such as quotes, invoices, and payments with ease.',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    Expanded(
                      child: SizedBox(
                        height: 450, // Same height
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          alignment: AlignmentDirectional.topStart,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                style: BorderStyle.solid,
                                color: Colors.green,
                                width: 0.8),
                            color: Colors.lightGreen[50],
                          ),
                          child: Column(
                            children: [
                              Center(
                                child: Image.network(
                                  'https://tse4.mm.bing.net/th?id=OIP.FMedmSO92dUU_0OXs5Fs5wHaHa&pid=Api&P=0&h=220',
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Align(
                                alignment: AlignmentDirectional.topStart,
                                child: Text(
                                  'Staff Area',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 80,
                                height: 3,
                                color: Colors.green,
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'Manage staff data, track employee performance, and handle employee requests efficiently.',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    Expanded(
                      child: SizedBox(
                        height: 450, // Same height
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          alignment: AlignmentDirectional.topStart,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                style: BorderStyle.solid,
                                color: Colors.orange,
                                width: 0.8),
                            color: Colors.orange[50],
                          ),
                          child: Column(
                            children: [
                              Center(
                                child: Image.network(
                                  'https://tse3.mm.bing.net/th?id=OIP.LpdNErdYL1plro9KoMPa0wHaH_&pid=Api&P=0&h=220',
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Align(
                                alignment: AlignmentDirectional.topStart,
                                child: Text(
                                  'Customers Area',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 80,
                                height: 3,
                                color: Colors.orange,
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'Manage customer interactions, follow up on requests, and add new customers easily.',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.yellow[600],
                    borderRadius: BorderRadius.circular(10)),
                child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                    },
                    child: const Text(
                      'Order now',
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.bold),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(80),
                // Reduced padding for a cleaner look
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Improved Title Font
                          Text(
                            'Easy and Integrated Control Panel',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              fontFamily: 'Poppins',
                              color:
                                  Colors.indigo[900], // Modern dark blue tone
                            ),
                          ),
                          const SizedBox(height: 20),

                          // Improved Body Text Font
                          Text(
                            'The control panel for managing the system, through which you can fully control the system by managing cases and services (quotes - invoices - payments - sent mail - other data), in addition to following up on requests for new cases and services and adding any new customer or employee.',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              color: Colors.grey[800],
                              height: 1.6,
                              // Improved line height for better readability
                              wordSpacing: 1.5,
                            ),
                          ),
                          const SizedBox(height: 30),

                          // Icon and Text Row with Improved Spacing
                          Row(
                            children: [
                              // Icon + Text Combination 1
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.indigo[100],
                                    ),
                                    child: Icon(
                                      FontAwesomeIcons.fileShield,
                                      size: 28,
                                      color: Colors.indigo[900],
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    'Upload Files',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 40),

                              // Icon + Text Combination 2
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.indigo[100],
                                    ),
                                    child: Icon(
                                      FontAwesomeIcons.code,
                                      size: 28,
                                      color: Colors.indigo[900],
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    'Code',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 40),

                              // Icon + Text Combination 3
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.indigo[100],
                                    ),
                                    child: Icon(
                                      FontAwesomeIcons.print,
                                      size: 28,
                                      color: Colors.indigo[900],
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    'Print Files',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 80),

                    // Image Section with slight resizing for better fit
                    Expanded(
                      child: Image.network(
                        'https://34sp.net/img/www/product/control-panel-hero.1.png',
                        width: 380,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Title with modern font
                          Text(
                            'Clients',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                              fontFamily: 'Poppins',
                              color: Colors.indigo[900], // Deep blue color
                            ),
                          ),
                          const SizedBox(height: 20),

                          // Body Text with improved readability
                          Text(
                            'On the Law Firm system, you can create a complete file for each client with information about them, the history of legal consultations and their cases, including all financial transactions and invoices. You can also add notes on each client, attach files, follow up on price offers, suggestions, invoices, and appoint lawyers for each client, tracking their performance in cases or consultations.',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              color: Colors.grey[800],
                              height: 1.6,
                              wordSpacing: 1.5,
                            ),
                          ),
                          const SizedBox(height: 30),

                          // Icon and Text Row with updated spacing and styling
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Icon + Text Combination 1
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.indigo[50],
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.indigo.withOpacity(0.2),
                                          spreadRadius: 2,
                                          blurRadius: 4,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      FontAwesomeIcons.fileShield,
                                      size: 30,
                                      color: Colors.indigo[800],
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Text(
                                    'Upload Files',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.indigo[800],
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 40),

                              // Icon + Text Combination 2
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.indigo[50],
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.indigo.withOpacity(0.2),
                                          spreadRadius: 2,
                                          blurRadius: 4,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      FontAwesomeIcons.code,
                                      size: 30,
                                      color: Colors.indigo[800],
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Text(
                                    'Code',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.indigo[800],
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 40),

                              // Icon + Text Combination 3
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.indigo[50],
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.indigo.withOpacity(0.2),
                                          spreadRadius: 2,
                                          blurRadius: 4,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      FontAwesomeIcons.print,
                                      size: 30,
                                      color: Colors.indigo[800],
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Text(
                                    'Print Files',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.indigo[800],
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 40),
                    // Image Section with updated width and alignment
                    Expanded(
                      child: Image.network(
                        'https://34sp.net/img/www/product/control-panel-hero.1.png',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blueGrey[800]!, Colors.blueGrey[600]!],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    // Navigation Buttons
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Terms of Use',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: 1,
                      height: 24,
                      color: Colors.white,
                    ),
                    SizedBox(width: 15),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Privacy Policy',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: 1,
                      height: 24,
                      color: Colors.white,
                    ),
                    SizedBox(width: 15),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Cookie Policy',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Spacer(),
                    // Contact and Social Media
                    Row(
                      children: [
                        Text(
                          'Contact Us',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          width: 2,
                          height: 24,
                          color: Colors.white,
                        ),
                        SizedBox(width: 15),
                        InkWell(
                          onTap: () {},
                          hoverColor: Colors.grey[700],
                          borderRadius: BorderRadius.circular(25),
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            child: FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Colors.blue,
                              size: 24,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        InkWell(
                          onTap: () {},
                          hoverColor: Colors.grey[700],
                          borderRadius: BorderRadius.circular(25),
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            child: FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Colors.blue[800],
                              size: 24,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        InkWell(
                          onTap: () {},
                          hoverColor: Colors.grey[700],
                          borderRadius: BorderRadius.circular(25),
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            child: FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Colors.red,
                              size: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
