import 'package:flutter/material.dart';
import 'package:aplikasi_berita_mp2/pages/NewsTile.dart';
import 'package:aplikasi_berita_mp2/pages/Trending.dart';
import 'package:aplikasi_berita_mp2/theme.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
                  const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.book,
                    color: Colors.white.withOpacity(0.7),
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
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hot News",
                    style: subTitle.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: subTitle,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Trending(
                      imageURL:
                          "https://akcdn.detik.net.id/visual/2022/11/27/warga-korban-gempa-cianjur-mulai-menyelamatkan-barang-13_169.jpeg?w=650&q=90",
                      title: "14.490 Rumah Rusak Tahap I Akan Segera Dibangun",
                      author: "CNN Indonesia",
                      time: "Kamis, 01 Des 2022",
                    ),
                    Trending(
                      imageURL:
                          "https://akcdn.detik.net.id/visual/2022/12/06/maroko-vs-spanyol-di-piala-dunia-2022-2_169.jpeg?w=1200&q=80",
                      title:
                          "Daftar 8 Tim Lolos ke Perempat Final Piala Dunia 2022",
                      author: "CNN Indonesia",
                      time: "Rabu, 07 Des 2022",
                    ),
                    Trending(
                      imageURL:
                          "https://akcdn.detik.net.id/visual/2022/12/08/jokowi-hibur-anak-anak-korban-gempa-cianjur-bawakan-ayam-goreng_169.jpeg?w=650&q=90",
                      title:
                          "Jokowi Bawa Ayam Goreng Hibur Anak-anak Korban Gempa Cianjur",
                      author: "CNN Indonesia",
                      time: "Kamis, 08 Des 2022",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "News For you",
                    style: subTitle.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: subTitle,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Column(
                children: [
                  NewsTile(
                    imageURL:
                        "https://akcdn.detik.net.id/visual/2022/11/27/warga-korban-gempa-cianjur-mulai-menyelamatkan-barang-13_169.jpeg?w=650&q=90",
                    title: "14.490 Rumah Rusak Tahap I Akan Segera Dibangun",
                    author: "CNN Indonesia",
                    time: "Kamis, 01 Des 2022",
                  ),
                  NewsTile(
                    imageURL:
                        "https://akcdn.detik.net.id/visual/2022/12/06/maroko-vs-spanyol-di-piala-dunia-2022-2_169.jpeg?w=1200&q=80",
                    title:
                        "Daftar 8 Tim Lolos ke Perempat Final Piala Dunia 2022",
                    author: "CNN Indonesia",
                    time: "Rabu, 07 Des 2022",
                  ),
                  NewsTile(
                    imageURL:
                        "https://akcdn.detik.net.id/visual/2022/12/08/jokowi-hibur-anak-anak-korban-gempa-cianjur-bawakan-ayam-goreng_169.jpeg?w=650&q=90",
                    title:
                        "Jokowi Bawa Ayam Goreng Hibur Anak-anak Korban Gempa Cianjur",
                    author: "CNN Indonesia",
                    time: "Kamis, 08 Des 2022",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
