import 'package:flutter/material.dart';

import 'sample_pdf_api.dart';
import 'save_and_open_file.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Text PDF")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  final samplePdfFile =
                      await SamplePdfApi.generateSampleTextPDF(
                          'Sample Text', 'Flutter Developer');
                  await SaveAndOpenDocument.openPdf(samplePdfFile);
                },
                child: const Text('Simple PDF')),
            ElevatedButton(
                onPressed: () {}, child: const Text('Paragraph PDF')),
            ElevatedButton(onPressed: () {}, child: const Text('Table PDF')),
            ElevatedButton(onPressed: () {}, child: const Text('Image PDF')),
          ],
        ),
      ),
    );
  }
}
