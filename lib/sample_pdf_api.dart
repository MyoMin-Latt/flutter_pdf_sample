import 'dart:io';
import 'dart:typed_data';

import 'package:pdf/widgets.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import 'save_and_open_file.dart';

class SamplePdfApi {
  static Future<File> generateSampleTextPDF(String text, String text2) async {
    // final Uint8List fontData =
    //     File('assets/fonts/OpenSans-Regular.ttf').readAsBytesSync();
    // final ttf = pw.Font.ttf(fontData.buffer.asByteData());
    // final font = await PdfGoogleFonts.nunitoExtraLight();
    final ttf =
        await fontFromAssetBundle('assets/fonts/Pyidaungsu-2.5.3_Regular.ttf');
    final font = await fontFromAssetBundle('assets/fonts/OpenSans-Regular.ttf');
    // final font = await PdfGoogleFonts.notoSansMyanmarRegular();
    // final font = await PdfGoogleFonts.notoSansMyanmarRegular();

    final pdf = Document();

    pdf.addPage(Page(
      build: (context) => Center(
        child: Column(
          children: [
            Text(text, style: const TextStyle(fontSize: 48)),
            Text(text2, style: const TextStyle(fontSize: 48)),
            Text('Unicode', style: const TextStyle(fontSize: 24)),
            Text(
              "သီဟိုဠ်မှ ဉာဏ်ကြီးရှင်သည် အာယုဝဍ္ဎနဆေးညွှန်းစာကို ဇလွန်ဈေးဘေး ဗာဒံပင်ထက် အဓိဋ္ဌာန်လျက် ဂဃနဏဖတ်ခဲ့သည်။",
              style: TextStyle(font: ttf, fontSize: 20),
            ),
            Text("Zawgyi", style: const TextStyle(fontSize: 24)),
            Text(
              'သီဟိုဠ္မွ ဉာဏ္ႀကီးရွင္သည္ အာယုဝၯနေဆးၫႊန္းစာကို ဇလြန္ေဈးေဘး ဗာဒံပင္ထက္ အဓိ႒ာန္လ်က္ ဂဃနဏဖတ္ခဲ့သည္။',
              style: TextStyle(font: ttf, fontSize: 20),
            ),
            Text('Unicode', style: const TextStyle(fontSize: 24)),
            Text(
              "သီဟိုဠ်မှ ဉာဏ်ကြီးရှင်သည် အာယုဝဍ္ဎနဆေးညွှန်းစာကို ဇလွန်ဈေးဘေး ဗာဒံပင်ထက် အဓိဋ္ဌာန်လျက် ဂဃနဏဖတ်ခဲ့သည်။",
              style: TextStyle(font: font, fontSize: 20),
            ),
            Text("Zawgyi", style: const TextStyle(fontSize: 24)),
            Text(
              'သီဟိုဠ္မွ ဉာဏ္ႀကီးရွင္သည္ အာယုဝၯနေဆးၫႊန္းစာကို ဇလြန္ေဈးေဘး ဗာဒံပင္ထက္ အဓိ႒ာန္လ်က္ ဂဃနဏဖတ္ခဲ့သည္။',
              style: TextStyle(font: font, fontSize: 20),
            ),
          ],
        ),
      ),
    ));
    return SaveAndOpenDocument.savePdf(name: "simple_pdf.pdf", pdf: pdf);
  }
}
