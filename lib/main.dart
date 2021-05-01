import 'package:flutter/material.dart';
import 'package:materi_provider/jenis_kelamin.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<JenisProvider>(
      create: (context) => JenisProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // untuk consumer set data
                Consumer<JenisProvider>(
                  builder: (context, jenisProvider, _) => Text(
                    "Pilih Jenis Kemin",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: jenisProvider.color),
                  ),
                ),

                Consumer<JenisProvider>(
                  builder: (context, jenisProvider, _) => Text(
                   'Pilihan  Anda  ' + jenisProvider.jenis,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: jenisProvider.color),
                  ),
                ),

                SizedBox(
                  height: 50,
                ),

                Row(
                  children: [
                    Expanded(
                      child: Consumer<JenisProvider>(
                        builder: (context, jenisProvider, _) => GestureDetector(
                          onTap: () {
                            jenisProvider.isKelamin = true;
                          },
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: jenisProvider.laki,
                                ),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/laki.png',
                                  height: 80,
                                  color: jenisProvider.laki,
                                ),
                                Text(
                                  'Laki-Laki',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: jenisProvider.laki,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Consumer<JenisProvider>(
                        builder: (context, jenisProvider, _) => GestureDetector(
                          onTap: () {
                            jenisProvider.isKelamin = false;
                          },
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: jenisProvider.peremuan,
                                ),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/perempuan.png',
                                  height: 80,
                                  color: jenisProvider.peremuan,
                                ),
                                Text(
                                  'Perempuan',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: jenisProvider.peremuan,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
