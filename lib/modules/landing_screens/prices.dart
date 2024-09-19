import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lawyermanagement/layout/cubit/cubit.dart';
import 'package:lawyermanagement/layout/cubit/states.dart';
import 'package:lawyermanagement/modules/landing_screens/register.dart';

class PricesScreen extends StatelessWidget {
  const PricesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WebCubit(),
      child: BlocConsumer<WebCubit, WebStates>(
        builder: (context, state) => Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blueGrey[100]!, // Light gradient start
                Colors.blueGrey[700]!, // Darker gradient end
              ],
              begin:
                  Alignment.topLeft, // Direction from top-left to bottom-right
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
                  // Header image section
                  Container(
                    width: double.infinity,
                    height: 650,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://www.opleg.com/en/images/site/prices/intro.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color:
                              Colors.black.withOpacity(0.4), // Add dark overlay
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: Text(
                          'Prices',
                          style: TextStyle(
                            fontFamily: 'Montserrat', // Elegant font
                            fontWeight: FontWeight.w900,
                            fontSize: 50,
                            color: Colors.yellowAccent, // Softer color tone
                            shadows: [
                              Shadow(
                                offset: Offset(3.0, 3.0),
                                blurRadius: 5.0,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 40),

                  // Subscription card
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            'Monthly Subscription',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1.5,
                          color: Colors.black26,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            '1000 EGP',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                        Text(
                          'Per Month For User',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        ),
                        Spacer(),

                        // "Start Now" Button
                        MaterialButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 40),
                          color: Colors.teal,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterScreen()));
                          },
                          child: Text(
                            'Start Now',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                              letterSpacing: 1.2,
                            ),
                          ),
                          elevation: 5.0,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 40),

                  // Footer Section
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
        ),
        listener: (context, state) {},
      ),
    );
  }
}
