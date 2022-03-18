import '../models/location.dart';
import '../models/location_fact.dart';

class MockLocation extends Location {
  MockLocation() : super(name: '', url: '', facts: <LocationFact>[]);

  static final List<Location> items = [
    Location(
      name: 'Arashiyama Bamboo Grove, Kyoto, Japan',
      url:
          'https://jw-webmagazine.com/wp-content/uploads/2017/04/4068715_s.jpg',
      facts: <LocationFact>[
        LocationFact(
            title: 'Summary',
            text:
                'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
        LocationFact(
            title: 'How to get there',
            text:
                'Kyoto airport, with several terminals, is located 16 kilometers south of the city and is also known as Kyto. Kyoto can also be reached by transport links from other regional airports'),
      ],
    ),
    Location(
      name: 'Mount Fuji',
      url:
          'https://www.tripsavvy.com/thmb/9XCreCYe7iO9AYyi2bGsaM7u3hY=/900x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/fuji-mountain-in-autumn-822273028-5a6a8a9c3418c600363958d3.jpg',
      facts: <LocationFact>[
        LocationFact(
            title: 'Summary',
            text:
                'Japan\'s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called "Fuji-san", it\'s the country\'s tallest peak, at 3,776 meters.'),
        LocationFact(
            title: 'Did you know',
            text:
                'There are three cities that surround mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.'),
      ],
    ),
    Location(
      name: 'Kiyomizudera Temple',
      url: 'https://www.japan-guide.com/g18/3901_top.jpg',
      facts: <LocationFact>[
        LocationFact(
            title: 'Summary',
            text:
                'Kiyomizudera, offically Otowa-san Kiyomizu-dera, is an independent Buddhist temple in eastern Kyoto. The temple is part of the Historic Monuments of Ancient Kyoto UNESCO World Heritage Site.'),
        LocationFact(
            title: 'Architectural Style',
            text: 'Japanese Buddhist architecture'),
      ],
    ),
  ];

  static Location fetchAny() {
    return MockLocation.items[0];
  }

  static List<Location> fetchAll() {
    return MockLocation.items;
  }

  static Location fetch(int index) {
    return MockLocation.items[index];
  }
}
