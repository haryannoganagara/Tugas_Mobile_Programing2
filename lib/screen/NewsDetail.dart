// ignore_for_file: file_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:aplikasi_berita_mp2/theme.dart';

class NewsDetail extends StatelessWidget {
  const NewsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        toolbarHeight: 80.0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "GONews",
              style: titleText,
            ),
            Text(
              "Kumpulan berita harian di Indonesia",
              style: subTitle,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.white.withOpacity(0.7),
                  ),
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        // margin: EdgeInsets.only(right: 10),
        padding: const EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: ClipRRect(
                  child: Image.network(
                    "https://akcdn.detik.net.id/visual/2022/11/27/warga-korban-gempa-cianjur-mulai-menyelamatkan-barang-13_169.jpeg?w=650&q=90",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "CNN Indonesia",
                    style: subTitle,
                  ),
                  Text(
                    "Kamis, 01 Des 2022",
                    style: subTitle,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "14.490 Rumah Rusak Tahap I Akan Segera Dibangun",
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Flexible(
                    child: Text(
                      "Jakarta, CNN Indonesia -- Menteri Koordinator Bidang Pembangunan Manusia dan Kebudayaan (Menko PMK) Muhadjir Effendy merinci sebanyak 14.490 rumah yang rusak imbas bencana gempa bumi di Cianjur terverifikasi dan akan dibangun oleh pemerintah. ",
                      maxLines: 6,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Flexible(
                    child: Text(
                      "Hal itu disampaikan berdasarkan data BNPB per 29 November lalu.",
                      maxLines: 6,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Flexible(
                    child: Text(
                      "Sebanyak 14.490 rumah yang terdata kerusakannya dan telah diverifikasi oleh pihak BNPB. Sementara ini, kata Kepala BNPB data dikunci untuk gelombang pertama proses pembangunan hunian oleh BNPB, Pemda, dan Kementerian PUPR,"
                      "ujar Muhadjir dalam keterangannya dikutip Kamis (1/12).",
                      maxLines: 6,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Flexible(
                    child: Text(
                      "Data dikunci sementara. Biar tidak tumpang tindih data akan difinalisasi jadi ini kita anggap sebagai batch 1. Sudah kita tutup nanti kemudian kita lanjutkan batch 2,"
                      "tambahnya.",
                      maxLines: 6,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
