import '../model/model.dart';

final List<Model> dummyData = [
  // restaurants
  Model(
    title: 'Mayur Restaurant & Banquet',
    imageUrl1: 'https://mayurrestaurants.com/wp-content/uploads/2022/06/final-logo-1.png',
    imageUrl2: 'imageUrl2',
    imageUrl3: 'imageUrl3',
    info: 'North Indian restaurant',
    // openTime: DateTime.parse('11:00 am'),
    // closeTime: DateTime.parse('11:00 pm'),
    address:
        'Mayur restaurant nr. Man petrol Suthar karkhana naroda galaxy, Ahmedabad, Gujarat 382330',
    ratingStar: 4.0,
    reviewsCount: 1000,
    service: Service.restaurant,
  ),
  Model(
    title: 'Tinello',
    imageUrl1: 'https://media-cdn.tripadvisor.com/media/photo-s/0d/9e/05/e0/tinello-4.jpg',
    imageUrl2: 'imageUrl2',
    imageUrl3: 'imageUrl3',
    info: 'Italian restaurant',
    // openTime: DateTime.parse('12:00 am'),
    // closeTime: DateTime.parse('11:59 pm'),
    address:
        'Hyatt Regency Ahmedabad, India Lobby Level, 17/A, Ashram Rd, Usmanpura, Ahmedabad, Gujarat 380014',
    ratingStar: 4.4,
    reviewsCount: 1000,
    service: Service.restaurant,
  ),
  Model(
    title: 'Surbhi Restaurant',
    imageUrl1: 'https://content.jdmagicbox.com/comp/ahmedabad/67/079p55667/catalogue/surbhi-restaurant-sabarmati-ahmedabad-north-indian-restaurants-tec0bt8cfc-250.jpg',
    imageUrl2: 'imageUrl2',
    imageUrl3: 'imageUrl3',
    info: 'Punjabi restaurant',
    // openTime: DateTime.parse('11:00 am'),
    // closeTime: DateTime.parse('10:30 pm'),
    address:
        '1st Floor, Galaxy Complex,Late, F- 4 To 10, Swa Gurumukhdas Jivatram Udhani Marg, Opposite Galaxy Cinema Naroda, Naroda, Ahmedabad, Gujarat 382345',
    ratingStar: 4.1,
    reviewsCount: 1000,
    service: Service.restaurant,
  ),
  Model(
    title: 'The Green House',
    imageUrl1: 'https://media-cdn.tripadvisor.com/media/photo-s/09/9f/ce/b0/the-house-of-mg.jpg',
    imageUrl2: 'imageUrl2',
    imageUrl3: 'imageUrl3',
    info: 'Restaurant',
    // openTime: DateTime.parse('7:00 am'),
    // closeTime: DateTime.parse('11:00 pm'),
    address:
        'The House of MG, Bha lmdra Rd, opposite Sidi Saiyed Jali, Near, Relief Rd, Old City, Gheekanta, Lal Darwaja, Ahmedabad, Gujarat 380001',
    ratingStar: 4.2,
    reviewsCount: 1000,
    service: Service.restaurant,
  ),
  Model(
    title: 'R Kitchen',
    imageUrl1: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHvqXtFu2ixLRCI5gx2rMGj8GJ9_S6wAqBsQ&usqp=CAU',
    imageUrl2: 'imageUrl2',
    imageUrl3: 'imageUrl3',
    info: 'Family restaurant',
    // openTime: DateTime.parse('7:00 am'),
    // closeTime: DateTime.parse('11:00 pm'),
    address:
        'Renaissance Ahmedabad, Vishwas Colony, Sarkhej - Gandhinagar Hwy, Sola, Ahmedabad, Gujarat 380060',
    ratingStar: 4.3,
    reviewsCount: 1000,
    service: Service.restaurant,
  ),
  // hotels
  Model(
    title: 'The Ummed',
    imageUrl1: 'https://shorturl.at/ftxz2',
    imageUrl2: 'imageUrl2',
    imageUrl3: 'imageUrl3',
    info:
        'Refined rooms & suites in a high-end hotel featuring 2 restaurants, a spa & an outdoor pool.',
    // openTime: DateTime.parse('12:00 am'),
    // closeTime: DateTime.parse('11:59 pm'),
    address:
        'The Ummed, Airport Cir, Sardarnagar, Hansol, Ahmedabad, Gujarat 382475',
    ratingStar: 4.3,
    reviewsCount: 1000,
    service: Service.hotel,
  ),
  Model(
    title: 'Hyatt Regency',
    imageUrl1: 'https://shorturl.at/dtyA6',
    imageUrl2: 'imageUrl2',
    imageUrl3: 'imageUrl3',
    info: '5-star hotel',
    // openTime: DateTime.parse('12:00 am'),
    // closeTime: DateTime.parse('11:59 pm'),
    address: '17/A, Ashram Rd, Usmanpura, Ahmedabad, Gujarat 380014',
    ratingStar: 4.7,
    reviewsCount: 1000,
    service: Service.hotel,
  ),
  Model(
    title: 'Hotel Maple View',
    imageUrl1: 'https://rb.gy/2biyv0',
    imageUrl2: 'imageUrl2',
    imageUrl3: 'imageUrl3',
    info: 'hotel',
    // openTime: DateTime.parse('12:00 am'),
    // closeTime: DateTime.parse('11:59 pm'),
    address:
        '401, 4th Floor Neelkanth Paradise, Near Galaxy Cinema N.H.No.-8, Naroda, Ahmedabad, Gujarat 382330',
    ratingStar: 4.3,
    reviewsCount: 1000,
    service: Service.hotel,
  ),
  Model(
    title: 'Comfort Inn Sunset',
    imageUrl1: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoiVGTmOLS6JpgeH3rV6bFYz27zUnO454AuQ&usqp=CAU',
    imageUrl2: 'imageUrl2',
    imageUrl3: 'imageUrl3',
    info: '3-star hotel',
    // openTime: DateTime.parse('12:00 am'),
    // closeTime: DateTime.parse('11:59 pm'),
    address:
        'Airport Circle, Ahmedabad Airport Exit Rd, Sardarnagar, Hansol, Ahmedabad, Gujarat 382475',
    ratingStar: 4.1,
    reviewsCount: 1000,
    service: Service.hotel,
  ),
  Model(
    title: 'Hotel Riverview',
    imageUrl1: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf2U4o9o55fYxOVYjoegbUmPM3XCzlMMnuvQ&usqp=CAU',
    imageUrl2: 'imageUrl2',
    imageUrl3: 'imageUrl3',
    info: '3-star hotel',
    // openTime: DateTime.parse('12:00 am'),
    // closeTime: DateTime.parse('11:59 pm'),
    address:
        'Nehru Brg, near Sakar VII, Vishalpur, Ellisbridge, Ahmedabad, Gujarat 380009',
    ratingStar: 4.0,
    reviewsCount: 1000,
    service: Service.hotel,
  ),
  //hospitals
  Model(
    title: 'Shalby Multi-Specialty Hospitals, Naroda',
    imageUrl1: 'imageUrl1',
    imageUrl2: 'imageUrl2',
    imageUrl3: 'imageUrl3',
    info: 'Hospital',
    // openTime: DateTime.parse('12:00 am'),
    // closeTime: DateTime.parse('11:59 pm'),
    address: 'Kathwada Rd, New India Colony, Naroda, Ahmedabad, Gujarat 382325',
    ratingStar: 4.7,
    reviewsCount: 12000,
    service: Service.hospital,
  ),
  Model(
    title: 'Karnavati Superspeciality Hospital',
    imageUrl1: 'imageUrl1',
    imageUrl2: 'imageUrl2',
    imageUrl3: 'imageUrl3',
    info: 'Private hospital',
    // openTime: DateTime.parse('12:00 am'),
    // closeTime: DateTime.parse('11:59 pm'),
    address:
        '3J6Q+6VG, Naroda Rd, Krishna Nagar, Saijpur Bogha, Ahmedabad, Gujarat 382345',
    ratingStar: 4.3,
    reviewsCount: 1500,
    service: Service.hospital,
  ),
  Model(
    title: 'Narayana Hospital, Ahmedabad',
    imageUrl1: 'imageUrl1',
    imageUrl2: 'imageUrl2',
    imageUrl3: 'imageUrl3',
    info: 'Private hospital',
    // openTime: DateTime.parse('12:00 am'),
    // closeTime: DateTime.parse('11:59 pm'),
    address:
        'Police Station, Cross Rd, nr. Chakudiya Mahadev Road, opp. Rakhial, Rakhial, Ahmedabad, Gujarat 380023',
    ratingStar: 4.9,
    reviewsCount: 24000,
    service: Service.hospital,
  ),
  Model(
    title: 'Apollo Hospital',
    imageUrl1: 'imageUrl1',
    imageUrl2: 'imageUrl2',
    imageUrl3: 'imageUrl3',
    info: 'hospital',
    // openTime: DateTime.parse('12:00 am'),
    // closeTime: DateTime.parse('11:59 pm'),
    address:
        'Plot No, 1A, Gandhinagar - Ahmedabad Rd, GIDC Bhat, estate, Ahmedabad, Gujarat 382428',
    ratingStar: 4.7,
    reviewsCount: 11000,
    service: Service.hospital,
  ),
  Model(
    title: 'Zydus Hospitals',
    imageUrl1: 'imageUrl1',
    imageUrl2: 'imageUrl2',
    imageUrl3: 'imageUrl3',
    info: 'hospital',
    // openTime: DateTime.parse('12:00 am'),
    // closeTime: DateTime.parse('11:59 pm'),
    address:
        'Zydus Hospitals Road, Sarkhej - Gandhinagar Hwy, nr. Sola Bridge, Ahmedabad, Gujarat 380054',
    ratingStar: 4.8,
    reviewsCount: 18000,
    service: Service.hospital,
  ),
  //Famous Places
  Model(
    title: 'Hazrat Bai Harir Vav',
    imageUrl1: 'imageUrl1',
    imageUrl2: 'imageUrl2',
    imageUrl3: 'imageUrl3',
    info: 'Historical place',
    // openTime: DateTime.parse('11:00 am'),
    // closeTime: DateTime.parse('6:00 pm'),
    address: 'Hanumansingh Rd, Haripura, Asarwa, Ahmedabad, Gujarat 380016',
    ratingStar: 4.4,
    reviewsCount: 8000,
    service: Service.famousPlace,
  ),
  Model(
    title: 'Sabarmati Riverfront',
    imageUrl1: 'imageUrl1',
    imageUrl2: 'imageUrl2',
    imageUrl3: 'imageUrl3',
    info: 'Tourist attraction',
    // openTime: DateTime.parse('9:00 am'),
    // closeTime: DateTime.parse('9:00 pm'),
    address:
        '2HFG+9MJ, Sabarmati Riverfront Walkway E, Old City, Lal Darwaja, Ahmedabad, Gujarat 380001',
    ratingStar: 4.4,
    reviewsCount: 8000,
    service: Service.famousPlace,
  ),
  Model(
    title: 'Auto World Vintage Car Museum',
    imageUrl1: 'imageUrl1',
    imageUrl2: 'imageUrl2',
    imageUrl3: 'imageUrl3',
    info:
        'Covered outdoor showcase of high-end vintage automobiles, carriages, motorcycles & other vehicles.',
    // openTime: DateTime.parse('8:00 am'),
    // closeTime: DateTime.parse('9:00 pm'),
    address:
        'Dastan Estate, Service Rd, Nikol, Kathwada, Ahmedabad, Gujarat 382430',
    ratingStar: 4.4,
    reviewsCount: 8000,
    service: Service.famousPlace,
  ),
  Model(
    title: 'Jhulta Minara Sidi Bashir Mosque',
    imageUrl1: 'imageUrl1',
    imageUrl2: 'imageUrl2',
    imageUrl3: 'imageUrl3',
    info:
        'Mysterious “shaking minarets,” where the shaking of one tower results in the vibration of the other.',
    // openTime: DateTime.parse('8:00 am'),
    // closeTime: DateTime.parse('9:00 pm'),
    address:
        '2HFX+FWF, opp. Sarangpur Water Tank, Sakar Bazzar, Kalupur, Ahmedabad, Gujarat 380002',
    ratingStar: 4.4,
    reviewsCount: 8000,
    service: Service.famousPlace,
  ),
  Model(
    title: 'Sidi Saiyyed Mosque',
    imageUrl1: 'imageUrl1',
    imageUrl2: 'imageUrl2',
    imageUrl3: 'imageUrl3',
    info:
        'Historic mosque built in 1573, famed for latticework carved into intricate tree designs.',
    // openTime: DateTime.parse('8:00 am'),
    // closeTime: DateTime.parse('9:00 pm'),
    address:
        'Bhadra Rd, Opposite Electricity House, Old City, Gheekanta, Lal Darwaja, Ahmedabad, Gujarat 380001',
    ratingStar: 4.4,
    reviewsCount: 8000,
    service: Service.famousPlace,
  ),
];
