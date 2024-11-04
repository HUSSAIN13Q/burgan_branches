//import 'package:burgan_branches/branches.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'branch.dart';

class BurganBankBranches extends StatelessWidget {
  List<Branch> branches = [
    Branch(
      name: 'Head Office',
      area: 'Sharq',
      address: 'Sharq, Kuwait City',
      openingHours: 'Sun-Thu: 8:00 AM - 3:00 PM',
      imageUrl: 'asset/image/HQ.jpeg',
      contactDetails: 'Phone: +965 2224 8225',
      services: 'Personal Banking, Corporate Banking, ATM',
      latitude: 29.378586,
      longitude: 47.990341,
    ),
    Branch(
      name: 'Avenues Branch',
      area: 'Al Rai',
      address: 'Avenues Mall, Al Rai',
      openingHours: 'Sun-Thu: 10:00 AM - 10:00 PM',
      imageUrl: 'asset/image/AvenuesBranch.jpeg',
      contactDetails: 'Phone: +965 2224 8226',
      services: 'Personal Banking, ATM',
      latitude: 29.3375,
      longitude: 47.9178,
    ),
    Branch(
      name: 'Salmiya Branch',
      area: 'Salmiya',
      address: 'Salem Al Mubarak St, Salmiya',
      openingHours: 'Sun-Thu: 8:30 AM - 3:00 PM',
      imageUrl: 'asset/image/SalmiyaBranch.jpeg',
      contactDetails: 'Phone: +965 2224 8227',
      services: 'Personal Banking, ATM',
      latitude: 29.333928,
      longitude: 48.079574,
    ),
    Branch(
      name: 'Jabriya Branch',
      area: 'Jabriya',
      address: 'Block 12, Jabriya',
      openingHours: 'Sun-Thu: 8:30 AM - 3:00 PM',
      imageUrl: 'asset/image/JabriyaBranch.jpeg',
      contactDetails: 'Phone: +965 2224 8228',
      services: 'Personal Banking, Corporate Banking, ATM',
      latitude: 29.3315,
      longitude: 48.0387,
    ),
    Branch(
      name: 'Fahaheel Branch',
      area: 'Fahaheel',
      address: 'Fahaheel, Block 7',
      openingHours: 'Sun-Thu: 8:30 AM - 3:00 PM',
      imageUrl: 'asset/image/Fahaheel Branch.jpeg',
      contactDetails: 'Phone: +965 2224 8229',
      services: 'Personal Banking, ATM',
      latitude: 29.082826,
      longitude: 48.133988,
    ),
    Branch(
      name: 'Farwaniya Branch',
      area: 'Farwaniya',
      address: 'Farwaniya Block 4, Street 105',
      openingHours: 'Sun-Thu: 8:30 AM - 3:00 PM',
      imageUrl: 'asset/image/FarwaniyaBranch.jpg',
      contactDetails: 'Phone: +965 2224 8230',
      services: 'Personal Banking, ATM',
      latitude: 29.2773,
      longitude: 47.9586,
    ),
    Branch(
      name: 'Hawalli Branch',
      area: 'Hawalli',
      address: 'Hawalli Block 6, Beirut Street',
      openingHours: 'Sun-Thu: 8:30 AM - 3:00 PM',
      imageUrl: 'asset/image/HawalliBranch.JPG',
      contactDetails: 'Phone: +965 2224 8231',
      services: 'Personal Banking, Corporate Banking, ATM',
      latitude: 29.3332,
      longitude: 48.0315,
    ),
    Branch(
      name: 'Ahmadi Branch',
      area: 'Ahmadi',
      address: 'Block 1, Ahmadi, Kuwait',
      openingHours: 'Sun-Thu: 8:30 AM - 3:00 PM',
      imageUrl: 'asset/image/AhmadiBranch.jpg',
      contactDetails: 'Phone: +965 2224 8232',
      services: 'Personal Banking, ATM',
      latitude: 29.0819,
      longitude: 48.0822,
    ),
    Branch(
      name: 'Mishref Branch',
      area: 'Mishref',
      address: 'Mishref, Block 4, Kuwait',
      openingHours: 'Sun-Thu: 8:30 AM - 3:00 PM',
      imageUrl: 'asset/image/MishrefBranch.jpeg',
      contactDetails: 'Phone: +965 2224 8233',
      services: 'Personal Banking, ATM',
      latitude: 29.2846,
      longitude: 48.0473,
    ),
    Branch(
      name: 'Adailiya Branch',
      area: 'Adailiya',
      address: 'Adailiya, Block 3, Kuwait',
      openingHours: 'Sun-Thu: 8:30 AM - 3:00 PM',
      imageUrl: 'asset/image/AdailiyaBranch.jpeg',
      contactDetails: 'Phone: +965 2224 8234',
      services: 'Personal Banking, ATM',
      latitude: 29.3336,
      longitude: 47.9819,
    ),
    Branch(
      name: 'Sabah Al-Salem Branch',
      area: 'Sabah Al-Salem',
      address: 'Sabah Al-Salem, Block 2, Kuwait',
      openingHours: 'Sun-Thu: 8:30 AM - 3:00 PM',
      imageUrl: 'asset/image/SalmiyaBranch.jpeg',
      contactDetails: 'Phone: +965 2224 8235',
      services: 'Personal Banking, ATM',
      latitude: 29.2261,
      longitude: 48.0784,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Burgan Bank Branches'),
      ),
      body: ListView.builder(
        itemCount: branches.length,
        itemBuilder: (context, index) {
          final branch = branches[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(branch.imageUrl),
              radius: 30,
            ),
            title: Text(branch.name),
            subtitle: Text(branch.area),
            onTap: () {
              context.push('/branch:${branch.name}', extra: branch);
            },
          );
        },
      ),
    );
  }
}

class BranchDetailPage extends StatelessWidget {
  final Branch branch;

  BranchDetailPage({required this.branch});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          branch.name,
          style: const TextStyle(
            color: Color.fromARGB(255, 247, 247, 247),
          ),
        ),
        backgroundColor: const Color(0xFF0033A0),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                branch.imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 16),

            // Display address
            Text(
              "Address: ${branch.address}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0033A0),
              ),
            ),

            const SizedBox(height: 16),

            // Display static map from a network URL
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.network(
                branch.mapImageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 16),

            // Display opening hours
            Text(
              "Opening Hours: ${branch.openingHours}",
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 8),

            // Display contact details
            Text(
              "Contact Details: ${branch.contactDetails}",
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 8),

            // Display services
            Text(
              "Services: ${branch.services}",
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFF0F4F8),
    );
  }
}
