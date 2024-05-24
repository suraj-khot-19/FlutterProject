import 'package:flutter/material.dart';
import 'package:widget/utils/spacer.dart';
import 'package:widget/utils/string_manager.dart';
import 'package:widget/utils/text_style.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isToggled = false;

  void _toggleButton() {
    setState(() {
      isToggled = !isToggled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            color: Color.fromARGB(255, 147, 135, 28), fontSize: 30),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringManager().userName,
                style: AppTextStyle.heading,
              ),
              addVerticleSpace(20),
              const Text(
                "KYC Status",
                style: AppTextStyle.heading1,
              ),
              addVerticleSpace(10),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 190,
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.grey,
                        ),
                        bottom: BorderSide(
                          color: Colors.grey,
                        ),
                        right: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    child: const Center(
                        child: Text(
                      "Verify PAN",
                      style: AppTextStyle.hyperText,
                    )),
                  ),
                  Container(
                    height: 50,
                    width: 190,
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.grey,
                        ),
                        bottom: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    child: const Center(
                        child: Text(
                      "Verify Aadhaar",
                      style: AppTextStyle.hyperText,
                    )),
                  ),
                ],
              ),
              addGreySpacer(15),
              addVerticleSpace(20),
              const Text(
                "Basic Details",
                style: AppTextStyle.heading1,
              ),
              addVerticleSpace(20),
              Row(
                children: [
                  const Icon(Icons.phone),
                  addHorizontalSpace(10),
                  const Text(
                    "Phone Number",
                    style: AppTextStyle.subTitle,
                  )
                ],
              ),
              addVerticleSpace(10),
              Text(
                StringManager().userPhNumber,
                style: AppTextStyle.heading2,
              ),
              addVerticleSpace(10),
              Row(
                children: [
                  SizedBox(
                      height: 28,
                      width: 28,
                      child: Image.asset(
                        "assets/images/whatsapp.png",
                        fit: BoxFit.contain,
                      )),
                  addHorizontalSpace(5),
                  const Text("I would like to recive update on Whatsapp"),
                  addHorizontalSpace(30),
                  GestureDetector(
                    onTap: _toggleButton,
                    child: isToggled
                        ? const Icon(
                            Icons.toggle_on_outlined,
                            size: 30,
                            color: Colors.cyan,
                          )
                        : const Icon(
                            Icons.toggle_off_outlined,
                            size: 30,
                          ),
                  ),
                ],
              ),
              addVerticleSpace(10),
              const Divider(),
              //email
              Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.email_outlined),
                          addHorizontalSpace(10),
                          const Text(
                            "Email Address",
                            style: AppTextStyle.subTitle,
                          ),
                          addHorizontalSpace(200),
                          const Icon(
                            Icons.edit,
                            size: 25,
                            color: Colors.cyan,
                          )
                        ],
                      ),
                      addVerticleSpace(10),
                      Text(
                        StringManager().userEmail,
                        style: AppTextStyle.heading2,
                      ),
                      addVerticleSpace(10),
                      const Text(
                        "Verify Email ID",
                        style: AppTextStyle.hyperText,
                      ),
                    ]),
              ),
              addVerticleSpace(10),
              addGreySpacer(15),
              addVerticleSpace(10),
              //Withdrawal Method
              Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 25,
                            width: 25,
                            child: Image.asset(
                              "assets/images/bank.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                          addHorizontalSpace(10),
                          const Text(
                            "Withdrawal Method",
                            style: AppTextStyle.subTitle,
                          )
                        ],
                      ),
                      addVerticleSpace(10),
                      const Text(
                          "Add withdrawal account to get deposit of money at the times of selling"),
                      addVerticleSpace(10),
                      const Text(
                        "How to add Withdrawal Method?",
                        style: AppTextStyle.hyperText,
                      ),
                    ]),
              ),
              addVerticleSpace(10),
              addGreySpacer(15),
              addVerticleSpace(10),
              //pin
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.password_outlined),
                        addHorizontalSpace(10),
                        const Text(
                          "PIN Password",
                          style: AppTextStyle.subTitle,
                        ),
                      ],
                    ),
                    addVerticleSpace(10),
                    const Text(
                        "PIN Password for your profile is set successfully"),
                    addVerticleSpace(10),
                    const Text(
                      "Modify PIN",
                      style: AppTextStyle.hyperText,
                    ),
                  ],
                ),
              ),
              addVerticleSpace(10),
              addGreySpacer(15),
              addVerticleSpace(10),
              //address
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset(
                            "assets/images/address.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        addHorizontalSpace(10),
                        const Text(
                          "Addresses",
                          style: AppTextStyle.subTitle,
                        ),
                      ],
                    ),
                    addVerticleSpace(10),
                    const Text(
                        "Add your address to be able to order physical gold delivery"),
                    addVerticleSpace(10),
                    const Text(
                      "Add Address",
                      style: AppTextStyle.hyperText,
                    ),
                    addVerticleSpace(20)
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
