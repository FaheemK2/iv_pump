import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Pages/comments_page.dart';
//import 'Pages/medication_page.dart';
import 'Pages/analytics_page.dart';
import 'Pages/patient_info_page.dart';
import 'Pages/device_page.dart';
import 'Pages/upload_page.dart';
import 'Pages/help_page.dart';
import 'Pages/contact_page.dart';
import 'Pages/detail_page.dart';
import 'Pages/flow_rates_page.dart';







void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme
                  .of(context)
                  .primaryColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text('Hello Dr.Page!', style: Theme
                      .of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(
                      color: Colors.white
                  )),
                  subtitle: Text('Good Morning', style: Theme
                      .of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(
                      color: Colors.white54
                  )),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/user.JPG'),
                  ),
                ),
                const SizedBox(height: 30)
              ],
            ),
          ),
          Container(
            color: Theme
                .of(context)
                .primaryColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(200)
                  )
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  itemDashboard('Medication', CupertinoIcons.waveform_circle,
                      Colors.deepOrange),
                  itemDashboard(
                      'Analytics', CupertinoIcons.graph_circle, Colors.green),
                  itemDashboard(
                      'Patient Info.', CupertinoIcons.person_2, Colors.purple),
                  itemDashboard(
                      'Comments', CupertinoIcons.heart_solid, Colors.red),
                  itemDashboard(
                      'Device', CupertinoIcons.bluetooth, Colors.indigo),
                  itemDashboard(
                      'Upload', CupertinoIcons.add_circled, Colors.teal),
                  itemDashboard(
                      'Help', CupertinoIcons.question_circle, Colors.blue),
                  itemDashboard(
                      'Contact', CupertinoIcons.phone, Colors.pinkAccent),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }

  Widget itemDashboard(String title, IconData iconData, Color background) {
    return InkWell(
      onTap: () {
        MaterialPageRoute<dynamic> route;
        switch (title) {
          case 'Medication':
            route =
                MaterialPageRoute(builder: (context) => const FlowRatesPage());
            break;
          case 'Analytics':
            route =
                MaterialPageRoute(builder: (context) => const AnalyticsPage());
            break;
          case 'Patient Info.':
            route = MaterialPageRoute(
                builder: (context) => const PatientInfoPage());
            break;
          case 'Comments':
            route =
                MaterialPageRoute(builder: (context) => const CommentsPage());
            break;
          case 'Device':
            route = MaterialPageRoute(builder: (context) => const DevicePage());
            break;
          case 'Upload':
            route = MaterialPageRoute(builder: (context) => const UploadPage());
            break;
          case 'Help':
            route = MaterialPageRoute(builder: (context) => const HelpPage());
            break;
          case 'Contact':
            route =
                MaterialPageRoute(builder: (context) => const ContactPage());
            break;
          default:
            route = MaterialPageRoute(
                builder: (context) => DetailPage(title: title));
            break;
        }
        Navigator.of(context).push(route);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              color: Theme
                  .of(context)
                  .primaryColor
                  .withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: background,
                shape: BoxShape.circle,
              ),
              child: Icon(iconData, color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(title.toUpperCase(), style: Theme
                .of(context)
                .textTheme
                .titleMedium),
          ],
        ),
      ),
    );
  }


}
