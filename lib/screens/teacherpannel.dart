import 'package:flutter/material.dart';
import 'package:ielts/utils/app_constants.dart';
import 'package:url_launcher/url_launcher.dart';

class TutorRequirementsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal, // Setting background color
        title: Text(
          'Tutor Requirements',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        elevation: 0, // Removing elevation
        centerTitle: true, // Centering the title
      ),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.pushReplacementNamed(context, RoutePaths.home);
          return Future.value(true);
        },
        child: SingleChildScrollView(
          padding: EdgeInsets.all(31.0),
          child: _buildRequirementContainer(context),
        ),
      ),
    );
  }

  Widget _buildRequirementContainer(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      padding: EdgeInsets.all(25.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 6,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              'Tutor Requirements',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          _buildRequirementItem('1. Name'),
          _buildRequirementItem(
              '2. Short Description (Include degree and years of experience)'),
          _buildRequirementItem('3. Long Description'),
          _buildRequirementItem('4. Price Range: \$35 - \$100 USD'),
          _buildRequirementItem('5. Profile Picture'),
          _buildRequirementItem('6. Short Video (1 to 2 minutes)'),
          _buildRequirementItem(
              '7. Number of Live Classes per Month: 8 (2 per week)'),
          SizedBox(height: 40.0),
          ElevatedButton(
            onPressed: () {
              _redirectToWhatsApp();
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.teal,
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: Text(
              'Contact via WhatsApp',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }

  Widget _buildRequirementItem(String itemText) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        width: double.infinity,
        child: Text(
          itemText,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }

  void _redirectToWhatsApp() async {
    String whatsappUrl = "https://wa.me/+919612052091";
    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      throw 'Could not launch WhatsApp';
    }
  }

  void _shareContactNumber(String phoneNumber) {
    // Implement contact number sharing functionality
  }
}

void main() {
  runApp(MaterialApp(
    home: TutorRequirementsScreen(),
  ));
}
