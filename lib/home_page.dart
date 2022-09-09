import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectIndex = 0;
  final List<String> name = [
    "Samsung",
    "Apple",
    "Oppo",
    "Infinix",
    "One plus",
    "vivo",
    "Huawei",
    "Nokia",
    "xiaomi",
  ];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: screenSize.height * 0.02),
          child: Text(
            "Select Company",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: screenSize.height * 0.01),
          child: Text("Now chose the right company for your ad:"),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: screenSize.height * 0.01,
              bottom: screenSize.height * 0.01,
              left: screenSize.width * 0.03,
              right: screenSize.width * 0.03,
          ),
          child: InkWell(
            onTap: () {},
            child: Container(
              height: screenSize.height * 0.06,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  Icon(Icons.search),
                  Text("What Company are you looking for?"),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: screenSize.height * 0.62,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: name.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  setState(() {
                    selectIndex = index;
                  });
                },
                title: Text(
                  name[index].toString(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(
                  Icons.done,
                  color:
                      selectIndex == index ? Colors.blue : Colors.transparent,
                ),
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: screenSize.width * 0.03, right: screenSize.width * 0.03),
          child: InkWell(
            onTap: () {},
            child: Container(
              height: screenSize.height * 0.07,
              width: screenSize.width * 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  "Confirm",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
