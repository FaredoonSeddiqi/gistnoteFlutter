import 'package:flutter/material.dart';

class PersonListScreen extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'name': 'John Doe',
      'date': 'June 23, 2023',
      'nickname': 'JD',
      'age': '30',
      'dob': 'January 1, 1993',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              headingTextStyle: TextStyle(fontWeight: FontWeight.bold),
              columns: [
                DataColumn(label: Text('Field')),
                DataColumn(label: Text('Value')),
              ],
              rows: items
                  .map((item) => DataRow(
                        cells: [
                          DataCell(Text('Name')),
                          DataCell(Text(item['name'] ?? '-')),
                        ],
                      ))
                  .toList(),
            ),
          ),
          SizedBox(height: 16),
          DataTable(
            headingTextStyle: TextStyle(fontWeight: FontWeight.bold),
            columns: [
              DataColumn(label: Text('Field')),
              DataColumn(label: Text('Value')),
            ],
            rows: [
              for (final item in items)
                DataRow(
                  cells: [
                    DataCell(Text('Date')),
                    DataCell(Text(item['date'] ?? '-')),
                  ],
                ),
            ],
          ),
          SizedBox(height: 16),
          DataTable(
            headingTextStyle: TextStyle(fontWeight: FontWeight.bold),
            columns: [
              DataColumn(label: Text('Field')),
              DataColumn(label: Text('Value')),
            ],
            rows: [
              for (final item in items)
                DataRow(
                  cells: [
                    DataCell(Text('Nickname')),
                    DataCell(Text(item['nickname'] ?? '-')),
                  ],
                ),
            ],
          ),
          SizedBox(height: 16),
          DataTable(
            headingTextStyle: TextStyle(fontWeight: FontWeight.bold),
            columns: [
              DataColumn(label: Text('Field')),
              DataColumn(label: Text('Value')),
            ],
            rows: [
              for (final item in items)
                DataRow(
                  cells: [
                    DataCell(Text('Age')),
                    DataCell(Text(item['age'] ?? '-')),
                  ],
                ),
            ],
          ),
          SizedBox(height: 16),
          DataTable(
            headingTextStyle: TextStyle(fontWeight: FontWeight.bold),
            columns: [
              DataColumn(label: Text('Field')),
              DataColumn(label: Text('Value')),
            ],
            rows: [
              for (final item in items)
                DataRow(
                  cells: [
                    DataCell(Text('DOB')),
                    DataCell(Text(item['dob'] ?? '-')),
                  ],
                ),
            ],
          ),
        ],
      ),
    );
    //   body: ListView.builder(
    //     itemCount: items.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) {
    //       final item = items[index];
    //       return StickyHeader(
    //         header: Padding(
    //           padding: const EdgeInsets.all(8.0),
    //           child: Container(
    //             height: 40,
    //             color: Colors.tealAccent[300],
    //             padding: EdgeInsets.all(10),
    //             child: Text(
    //               item['label']!,
    //               style: TextStyle(
    //                 fontWeight: FontWeight.bold,
    //                 fontSize: 12,
    //               ),
    //             ),
    //           ),
    //         ),
    //         content: Container(
    //           child: Padding(
    //             padding: const EdgeInsets.all(8.0),
    //             child: Text(
    //               item['value']!,
    //               style: TextStyle(fontSize: 12),
    //             ),
    //           ),
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
