import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ana Başlıklar ve Madde Listeleri',
      home: Egitim(),
    );
  }
}

class Egitim extends StatelessWidget {
  const Egitim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Burn Knowledge Assessment Test',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            YanikSection(
              title: 'Yanık',
              content: [
                'Ateş, radyasyon, kızgın cisim vb. çeşitli fiziksel ve yakıcı kimyasal etkenlere maruz kalma sonucu oluşan doku bozulmasına yanık denir.',
              ],
            ),
            YanikSection(
              title: '1. Derece Yanıklar',
              content: [
                'Derinin yüzeyinde, kızarıklık (pembe, kırmızı arası renk) şeklinde görülen doku hasarı vardır.',
                'Ağrı vericidir.',
                'Yanan bölgede hafif şişlik vardır.',
                'Genelde 48 saat içinde kendiliğinden iyileşir.',
              ],
            ),
            YanikSection(
              title: '2. Derece Yanıklar',
              content: [
                'Derinin 1. ve 2. tabakası etkilenmiştir.',
                'En belirgin özelliği deride içi su dolu kabarcıklar (bül) oluşmasıdır.',
                'Çok ağrılıdır.',
              ],
            ),
            YanikSection(
              title: '3. Derece Yanıklar',
              content: [
                'Derinin tüm tabakaları etkilenir.',
                'Kaslar, sinirler, damarlar etkilenebilir.',
                'Yanık bölgede beyaz kuru yaradan, siyah renge kadar aşamaları vardır.',
                'Ağrısızdır, çünkü bütün sinirler zarar görmüştür.',
              ],
            ),
            YanikSection(
              title: 'Yanığın Vücutta Oluşturduğu Olumsuz Etkiler',
              content: [
                'Derinliğine, yaygınlığına ve oluştuğu bölgeye bağlı olarak, organ ve sistemlerde işleyiş bozukluğuna yol açar.',
                'Ağrı ve sıvı kaybına bağlı olarak şok meydana gelir.',
                'Hasta ya da yaralının kendi vücudunda bulunan mikrop ve toksinlerle enfeksiyon riski oluşur.',
              ],
            ),
            YanikSection(
              title: 'Isı ile Oluşan Yanıklarda İlk Yardım',
              content: [
                'Hasta ya da yaralı ıslak battaniye vb. ile sarılır ya da yuvarlanması sağlanarak yanma durdurulmaya çalışılır.',
                'Hasta ya da yaralının hava yolu açıklığı ve solunumu (AB) değerlendirilir.',
                'Yanık çok yaygın değilse yanan bölge en az 20 dk. tazyiksiz ve bol soğuk su altında tutulur.',
                'Yanan bölgedeki giysiler çıkarılır (giysi yanan bölgeye yapışmışsa etrafından kesilerek çıkarılması gerekir).',
                'Yanan bölge sabunlu su ile dikkatlice temizlenir.',
                'Su toplayan yerler patlatılmaz.',
                'Yanan bölgelere (el, ayak gibi) birlikte bandaj yapılmaz.',
                'Yanık üzeri temiz ve nemli bezle örtülür, yanık üzerine hiçbir madde sürülmez.',
                'Yanan vücut bölgesi geniş ve sağlık kurumu uzaksa, kusma yoksa, bilinci açıksa; sıvı kaybını gidermek amacıyla hasta ya da yaralıya hazırlanan sıvı (1 lt. su+ 1 çay kaşığı karbonat + 1 çay kaşığı tuz), maden suyu vb. içirilir.',
                'Tıbbi yardım istenir (112).',
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class YanikSection extends StatelessWidget {
  final String title;
  final List<String> content;

  const YanikSection({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: content.map((item) {
            return Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Metin(
                  text: item), // Metin widget'ını kullanarak içerikleri ekle
            );
          }).toList(),
        ),
      ],
    );
  }
}

class Metin extends StatelessWidget {
  final String text;

  const Metin({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
