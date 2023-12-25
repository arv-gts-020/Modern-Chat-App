import 'package:chat_app/utils/constants/app_constants.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.8),
      body:  Center(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Lottie.asset("assets/animations/chat-animation.json"),
                       const SizedBox(height: 20,),
                         const Text(AppConstants.appName,
                          
                          style: TextStyle(fontFamily: "poppins",
                           fontSize: 20,
                           color: Colors.white
                          ),)
                        ],
                       ),
              ),
               const Padding(
                padding: EdgeInsets.fromLTRB(25,15,25,15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start
                  ,children: [
                  Text("Log In",
                
                  style: TextStyle(fontFamily: "poppins",
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  
                
                  ),),
                  Text("Please Sign in to Continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300
                  ),)
                ],),
              ),
          
                 Expanded(
                   child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                               
                               color: Theme.of(context).colorScheme.background,
                               borderRadius: const BorderRadius.vertical(top: Radius.circular(40))
                               
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25,15,25,25),
                      child: SingleChildScrollView(
                        child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Enter Email",style: TextStyle(
                                   fontFamily: "poppins",
                                   fontWeight: FontWeight.w500,
                                   color: Theme.of(context).colorScheme.onBackground 
                                 ),),
                                 const SizedBox(
                                   height: 8,
                                 ),
                                 CustomTextField(controller: _emailController, prefixIcon: Icons.mail, suffixIcon: Icons.arrow_right, hintText: "Enter Your Phone Number", isSuffixIconVisible: false,),
                                  
                                 const SizedBox(height: 20,),
                                 Text("Enter Password",style: TextStyle(
                                   fontFamily: "poppins",
                                   fontWeight: FontWeight.w500,
                                   color: Theme.of(context).colorScheme.onBackground 
                                 ),),
                                 const SizedBox(
                                   height: 8,
                                 ),
                                  CustomTextField(controller: _passwordController, prefixIcon: Icons.lock, suffixIcon: Icons.visibility_off, hintText: "Enter Your Password", isSuffixIconVisible: true),
                                  const SizedBox(height: 11,),
                                   Row(
                                    children: [
                                      Icon(Icons.check_box_outline_blank,
                                      
                                      color: Theme.of(context).colorScheme.primary.withOpacity(0.5),),
                              
                                      const SizedBox(width:8),
                                      Text(
                                        "Remember me",
                              
                                        style: TextStyle(
                                          fontFamily: "poppins",
                                          color: Theme.of(context).colorScheme.onBackground
                                        ),
                                      ),
                              
                                      const Spacer(),
                                      Text(
                                        "Forgot Password",
                              
                                        style: TextStyle(
                                          fontFamily: "poppins",
                                          color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5)
                                        ),
                                      ),
                                    ],
                                  ),
                                  
                               ],
                              ),
                            ),

                            CustomButton(width: double.infinity, onPressed: (){}, btnTitle: "Log In", bgColor: Theme.of(context).colorScheme.primary, fgColor: Colors.white, height: 50)
                          ],
                        ),
                      ),
                    ),
                   ),
                 )
            ],
          ),
        ),
      ),
    );
  }
}