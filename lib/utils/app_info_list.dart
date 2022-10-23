//Hotel info ScreenHome
List<Map<String, dynamic>> hotelList = [
  {
    'image':'hotel_foto1.jpg',
    'place': 'Open Space',
    'destination': 'London',
    'price': 25
  },
  {
    'image':'hotel_foto2.jpg',
    'place': 'Open Space',
    'destination': 'New_York',
    'price': 40
  },
  {
    'image':'hotel_foto3.png',
    'place': 'Tallest Bilding',
    'destination': 'Dubai',
    'price': 68
  },
];

//ticket ScreenHome
List<Map<String, dynamic>> ticketList = [
  //one hotel info
  {
    'from': {
    'code':"NY",
    'name':'New-York',
    },
    'to': {
    'code':'LDN',
    'name':'London'
    },
    'flying_time':'8H 30M',
    'date': '1 MAY',
    'departure_time':'8:00 AM',
    'number':23
  },

  //two hotel info
  {
    'from': {
      'code': "DK",
      'name': 'Dhaka'
    },
    'to': {
      'code': 'LDN',
      'name': 'London'
    },
    'flying_time': '4H 20M',
    'date': '10 MAY',
    'departure_time': '9:00 AM',
    'number':45
  },
];
