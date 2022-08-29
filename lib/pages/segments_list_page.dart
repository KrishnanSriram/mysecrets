import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:helloworld/pages/segment_details_page.dart';

class SegmentsListPage extends StatelessWidget {
  const SegmentsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: const Text("Secret's App")),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          Card(
              child: InkWell(
                  child: const ListTile(
                    title: Text("Financial"),
                    subtitle: Text(
                        "All financial info - bank, investment, insurance login details"),
                    leading: Icon(Icons.battery_full),
                  ),
                  onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SegemntDetailsPage(
                                    selectedTitle: "Financial")))
                      })),
          Card(
              child: InkWell(
                  child: const ListTile(
                    title: Text("Entertainment"),
                    subtitle: Text(
                        "Access to entertainment channels like Netflix, Disney+, Hulu, etc"),
                    leading: Icon(Icons.movie),
                  ),
                  onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SegemntDetailsPage(
                                    selectedTitle: "Entertainment")))
                      })),
          Card(
              child: InkWell(
                  child: const ListTile(
                    title: Text("Work"),
                    subtitle: Text(
                        "Previous employer details - Grange, IBM, CHase & Virtusa"),
                    leading: Icon(Icons.work),
                  ),
                  onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SegemntDetailsPage(selectedTitle: "Work")))
                      })),
          Card(
              child: InkWell(
                  child: const ListTile(
                    title: Text("Family"),
                    subtitle: Text("Details related to Indu & Avy"),
                    leading: Icon(Icons.family_restroom),
                  ),
                  onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SegemntDetailsPage(
                                    selectedTitle: "Family")))
                      })),
          Card(
              child: InkWell(
                  child: const ListTile(
                    title: Text("Parents"),
                    subtitle: Text(
                        "Details to all my parents and In-Law's information"),
                    leading: Icon(Icons.people),
                  ),
                  onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SegemntDetailsPage(
                                    selectedTitle: "Parents")))
                      })),
          Card(
              child: InkWell(
                  child: const ListTile(
                    title: Text("Utility"),
                    subtitle: Text(
                        "From house maintenance, plumber, water, electricity all links & logins"),
                    leading: Icon(Icons.satellite),
                  ),
                  onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SegemntDetailsPage(
                                    selectedTitle: "Utility")))
                      })),
          Card(
              child: InkWell(
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const SegemntDetailsPage(selectedTitle: "Temporary")))
            },
            child: const ListTile(
              title: Text("Temporary"),
              subtitle:
                  Text("All other information that are more of temporary kind"),
              leading: Icon(Icons.invert_colors),
            ),
          )),
        ],
      ),
    ));
  }
}