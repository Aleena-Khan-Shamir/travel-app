class Home {
  final int id;
  final String image;
  final String title;
  final String subtitle;
  final String description;
  Home({
    required this.id,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.description,
  });
  static final list = [
    Home(
        id: 1,
        image: 'assets/images/venus.webp',
        title: 'The Capital of Venice',
        subtitle: 'Venice,Italy ',
        description:
            'Venice (/ˈvɛnɪs/ VEN-iss, Italian: Venezia, Italian: [veˈnɛttsja]) is a city in northeastern Italy and the capital of the Veneto region.Venice (/ˈvɛnɪs/ VEN-iss, Italian: Venezia, Italian: [veˈnɛttsja]) is a city in northeastern Italy and the capital of the Veneto region'),
    Home(
        id: 2,
        image: 'assets/images/tokyo.webp',
        title: 'The Capital of Japan',
        subtitle: 'Tokyo, Japan',
        description:
            'Tokyo offers modern theater, opera and orchestral music as well as traditional kabuki and noh theater. In architecture, there is the ultra modern right next door to traditional Japanese wooden buildings, as well as the fascinating fusion of the two that was so popular in the 19th and early 20th centuries'),
    Home(
        id: 3,
        image: 'assets/images/turkey.webp',
        title: 'The Capital of Turkey',
        subtitle: 'Istanbul, Turkey',
        description:
            'Istanbul has a timeless charm that owes much to its rich history. The city was historically referred to as Byzantium and Constantinople. It served as a focal point of several ancient empires. Numerous architectural wonders, remnants of these empires, still stand tall in the heart of the city.'),
    Home(
        id: 4,
        image: 'assets/images/swizterland.webp',
        title: 'The Capital of Swizterland',
        subtitle: 'Bern, Swizterland',
        description:
            'Bern, city, capital of Switzerland and of Bern canton, in the west-central part of the country. It lies along a narrow loop of the Aare River.'),
  ];
}
