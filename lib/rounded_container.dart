library rounded_container;

import 'package:flutter/material.dart';

import 'constants/colors.dart';

export 'package:rounded_container/rounded_container.dart';

class RoundedContainer extends StatefulWidget {
  const RoundedContainer({Key? key}) : super(key: key);

  @override
  State<RoundedContainer> createState() => _RoundedContainerState();
}

class _RoundedContainerState extends State<RoundedContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  color: KColors.kGrey,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRN1TxWGPfaC1jI69SN_CQoGz9rFgX1rRHhDQ&usqp=CAU",
                    errorBuilder: (context, error, stackTrace) => Center(
                      child: Text("$error"),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: SizedBox(
                  width: 180,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "3 Story Office",
                        style: TextStyle(
                          color: KColors.kHeadingColour,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Inter',
                          fontSize: 12,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "\$267000",
                        style: TextStyle(
                          color: KColors.kBlue,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Inter',
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: SizedBox(
                  width: 180,
                  child: Row(
                    children: [
                      Text(
                        "2000sqft",
                        style: TextStyle(
                          color: KColors.kBorderColor,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                          fontSize: 10,
                        ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.person_outline_outlined,
                              size: 12, color: KColors.kOrange),
                          Text(
                            "25",
                            style: TextStyle(
                              color: KColors.kBorderColor,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
