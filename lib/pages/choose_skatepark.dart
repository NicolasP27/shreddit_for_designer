import 'package:flutter/material.dart';
import 'package:shreddit_skate_app/services/weather.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  bool isSearching = false;

  List<WorldWeather> weatherlocations = [
    WorldWeather(
        city: 'ripon,us',
        skateparkname: 'Curt Pernice Skatepark',
        address: '1250 Hughes Ln Ripon, CA 95366',
        parksize: '30,000 sqft',
        lights: 'no',
        padrequirement: 'helmet required, pads optional',
        skateparkPicture1: 'curt_pernice_skatepark.jpg',
        times: 'Monday - Sunday:  Dawn - Dusk',
        region: 'Central California'
    ),
    WorldWeather(
        city: 'san+jose,us',
        skateparkname: 'Lake Cunningham Regional Skatepark',
        address: '2305 S White Rd, San Jose CA 95148',
        parksize: '80,000 sqft',
        lights: 'yes',
        padrequirement:
        'helmet required, pads required in certain parts of the park ',
        skateparkPicture1: 'lake_cunningham_regional_skatepark(1).jpg',
        times: 'Monday - Sunday:  8:00AM - 8:00PM ',
        region: 'Silicon Valley'
    ),
    WorldWeather(
        city: 'encinitas,us',
        skateparkname: 'Encinitas YMCA Skate Park',
        address: '200 Saxony Rd Encinitas, CA 92024',
        parksize: '37,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        skateparkPicture1: 'encinitas_ymca_skatepark(1).jpg',
        times: 'Monday - Friday:  3:00PM - 7:30PM\nSaturday - Sunday:  9:00AM - 5:00PM ',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'encinitas,us',
        skateparkname: 'Encinitas Community Skatepark',
        address: '429 Santa Fe Dr, Encinitas, CA 92024',
        parksize: '13,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  5:00AM - 10:00PM',
        skateparkPicture1: 'encinitas_community_skatepark(1).jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'culver+city,us',
        skateparkname: 'Stoner Skatepark',
        address: '1835 Stoner Ave #1801, Los Angeles, CA 90025',
        parksize: '26,500 sqft',
        lights: 'no',
        padrequirement: 'none',
        times: 'Monday - Sunday:  10:00AM - 7:00PM',
        skateparkPicture1: 'stoner_skatepark.jpg',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'sacramento,us',
        skateparkname: 'Tanzanite Skatepark ',
        address: '2220 Tanzanite Avenue, Sacramento, CA 95834',
        parksize: '16,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        skateparkPicture1: 'tanzanite_skatepark.jpg',
        times: 'Monday - Sunday:  8:00AM - 9:00PM',
        region: 'Northern California'
    ),
    WorldWeather(
        city: 'santa+monica,us',
        skateparkname: 'The Cove Skatepark',
        address: '1401 Olympic Blvd, Santa Monica, CA 90404',
        parksize: '20,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        skateparkPicture1: 'the_cove_skatepark(1).jpg',
        times:
        'Monday - Friday:  1:00PM - 8:00PM\nSaturday:  12:00PM - 6:00PM\nSunday:  12:00PM - 7:00PM',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'huntington+beach,us',
        skateparkname: 'Vans "Off The Wall" Skatepark',
        address: '7471 Center Ave, Huntington Beach, CA 92647',
        parksize: '35,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        skateparkPicture1: 'vans_off_the_wall_skatepark(1).jpg',
        times: 'TEMPORARILY CLOSED',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'orange+county',
        skateparkname: 'Vans Skatepark',
        address: '20 City Blvd W Suite 2, Orange, CA 92868',
        parksize: '20,000 sqft',
        lights: 'yes',
        padrequirement:
        'helmet & pads required (unless 18 or over, only helmet required)',
        skateparkPicture1: 'vans_skatepark_orange_county_(1).jpg',
        times:
        'Monday - Thursday:  11:00AM - 7:00PM\nFriday - Saturday:  10:00AM - 8:00PM\nSunday:  12:00PM - 6:00PM',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'venice,us',
        skateparkname: 'Venice Beach Skatepark',
        address: '1800 Ocean Front Walk, Venice CA 90291',
        parksize: '16,000 sqft',
        lights: 'no',
        padrequirement: 'none',
        skateparkPicture1: 'venice_beach_skatepark(1).jpg',
        times: 'Monday - Sunday:  Dawn - Dusk',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'san+diego,us',
        skateparkname: 'Linda Vista Skatepark',
        address: ' 6893 Osler St, San Diego, CA 92111',
        parksize: '34,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  9:00AM - 9:00PM',
        skateparkPicture1: 'linda_vista_skatepark.jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'oakland,us',
        skateparkname: 'Town Park Skatepark ',
        address: '1651 Adeline St, Oakland, CA 94607',
        parksize: '8,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Friday:  12:00PM - 6:00PM\nSaturday - Sunday:  12:00PM - 5PM',
        skateparkPicture1: 'town_park_skatepark.jpg',
        region: 'Central California',
    ),
    WorldWeather(
        city: 'san+francisco,us',
        skateparkname: 'SoMa West Skatepark',
        address: 'Central Fwy, San Francisco, CA 94103',
        parksize: '3,500 sqft',
        lights: 'no',
        padrequirement: 'helmet required',
        times: 'Monday - Sunday:  9:00AM - 9:00PM',
        skateparkPicture1: 'soma_west_skatepark.jpg',
        region: 'Silicon Valley'
    ),
    WorldWeather(
        city: 'fremont,us',
        skateparkname: 'Fremont Skatepark',
        address: '40500 Paseo Padre Pkwy, Fremont, CA 94538',
        parksize: '43,560 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  6:00AM - 8:00PM',
        skateparkPicture1: 'fremont_skatepark(1).jpg',
        region: 'Silicon Valley'
    ),
    WorldWeather(
        city: 'highland+park,us',
        skateparkname: 'Garvanza Skatepark',
        address: '6240 Meridian St, Los Angeles, CA 90042',
        parksize: '2,500 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  9:00AM - 6:00PM',
        skateparkPicture1: 'garvanza_skatepark(1).jpg',
        region: 'Central California'
    ),
    WorldWeather(
        city: 'san+francisco,us',
        skateparkname: 'Potrero Del Sol Skatepark',
        address: '2827 Cesar Chavez, San Francisco, CA 94110',
        parksize: '16,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  6:00AM - 10:00PM',
        skateparkPicture1: 'potrero_del_sol_skatepark(1).jpg',
        region: 'Silicon Valley',
    ),
    WorldWeather(
        city: 'buena+park,us',
        skateparkname: 'Manzanita Skatepark',
        address: '1260 N. Riviera Street Anaheim, CA 92801',
        parksize: '10,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  5:00AM - 10:30PM',
        skateparkPicture1: 'manzanita_skatepark_(1).jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'victorville,us',
        skateparkname: 'Apple Valley Skate Park',
        address: '21839 Powhatan Rd, Apple Valley, CA 92308',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  6:00AM - 9:00PM',
        skateparkPicture1: 'apple_valley_skatepark(1).jpg',
        region: 'Central California',
    ),
    WorldWeather(
        city: 'arcadia,us',
        skateparkname: 'Bonita Skatepark',
        address: '207 Bonita St, Arcadia, CA 91006',
        parksize: '10,700 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  8:00AM - 10:00PM',
        skateparkPicture1: 'arcadia_skatepark(1).jpg',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'auburn,us',
        skateparkname: 'Auburn Skatepark',
        address: '855 Pacific Ave, Auburn, CA 95603',
        parksize: 'n/a',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Thurday:  24 Hours\nFriday:  7:30AM - 8:30PM\nSaturday:  24 Hours\nSunday:  7:30AM - 8:30PM',
        skateparkPicture1: 'auburn_skatepark(1).jpg',
        region: 'Northern California',
    ),
    WorldWeather(
        city: 'barstow,us',
        skateparkname: 'Barstow Skatepark',
        address: ' 737-849 Belinda Ave, Barstow, CA 92311',
        parksize: '12,000 sqft',
        lights: 'no',
        padrequirement: 'none',
        times: 'Monday - Sunday: 24 Hours',
        skateparkPicture1: 'barstow_skatepark(1).jpg',
        region: 'South California',
    ),
    WorldWeather(
        city: 'bellflower,us',
        skateparkname: 'Bellflower Skatepark',
        address: '10500 Flora Vista St, Bellflower, CA 90706',
        parksize: '10,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  Dawn - Dusk',
        skateparkPicture1: 'bellflower_skatepark(1).jpg',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'east+los+angeles,us',
        skateparkname: 'Belvedere Skatepark',
        address: '4914 East Cesar E Chavez Avenue, East Los Angeles, CA 90022',
        parksize: 'n/a',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Thursday:  10:00AM - 4:30PM\nFriday:  10:00AM - 6:30PM\nSaturday:  10:00AM - 5:00PM\nSunday:  10:00AM - 4:30PM',
        skateparkPicture1: 'belvedere_skatepark(1).jpg',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'benicia,us',
        skateparkname: 'Benicia Skatepark',
        address: 'Dempsey Drive, Benicia, CA 94510',
        parksize: 'n/a',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  8:00AM - 8:00PM',
        skateparkPicture1: 'benicia_skatepark(1).jpg',
        region: 'Northern California',
    ),
    WorldWeather(
        city: 'camarillo,us',
        skateparkname: 'Camarillo Skatepark',
        address: 'Camarillo, CA 93010',
        parksize: '12,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday: 7:00AM - 7:00PM',
        skateparkPicture1: 'camarillo_skatepark(1).jpg',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'carlsbad,us',
        skateparkname: 'Carlsbad Skatepark',
        address: '2560 Orion Way, Carlsbad, CA 92010',
        parksize: '15,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  8:00AM - 5:00PM',
        skateparkPicture1: 'carlsbad_skatepark(1).jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'carlsbad,us',
        skateparkname: 'Alga Norte Skatepark',
        address: 'Alicante Rd, Carlsbad, CA 92009',
        parksize: '15,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'n/a',
        skateparkPicture1: 'carlsbad(alga_norte)_skatepark(1).jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'cayucos,us',
        skateparkname: 'Cayucos Skatepark',
        address: '55B Ocean Front Ave, Cayucos, CA 93430',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: '\nhelmet required\nhelmet & pads required if under 12',
        times: 'Monday - Sunday: Dawn - Dusk',
        skateparkPicture1: 'cayucos_skatepark(1).jpg',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'chino,us',
        skateparkname: 'Chino Skatepark',
        address: '5413 Edison Ave #5393, Chino, CA 91710',
        parksize: '27,624 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Friday:  4:00AM - 9:30PM\nSaturday - Sunday:  11:00AM - 9:30PM',
        skateparkPicture1: 'chino_skatepark(1).jpg',
        region: 'Southern California',
    ),
    WorldWeather(
        city: 'chino+hills,us',
        skateparkname: 'Chino Hills Skatepark',
        address: '16339 Fairfield Ranch Rd, Chino Hills, CA 91709',
        parksize: '3,000 sqft',
        lights: 'no',
        padrequirement: 'helmts & pads required',
        times: 'Monday - Sunday:  6:00AM - 9:00PM',
        skateparkPicture1: 'chino_hills_skatepark(1).jpg',
        region: 'Southern California',
    ),
    WorldWeather(
        city: 'chula+vista,us',
        skateparkname: 'Chula Vista Skatepark',
        address: '1301 Oleander Ave, Chula Vista, CA 91911',
        parksize: '4,000 sqft',
        lights: 'yes',
        padrequirement: 'none',
        times: 'Monday - Wednesday:  8:00AM - 7:00PM\nThurday:  Open 24 Hours\nFriday:  8:00AM - 9:00PM\nSaturday:  8:00AM - 7:00PM\nSunday:  1:55AM - 7:00PM',
        skateparkPicture1: 'chula_vista_skatepark(1).jpg',
        region: 'Southern California',
    ),
    WorldWeather(
        city: 'citrus+heights,us',
        skateparkname: 'Rusch Skatepark',
        address: '7801 Auburn Blvd, Citrus Heights, CA 95610',
        parksize: '9,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads requirement',
        times: 'Monday - Sunday:  6:00AM - 9:00PM',
        skateparkPicture1: 'rusch_skatepark(1).jpg',
        region: 'Northern California',
    ),
    WorldWeather(
        city: 'corona,us',
        skateparkname: 'Corona City Park Skate Park',
        address: '930 E 6th St, Corona, CA 92879',
        parksize: '10,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads requirement',
        times: 'Monday - Sunday:  5:00AM 10:30PM',
        skateparkPicture1: 'corona_city_park_skatepark(1).jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'eastvale,us',
        skateparkname: 'Corona Harada Heritage Skatepark',
        address: 'Eastvale, CA 92880',
        parksize: 'n/a',
        lights: 'yes',
        padrequirement: 'helmet & pads requirement',
        times: 'Monday - Friday:  8:00AM - 5:00PM\nSaturday - Sunday:  Open 24 Hours',
        skateparkPicture1: 'corona_harada_heritage_park_skatepark(1).jpg',
        region: 'Southern Californa',
    ),
    WorldWeather(
        city: 'eastvale,us',
        skateparkname: 'Corona Huber Skatepark',
        address: '6411 Rolling Meadow St, Corona, CA 92880',
        parksize: 'n/a',
        lights: 'yes',
        padrequirement: 'helmets & pads required',
        times: 'Monday - Sunday:  6:00AM - 10:00PM',
        skateparkPicture1: 'james_c.huber_park(1).jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'corona,us',
        skateparkname: 'Corona Santana Skatepark',
        address: ' 598 Santana Way, Corona, CA 92881',
        parksize: '11,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  5:30AM - 10:00PM',
        skateparkPicture1: 'corona_santana_skatepark(1).jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'coronado,us',
        skateparkname: 'Coronado Skatepark',
        address: '2000 Mullinex Dr, Coronado, CA 92118',
        parksize: '16,000 sqft',
        lights: 'no',
        padrequirement: 'padrequirement',
        times: 'Monday - Friday:  2:30PM - 5:00PM\nSaturday - Sunday:  12:00PM - 7:30PM',
        skateparkPicture1: 'coronado_skatepark(1).jpg',
        region: 'Northern California'
    ),
    WorldWeather(
        city: 'costa+mesa,us',
        skateparkname: 'Volcom Skatepark',
        address: '900 Arlington Dr, Costa Mesa, CA 92626',
        parksize: '15,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday:  7:30AM - 10:00PM\nTuesday:  11:00AM - 10:00PM\nWednesday - Sunday:  7:30AM - 10:00PM',
        skateparkPicture1: 'costa_mesa_volcom(1).jpg',
        region: 'Northern California'
    ),
    WorldWeather(
        city: 'culver_city,us',
        skateparkname: 'Culver City Skatepark',
        address: '9910 Jefferson Blvd, Culver City, CA 90230',
        parksize: '13,000 sqft',
        lights: 'no',
        padrequirement: 'helmet required',
        times: 'Monday - Sunday:  8:00AM - 8:00PM',
        skateparkPicture1: 'culver_city_skatepark(1).jpg',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'hot+springs,us',
        skateparkname: 'Desert Hot Springs Skatepark',
        address: 'First St, Desert Hot Springs, CA 92240',
        parksize: '10,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  Open 24 Hours',
        skateparkPicture1: 'desert_hot_spring_skatepark(1).jpg',
        region: 'Northern California'
    ),
    WorldWeather(
        city: 'duarte,us',
        skateparkname: 'Duarte Skatepark',
        address: '1401 Central Ave, Duarte, CA 91010',
        parksize: '10,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  6:00AM - 7:00PM',
        skateparkPicture1: 'duarte_skatepark(1).jpg',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'el+cajon,us',
        skateparkname: 'Kennedy Skatepark',
        address: 'John F Kennedy Park, 400 N 4th St, El Cajon, CA 92019',
        parksize: '11,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Saturday:  9:00AM - 6:00PM\nSunday:  12:00PM - 6:00PM',
        skateparkPicture1: 'kennedy_skatepark(1).jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'lake+forest,us',
        skateparkname: 'Etnies Skatepark',
        address: '20028 Lake Forest Dr, Lake Forest, CA 92630',
        parksize: '62,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Friday:  12:00PM - 7:45PM\nSaturday - Sunday:  10:00AM - 7:45PM',
        skateparkPicture1: 'etnies_skatepark(1).jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'fillmore,us',
        skateparkname: 'Fillmore Skatepark',
        address: '1110 River St #1032, Fillmore, CA 93015',
        parksize: '20,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  Open 24 Hours',
        skateparkPicture1: 'fillmore_skatepark(1).jpg',
        region: 'Western California',
    ),
    WorldWeather(
        city: 'folsom,us',
        skateparkname: 'Cummings Skatepark',
        address: '1775 Creekside Dr, Folsom, CA 95630',
        parksize: '21,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet required',
        times: 'Monday - Friday:  3:30PM - 7:30PM',
        skateparkPicture1: 'folsom_skatepark(1).jpg',
        region: 'Central California'
    ),
    WorldWeather(
        city: 'fontana,us',
        skateparkname: 'Fontana North Skatepark',
        address: '5553 Lytle Creek Rd, Fontana, CA 92336',
        parksize: '28,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Friday:  2:00PM - 8:30PM\nSaturday - Sunday:  12:00PM - 8:30PM',
        skateparkPicture1: 'fontana_north_skate_park(1).jpg',
        region: 'Southern California',
    ),
    WorldWeather(
        city: 'fontana,us',
        skateparkname: 'Fontana South Skatepark',
        address: '16581 Filbert St, Fontana, CA 92335',
        parksize: 'n/a',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday:  2:00PM - 6:00PM\nTuesday - Friday:  2:00PM - 8:30PM\nSaturday - Sunday:  12:00PM - 8:30PM',
        skateparkPicture1: 'fontana_south_skatepark(1).jpg',
        region: 'Southern California',
    ),
    WorldWeather(
        city: 'fresno,us',
        skateparkname: 'Lions Skatepark',
        address: '4650 N Marks Ave, Fresno, CA 93722',
        parksize: '30,000 sqft',
        lights: 'yes',
        padrequirement: 'none',
        times: 'Monday - Friday:  2:00PM - 8:00PM\nSaturday - Sunday:  8:00AM - 8:00PM',
        skateparkPicture1: 'Fresno_skatepark(1).jpg',
        region: 'Central California'
    ),
    WorldWeather(
        city: 'garden+grove,us',
        skateparkname: 'Garden Grove Skatepark',
        address: 'Garden Grove, CA 92844',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  Open 24 Hours',
        skateparkPicture1: 'garden_grove_skatepark(1).jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'gilroy,us',
        skateparkname: 'Gilroy Skatepark',
        address: 'Mantelli Dr, Gilroy, CA 95020',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  Open 24 Hours',
        skateparkPicture1: 'gilroy_skatepark(1).jpg',
        region: 'Silicon Valley'
    ),
    WorldWeather(
        city: 'grass+valley,us',
        skateparkname: 'Condon Skatepark',
        address: '660 Minnie St, Grass Valley, CA 95945',
        parksize: '23,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Wednesday:  9:00AM - 11:00AM\nSunday:  9:00AM - 12:00PM',
        skateparkPicture1: 'condon_skatepark(1).jpg',
        region: 'Northern California'
    ),
    WorldWeather(
        city: 'grover+beach,us',
        skateparkname: 'South Country Skatepark',
        address: '1750 Ramona Ave, Grover Beach, CA 93433',
        parksize: '13,234 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  Open 24 Hours',
        skateparkPicture1: 'grover_beach_skatepark(1).jpg',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'imperial+beach,us',
        skateparkname: 'Imperial Beach Skatepark',
        address: '425 Imperial Beach Blvd, Imperial Beach, CA 91932',
        parksize: '7,500 sqft',
        lights: 'no',
        padrequirement: 'hemlet & pads required',
        times: 'Monday - Saturday:  9:00AM - 3:30PM\nSunday:  9:00AM - 3:30PM',
        skateparkPicture1: 'imperial_beach_skatepark(1).jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'ione,us',
        skateparkname: 'Charles Howard Skatepark',
        address: '600 S Church St, Ione, CA 95640',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: 'helmet required',
        times: 'Monday - Sunday:  6:00AM - 9:00PM',
        skateparkPicture1: 'charles_howard_skatepark(1).jpg',
        region: 'Central California'
    ),
    WorldWeather(
        city: 'irvine,us',
        skateparkname: 'Harvard Skatepark',
        address: '14701 Harvard Ave, Irvine, CA 92606',
        parksize: '10,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Friday:  2:00PM - 8:00PM\nSaturday:  10:00AM - 9:00PM\nSunday:  12:00PM - 8:00PM',
        skateparkPicture1: 'harvard_skatepark(1).jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'irwindale,us',
        skateparkname: 'Jardin de Roca Park',
        address: '5051 N Irwindale Ave, Irwindale, CA 91706',
        parksize: 'n/a',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  Open 24 Hours',
        skateparkPicture1: 'jardin_de_roca_skatepark(1).jpg',
        region: 'Western Califorina'
    ),
    WorldWeather(
        city: 'ladera+ranch,us',
        skateparkname: 'Ladera Ranch Skatepark (Private Access)',
        address: '26203 Sienna Pkwy, Ladera Ranch, CA 92694',
        parksize: '14,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet required',
        times: 'Monday - Sunday:  9:00AM - 6:00PM',
        skateparkPicture1: 'ladera_ranch_skatepark(1).jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'laguna+hills,us',
        skateparkname: 'Laguna Hills Skatepark',
        address: '25401 Alicia Pkwy, Laguna Hills, CA 92653',
        parksize: '20,000 sqft',
        lights: 'yes ',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  8:00AM - 10:00PM',
        skateparkPicture1: 'laguna_hills_skatepark(1).jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'laguna+niguel,us',
        skateparkname: 'Laguna Niguel Skatepark',
        address: '27745 Alicia Pkwy, Laguna Niguel, CA 92677',
        parksize: 'n/a',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  12:00PM - 9:30PM',
        skateparkPicture1: 'laguna_niguel_skatepark(1).jpg',
        region: 'Southern California',
    ),
    WorldWeather(
        city: 'la+mesa,us',
        skateparkname: 'La Mesa Skatepark',
        address: '8855 Dallas St, La Mesa, CA 91942',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: 'helmt & pads required',
        times: 'Monday - Sunday:  6:00AM - 10:00PM',
        skateparkPicture1: 'la_mesa_skatepark(1).jpg',
        region: 'Southern California',
    ),
    WorldWeather(
        city: 'lancaster,us',
        skateparkname: 'Jane Reynolds Skatepark',
        address: '716 W Oldfield St, Lancaster, CA 93534',
        parksize: '16,000 sqft',
        lights: 'yes',
        padrequirement: 'none',
        times: 'Monday - Sunday:  6:00AM - 10:00PM',
        skateparkPicture1: 'lancaster_skatepark(1).jpg',
        region: 'Western California',
    ),
    WorldWeather(
        city: 'avocado+heights,us',
        skateparkname: 'Avocado Height Skatepark',
        address: '621 4th Ave, Bassett, CA 91746',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  6:00AM - 8:00PM',
        skateparkPicture1: 'avacado_heights_skatepark(1).jpg',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'lompoc,us',
        skateparkname: 'Lompoc Skatepark',
        address: 'Lompoc, CA 93436',
        parksize: '10,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  Dawn - Dusk',
        skateparkPicture1: 'lompoc_skatepark(1).jpg',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'lake+view+terrace,us',
        skateparkname: 'Hansen Dam Skatepark',
        address: '12034, 12074 Osborne St, Lake View Terrace, CA 91342',
        parksize: '8,800 sqft',
        lights: 'no',
        padrequirement: 'none',
        times: 'Monday - Sunday:  6:00AM - 6:00PM',
        skateparkPicture1: 'hansen_dam_skatepark(1).jpg',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'harbor,us',
        skateparkname: 'Harbor City Skatepark',
        address: '24901 Frampton Ave, Harbor City, CA 90710',
        parksize: '11,000 sqft',
        lights: 'yes',
        padrequirement: 'none',
        times: 'Monday - Sunday:  8:00AM - 9:00PM',
        skateparkPicture1: 'harbor_city_skatepark(1).jpg',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'los+osos,us',
        skateparkname: 'Los Osos Skatepark',
        address: '2180 Palisades Ave, Baywood-Los Osos, CA 93402',
        parksize: '17,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  12:00PM - 6:00PM',
        skateparkPicture1: 'los_osos_skatepark(1).jpg',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'old+mammoth,us',
        skateparkname: 'Volcom Brothers Skatepark',
        address: '1390 Meridian Blvd, Mammoth Lakes, CA 93546',
        parksize: '40,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  Dawn - Dusk',
        skateparkPicture1: 'volcom_brothers_skatepark(1).jpg',
        region: 'Central California',
    ),
    WorldWeather(
        city: 'manteca,us',
        skateparkname: 'Manteca Skatepark',
        address: 'Manteca, CA 95337',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Thursday:  7:30AM - 6:00PM\nFriday - Sunday:  CLOSED',
        skateparkPicture1: 'manteca_skatepark(1).jpg',
        region: 'Central California'
    ),
    WorldWeather(
        city: 'mission+viejo,us',
        skateparkname: 'Mission Viejo Skatepark',
        address: '24190 Olympiad Rd, Mission Viejo, CA 92692',
        parksize: '9,000 sqft',
        lights: 'no',
        padrequirement: 'none',
        times: 'Monday - Sunday:  7:00AM - 11:00PM',
        skateparkPicture1: 'mission_viejo_skatepark(1).jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'monrovia,us',
        skateparkname: 'Monrovia Skatepark',
        address: '847 E Olive Ave, Monrovia, CA 91016',
        parksize: 'n/a',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  6:00AM - 9:00PM',
        skateparkPicture1: 'monrovia_skatepark(1).jpg',
        region: 'Western California',
    ),
    WorldWeather(
        city: 'montclair,us',
        skateparkname: 'Montclair Skatepark',
        address: '5201 Benito St, Montclair, CA 91763',
        parksize: '11,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  8:00AM - 10:00PM',
        skateparkPicture1: 'montclair_skatepark(1).jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'moorpark,us',
        skateparkname: 'Moorpark Skatepark',
        address: '500 Poindexter Ave, Moorpark, CA 93021',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  7:30AM - 6:00PM',
        skateparkPicture1: 'moorpark_skatepark(1).jpg',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'morgan+hill,us',
        skateparkname: 'Morgan Hill Skatepark',
        address: '171 W Edmundson Ave, Morgan Hill, CA 95037',
        parksize: '15,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday:  3:00PM - Sunset\nWednesday:  3:00PM - Sunset\nFriday:  3:00PM - Sunset\nSaturday:  1:00PM - Sunset\nSunday:  9:00AM - 1:00PM',
        skateparkPicture1: 'morgan_hill_skatepark(1).jpg',
        region: 'Silicon Valley',
    ),
    WorldWeather(
        city: 'morro+bay,us',
        skateparkname: 'Morro Bay Skatepark',
        address: '231 Atascadero Rd, Morro Bay, CA 93442',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  3:00PM - 7:00PM',
        skateparkPicture1: 'morro_bay_skatepark(1).jpg',
        region: 'Western California',
    ),
    WorldWeather(
        city: 'murrieta,us',
        skateparkname: 'California Oaks Sports Skatepark',
        address: '40600 California Oaks Rd, Murrieta, CA 92562',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  9:00AM - 5:00PM',
        skateparkPicture1: 'california_oaks_sports_skatepark(1).jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'newbury+park,us',
        skateparkname: 'Borchard Skatepark',
        address: '190 N Reino Rd, Newbury Park, CA 91320',
        parksize: '9,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Wednesday:  6:00AM - 8:00PM, 12:00PM - 9:00PM\nThursday - Friday:  Open 24 Hours\nSaturday:  6:00AM - 8:00AM, 1:00PM - 9:00PM\nSunday:  Open 24 Hours',
        skateparkPicture1: 'borchard_skatepark(1).jpg',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'needles,us',
        skateparkname: 'Needles Skatepark',
        address: '1500 Flip, Flip Mendez Pkwy, Needles, CA 92363',
        parksize: 'n/a',
        lights: 'yes',
        padrequirement: 'none',
        times: 'Monday - Sunday:  6:00AM - 10:00PM',
        skateparkPicture1: 'needles_skatepark(1).jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'novato,us',
        skateparkname: 'Novato Skatepark',
        address: '1200 Hamilton Pkwy, Novato, CA 94949',
        parksize: '15,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet required',
        times: 'Monday - Sunday:  8:00AM - 8:00PM',
        skateparkPicture1: 'novato_skatepark(1).jpg',
        region: 'Northern California',
    ),
    WorldWeather(
        city: 'oceanside,us',
        skateparkname: 'Prince Park Skatepark',
        address: 'Alex Rd &, Foussat Rd, Oceanside, CA 92058',
        parksize: '22,700 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  6:00AM - 8:00PM',
        skateparkPicture1: 'prince_park_skatepark(alex_road)(1).jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'oceanside,us',
        skateparkname: 'Melba Bishop Skatepark',
        address: '5306 N River Rd, Oceanside, CA 92057',
        parksize: '8,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  6:00AM - 9:00PM',
        skateparkPicture1: 'melba_bishop_skatepark(1).jpg',
        region: 'Southern California',
    ),
    WorldWeather(
        city: 'oceanside,us',
        skateparkname: 'Martin Luther King Skatepark',
        address: '4300 Mesa Dr, Oceanside, CA 92057',
        parksize: '6,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  6:00AM - 9:00PM',
        skateparkPicture1: 'martin_luther_king_skatepark(1).jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'ojai,us',
        skateparkname: 'Ojai Skatepark',
        address: 'E Ojai Ave, Ojai, CA 93023',
        parksize: '12,500 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: '8:00AM - 5:00PM',
        skateparkPicture1: 'ojai_skatepark(1).jpg',
        region: 'Western California',
    ),
    WorldWeather(
        city: 'oxnard,us',
        skateparkname: 'Bedford Pinkard Skatepark',
        address: '3250 S Rose Ave, Oxnard, CA 93033',
        parksize: '14,500 sqft',
        lights: 'yes',
        padrequirement: 'helmet required',
        times: 'Monday - Friday:  2:00PM - 8:00PM\nSaturday - Sunday:  10:00AM - 8:00PM',
        skateparkPicture1: 'bedford_pinkard_skatepark(1).jpg',
        region: 'Western California',
    ),
    WorldWeather(
        city: 'temecula,us',
        skateparkname: 'Pala Skatepark',
        address: '12196 Pala Mission Rd Bldg C, Pala, CA 92059',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: 'helmet required for people 18 years and younger',
        times: 'Monday - Friday:  12:00PM - 7:00PM\nSaturday - Sunday:  11:00AM - 7:00PM',
        skateparkPicture1: 'pala_skatepark(1).jpg',
        region: 'Southern California',
    ),
    WorldWeather(
        city: 'palm+desert,us',
        skateparkname: 'Civic Center Skatepark',
        address: '43906-43942 San Pablo Ave, Palm Desert, CA 92260',
        parksize: 'n/a',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Friday:  2:00PM - 9:00PM\nSaturday - Sunday:  8:00AM - 9:00PM',
        skateparkPicture1: 'civic_center_skatepark(1).jpg',
        region: 'Southern California',
    ),
    WorldWeather(
        city: 'palm+springs,us',
        skateparkname: 'Palm Springs Skatepark',
        address: '405 S Pavilion Way, Palm Springs, CA 92262',
        parksize: '30,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  2:00PM - 9:45PM',
        skateparkPicture1: 'palm_springs_skatepark(1).jpg',
        region: 'Southern California',
    ),
    WorldWeather(
        city: 'palo+alto,us',
        skateparkname: 'Greer Skatepark',
        address: '2860 W Bayshore Rd, Palo Alto, CA 94303',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  8:00AM - 9:00PM',
        skateparkPicture1: 'greer_skatepark(1).jpg',
        region: 'Silicon Valley',
    ),
    WorldWeather(
        city: 'san+dimas,us',
        skateparkname: 'Pioneer Skatepark',
        address: 'Paso Robles Skatepark, California 1128 19th St. Paso Robles, CA 93446',
        parksize: '15,000 sqft',
        lights: 'no',
        padrequirement: 'helmets & pads required',
        times: 'Monday - Sunday:  7:00AM - 10:00PM',
        skateparkPicture1: 'pioneer_skatepark(1).jpg',
        region: 'Western California',
    ),
    WorldWeather(
        city: 'encino,us',
        skateparkname: 'Pedlow Skatepark',
        address: '17334 Victory Blvd, Encino, CA 91316',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Friday:  10:00AM - 8:00PM\nSaturday - Sunday:  9:00AM - 8:00PM',
        skateparkPicture1: 'pedlow_skatepark(1).jpg',
        region: 'Western California',
    ),
    WorldWeather(
        city: 'poway,us',
        skateparkname: 'Poway Skatepark',
        address: '13094 Civic Center Dr, Poway, CA 92064',
        parksize: '12,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  8:00AM - 9:00PM',
        skateparkPicture1: 'poway_skatepark(1).jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'quartz+hill,us',
        skateparkname: 'George Lane Skatepark',
        address: '5520 W Ave L8, Quartz Hill, CA 93536',
        parksize: '15,000 sqft',
        lights: 'yes',
        padrequirement: 'helmets & pads required',
        times: 'Monday - Thursday:  10:30AM - 9:00PM\nFriday:  10:30AM tp 7:00PM\nSaturday:  8:30AM - 5:00PM',
        skateparkPicture1: 'george_lane_skatepark(1).jpg',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'rancho+cucamonga,us',
        skateparkname: 'Spruce Skatepark',
        address: '7730 Spruce Ave, Rancho Cucamonga, CA 91730',
        parksize: '9,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday: Open 24 Hours',
        skateparkPicture1: 'spruce_skatepark(1),jpg',
        region: 'Southern California',
    ),
    WorldWeather(
        city: 'rancho+santa+margarita,us',
        skateparkname: 'Rancho Santa Margarita Skatepark',
        address: '24328 Antonio Pkwy, Rancho Santa Margarita, CA 92688',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  7:00AM - 5:00PM',
        skateparkPicture1: 'rancho_santa_margarita_skatepark(1).jpg',
        region: 'Southern California',
    ),
    WorldWeather(
        city: 'redwood+city,us',
        skateparkname: 'Phil Shao Memorial Skatepark',
        address: 'Redwood City, California Skatepark 711 Nevada St., Redwood City, CA 94061',
        parksize: '13,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  9:00AM - 10:00PM',
        skateparkPicture1: 'phil_shao_memorial_skatepark(1).jpg',
        region: 'Silicon Valley'
    ),
    WorldWeather(
        city: 'rialto,us',
        skateparkname: 'Margaret Todd Skatepark',
        address: '201 N Willow Ave, Rialto, CA 92376',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  6:00AM - 10:00PM',
        skateparkPicture1: 'margaret_todd_skatepark(1).jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'rocklin,us',
        skateparkname: 'Rocklin Skatepark',
        address: '5480 5th St, Rocklin, CA 95677',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  5:00AM - 10:00PM',
        skateparkPicture1: 'rocklin_skatepark(1).jpg',
        region: 'Northern California',
    ),
      WorldWeather(
          city: 'napa+county,us',
          skateparkname: 'St. Helena Skatepark',
          address: '360 S Crane Ave, St Helena, CA 94574',
          parksize: '18,000 sqft',
          lights: 'yes',
          padrequirement: 'helmet & pads required',
          times: 'Monday - Sunday: 8:00AM - Dusk',
          skateparkPicture1: 'st_helena_skatepark(1).jpg',
          region: 'Northern California'
      ),
      WorldWeather(
          city: 'san+bernardino,us',
          skateparkname: 'Highland Skatepark',
          address: '1466 W Marshall Blvd, San Bernardino, CA 92405',
          parksize: 'n/a',
          lights: 'yes',
          padrequirement: 'helmet & pads required',
          times: 'Monday - Sunday:  6:00AM - 6:00PM',
          skateparkPicture1: 'highland_skatepark(1).jpg',
          region: 'Southern California',
      ),
    WorldWeather(
        city: 'san+clemente,us',
        skateparkname: 'San Clemente Skatepark',
        address: '241 Av. La Pata, San Clemente, CA 92673',
        parksize: 'n/a',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  6:00AM - Dusk',
        skateparkPicture1: 'san_clemente_skatepark(1).jpg',
        region: 'Southern California',
    ),
    WorldWeather(
        city: 'san+diego,us',
        skateparkname: 'Carmel Valley Skatepark',
        address: '12600 El Camino Real, San Diego, CA 92130',
        parksize: '13,500 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  10:00AM - Dusk',
        skateparkPicture1: 'carmel_valley_skatepark(1).jpg',
        region: 'Southern California',
    ),
    WorldWeather(
        city: 'san+diego,us',
        skateparkname: 'YMCA Krause Family Skate & Bike Park',
        address: '3401 Clairemont Dr, San Diego, CA 92117',
        parksize: '60,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Friday:  3:30PM - 5:30PM,  6:00PM - 8:00PM\nSaturday - Sunday:  10:30AM - 12:30PM,  1:00PM - 3:00PM,  3:30PM - 5:30PM,  6:00PM - 8:00PM',
        skateparkPicture1: 'ymca_krause_family_skate_&_bike_park(1).jpg',
        region: 'Southern California',
    ),
    WorldWeather(
        city: 'san+diego,us',
        skateparkname: 'Damato Skatepark',
        address: '4599 Damato St, San Diego, CA 92124',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  6:30AM - 10:00PM',
        skateparkPicture1: 'damato_skatepark(1).jpg',
        region: 'San Diego',
    ),
    WorldWeather(
        city: 'san+diego,us',
        skateparkname: 'Memorial Skatepark San Diego CA',
        address: '702 S 30th St, San Diego, CA 92113',
        parksize: '40,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  10:00AM - Dusk',
        skateparkPicture1: 'memorial_skatepark(1).jpg',
        region: 'Southern California',
    ),
    WorldWeather(
        city: 'san+diego,us',
        skateparkname: 'Robb Field Skatepark',
        address: '2525 Bacon St, San Diego, CA 92107',
        parksize: '40,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  10:00AM - Dusk',
        skateparkPicture1: 'robb_field_skatepark(1).jpg',
        region: 'Southern California',
    ),
    WorldWeather(
        city: 'san+diego,us',
        skateparkname: 'Washington Street Skatepark',
        address: 'Washington Street, Pacific Hwy US 101, San Diego, CA 92101',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: 'none',
        times: 'Monday - Sunday:  Open 24 Hours',
        skateparkPicture1: 'washington_street_skatepark.jpg',
        region: 'Southern California',
    ),
    WorldWeather(
        city: 'san+jose,us',
        skateparkname: 'Roosevelt Skatepark',
        address: 'Roosevelt Park, S 20th St, San Jose, CA 95116',
        parksize: 'n/a',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  10:00AM - 12:00PM',
        skateparkPicture1: 'roosevelt_skatepark(1).jpg',
        region: 'Silicon Valley',
    ),
    WorldWeather(
        city: 'san+jose,us',
        skateparkname: 'Stonegate Skatepark',
        address: 'San Jose (Stonegate), California Skatepark 2645 Gassmann Dr.San Jose, CA 95121',
        parksize: '5,500 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  Dawn - Dusk',
        skateparkPicture1: 'stonegate_skatepark(1).jpg',
        region: 'Silicon Valley',
    ),
    WorldWeather(
        city: 'san+luis+obispo,us',
        skateparkname: 'San Luis Obispo Skatepark',
        address: 'San Luis Obispo Skatepark, California 1050 Oak St. San Luis Obispo, CA 93405',
        parksize: '15,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  7:00AM - 10:00PM',
        skateparkPicture1: 'san_luis_obispo_skatepark(1).jpg',
        region: 'Western California',
    ),
    WorldWeather(
        city: 'san+rafael,us',
        skateparkname: 'McInnis Skatepark',
        address: '310 Smith Ranch Rd, San Rafael, CA 94903',
        parksize: '25,000 sqft',
        lights: 'no',
        padrequirement: 'none',
        times: 'Monday - Sunday:  7:00AM - 7:00PM',
        skateparkPicture1: 'mcinnis_skatepark(1).jpg',
        region: 'Northern California',
    ),
    WorldWeather(
        city: 'san+pedro,ca',
        skateparkname: 'Channel Street Park/Ride',
        address: '610 W Channel St, San Pedro, CA 90731',
        parksize: 'n/a',
        lights: 'np',
        padrequirement: 'none',
        times: 'Monday - Sunday: Open 24 Hours',
        skateparkPicture1: 'channel_street_park_ride(1).jpg',
        region: 'Western California',
    ),
    WorldWeather(
        city: 'santa+ana,us',
        skateparkname: 'Centennial Regional Skatepark',
        address: '3000 W Edinger Ave, Santa Ana, CA 92704',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  7:00AM - Dusk',
        skateparkPicture1: 'centennial_regional_skatepark(1).jpg',
        region: 'Southern California',
    ),
    WorldWeather(
        city: 'santa+cruz,us',
        skateparkname: 'Mike Fox Skatepark',
        address: '299 San Lorenzo Blvd, Santa Cruz, CA 95060',
        parksize: '80,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  9:00AM - Sunset',
        skateparkPicture1: 'mike_fox_skatepark(1).jpg',
        region: 'Silicon Valley',
    ),
    WorldWeather(
        city: 'santa+barbara,us',
        skateparkname: "Skater's Point",
        address: 'Santa Barbara Skatepark, California 110 E Cabrillo Blvd Santa Barbara, CA 93101',
        parksize: '14,600 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  8:00AM - Sunset',
        skateparkPicture1: "skater's_point(1).jpg",
        region: 'Western California',
    ),
    WorldWeather(
        city: 'santa+clarita,us',
        skateparkname: 'Santa Clarita Skatepark',
        address: '20840 Centre Pointe Pkwy, Santa Clarita, CA 91350',
        parksize: '40,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  8:00AM - 8:30PM',
        skateparkPicture1: 'santa_clarita_skatepark(1).jpg',
        region: 'Western California',
    ),
    WorldWeather(
        city: 'santa+paula,us',
        skateparkname: 'Santa Paula Skatepark',
        address: 'Santa Paula Skatepark, California 118 S 10th St. Santa Paula, CA 93060',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: 'none',
        times: 'n/a',
        skateparkPicture1: 'santa_paula_skatepark(1).jpg',
        region: 'Western California',
    ),
    WorldWeather(
        city: 'scotts+valley,us',
        skateparkname: 'Scotts Valley Skatepark',
        address: '361 Kings Village Rd, Scotts Valley, CA 95066',
        parksize: '22,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  Sunrise - Sunset',
        skateparkPicture1: 'scotts_valley_skatepark(1).jpg',
        region: 'Silicon Valley',
    ),
    WorldWeather(
        city: 'solvang,us',
        skateparkname: 'Solvang Skatepark',
        address: 'Solvang Skatepark, California 501 Chalk Hill Rd Solvang, CA 93463',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: 'pads & helmet required',
        times: 'Monday - Sunday:  Open 24 Hours',
        skateparkPicture1: 'solvang_skatepark(1).jpg',
        region: 'Western California'
    ),
    WorldWeather(
        city: 'stockton,us',
        skateparkname: 'Stockton Skatepark',
        address: '6137 N El Dorado St, Stockton, CA 95207',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  Open 24 Hours',
        skateparkPicture1: 'stockton_skatepark(1).jpg',
        region: 'Central California',
    ),
    WorldWeather(
        city: 'temecula,us',
        skateparkname: 'Temecula Skatepark',
        address: '42569 Margarita Rd, Temecula, CA 92592',
        parksize: 'n/a',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Saturday:  8:00AM - 5:00PM\nSunday:  CLOSED',
        skateparkPicture1: 'temecula_skatepark(1).jpg',
        region: 'Southern California'
    ),
    WorldWeather(
        city: 'templeton,us',
        skateparkname: 'Templeton Skatepark',
        address: 'Templeton Skatepark, California S Main St & 6th St. Templeton, CA 93465',
        parksize: '12,000 sqft',
        lights: 'no',
        padrequirement: 'none',
        times: 'Monday - Friday:  8:00AM - 5:00PM\nSaturday - Sunday: CLOSED',
        skateparkPicture1: 'templeton_skatepark(1).jpg',
        region: 'Western California',
    ),
    WorldWeather(
        city: 'tracy,us',
        skateparkname: 'El Pescadero Park',
        address: '301 W Grant Line Rd, Tracy, CA 95376',
        parksize: 'n/a',
        lights: 'no',
        padrequirement: 'none',
        times: 'Monday - Sunday: Open 24 Hours',
        skateparkPicture1: 'el_pescadero_skatepark(1).jpg',
        region: 'Central California',
    ),
    WorldWeather(
        city: 'truckee,us',
        skateparkname: 'Truckee Skatepark',
        address: '10695 Brockway Rd, Truckee, CA 96161',
        parksize: '25,000 sqft',
        lights: 'no',
        padrequirement: 'none',
        times: 'Monday - Sunday:  Open 24 Hours',
        skateparkPicture1: 'truckee_skatepark(1).jpg',
        region: 'Northern California',
    ),
    WorldWeather(
        city: 'tustin,us',
        skateparkname: 'Tistin Legacy Skatepark',
        address: 'Tustin Skatepark, California 42 Lansdowne Rd Tustin, CA 92780',
        parksize: '12,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday: Open 24 Hours',
        skateparkPicture1: 'tustin_legacy_skatepark(1).jpg',
        region: 'Southern California',
    ),
    WorldWeather(
        city: 'upland,us',
        skateparkname: 'Memorial Skatepark Upland CA',
        address: '1299 San Bernardino Rd, Upland, CA 91786',
        parksize: '12,700 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  10:00AM - 8:00PM',
        skateparkPicture1: 'memorial_skatepark_upland(1).jpg',
        region: 'Southern California',
    ),
    WorldWeather(
        city: 'victorville,us',
        skateparkname: 'Doris Davies Skatepark',
        address: '16451 Pebble Beach Dr, Victorville, CA 92395',
        parksize: '15,000 sqft',
        lights: 'yes',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Thurday:  5:30AM - 9:00PM\nFriday:  5:30AM - 10:00PM\nSaturday:  5:30AM - 11:00PM\nSunday:  8:00AM - 9:00PM',
        skateparkPicture1: 'doris_davies_skatepark(1).jpg',
        region: 'Southern California',
    ),
    WorldWeather(
        city: 'westlake+village,us',
        skateparkname: 'Westlake Skatepark',
        address: '31107 Thousand Oaks Blvd, Westlake Village, CA 91362',
        parksize: '6,500 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  10:00AM - 10:30PM',
        skateparkPicture1: 'westlake_village(1).jpg',
        region: 'Western California',
    ),
    WorldWeather(
        city: 'westminster,us',
        skateparkname: 'Liberty Skatepark',
        address: 'Westminster, California Skatepark 13866-, 13930 Monroe St, Westminster, CA 92683',
        parksize: '10,000 sqft',
        lights: 'no',
        padrequirement: 'helmet & pads required',
        times: 'Monday - Sunday:  7:00AM - 9:00PM',
        skateparkPicture1: 'liberty_skatepark(1).jpg',
        region: 'Southern California',
    ),
    


















































































  ];
  List<WorldWeather> filteredSkateParks = [];

  void updateWeather(index) async {
    WorldWeather instance = filteredSkateParks[index];
    await instance.getWeather();
    //navigate to home screen
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.skateparkname,
      'skateparkPicture1': instance.skateparkPicture1,
      'weather': instance.weather,
      'address': instance.address,
      'parksize': instance.parksize,
      'lights': instance.lights,
      'padrequirement': instance.padrequirement,
      'times': instance.times,
    });
  }

  String _selectedRegion = 'A';
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _filterSkateParks('');
    _selectedRegion =
        (ModalRoute.of(context)!.settings.arguments as Map)['region']
            .toString();
    print("region: $_selectedRegion");
    _filterSkateParks('');
  }

  void _filterSkateParks(value) {
    filteredSkateParks = weatherlocations
        .where((WorldWeather weatherData) =>
    weatherData.skateparkname!
        .toLowerCase()
        .contains(value.toString().toLowerCase()) &&
        weatherData.region == _selectedRegion)
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: !isSearching
            ? const Text('Choose a Skatepark')
            : TextField(
          onChanged: (value) {
            _filterSkateParks(value);
          },
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: "Search Skatepark Here",
              hintStyle: TextStyle(color: Colors.white)),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          isSearching
              ? IconButton(
            icon: Icon(Icons.cancel),
            onPressed: () {
              setState(() {
                this.isSearching = false;
              });
            },
          )
              : IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              setState(() {
                this.isSearching = true;
              });
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: filteredSkateParks.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  updateWeather(index);
                },
                title: Text(filteredSkateParks[index].skateparkname.toString()),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/${filteredSkateParks[index].skateparkPicture1}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}