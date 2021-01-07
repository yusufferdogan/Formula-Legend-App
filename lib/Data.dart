import 'package:dreamf1team/Models/driver.dart';
import 'package:dreamf1team/Models/team_principal.dart';

class Data {
  static List<Driver> DRIVERDATA = [
    Driver(
      0,
      "Nicholas Latifi",
      15,
      'assets/images/lat.png',
      false,
    ),
    Driver(
      1,
      "Lewis Hamilton",
      50,
      'assets/images/ham.png',
      false,
    ),
    Driver(
      2,
      "Valteri Bottas",
      30,
      'assets/images/bottas.png',
      false,
    ),
    Driver(
      3,
      "Charles Leclerc",
      45,
      'assets/images/leclerc.png',
      false,
    ),
    Driver(
      4,
      "Sebastian Vettel",
      40,
      'assets/images/vettel.png',
      false,
    ),
    Driver(
      5,
      "Max Verstappen",
      45,
      'assets/images/ver.png',
      false,
    ),
    Driver(
      6,
      "Alex Albon",
      20,
      'assets/images/albon.png',
      false,
    ),
    Driver(
      7,
      "Carlos Sainz",
      30,
      'assets/images/sainz.png',
      false,
    ),
    Driver(
      8,
      "Lando Norris",
      35,
      'assets/images/norris.png',
      false,
    ),
    Driver(
      9,
      "Daniel Ricciardo",
      40,
      'assets/images/ricciardo.png',
      false,
    ),
    Driver(
      10,
      "Esteban Ocon",
      20,
      'assets/images/ocon.png',
      false,
    ),
    Driver(
      11,
      "Daniil Kvyat",
      15,
      'assets/images/kyat.png',
      false,
    ),
    Driver(
      12,
      "Pierre Gasly",
      25,
      'assets/images/gasly.png',
      false,
    ),
    Driver(
      13,
      "Sergio Perez",
      25,
      'assets/images/perez.png',
      false,
    ),
    Driver(
      14,
      "Lance Stroll",
      20,
      'assets/images/stroll.png',
      false,
    ),
    Driver(
      15,
      "Kimi Raikkonen",
      25,
      'assets/images/rai.png',
      false,
    ),
    Driver(
      16,
      "Antonio Giovinazzi",
      10,
      'assets/images/gio.png',
      false,
    ),
    Driver(
      17,
      "Kevin Magnussen",
      20,
      'assets/images/mag.png',
      false,
    ),
    Driver(
      18,
      "Romain Grosjean",
      15,
      'assets/images/gro.png',
      false,
    ),
    Driver(
      19,
      "George Russell",
      25,
      'assets/images/russel.png',
      false,
    ),
    Driver(
      20,
      "Nico Hulkenberg",
      35,
      'assets/images/hulkenberg.png',
      false,
    ),
  ];
  static List<TeamPrincipal> PRINCIPALDATA = [
    TeamPrincipal(
      0,
      "Toto Wolf",
      40,
      'assets/images/principals/toto.jpg',
      false,
    ),
    TeamPrincipal(
      1,
      "Cyril Abiteboul",
      15,
      'assets/images/principals/cyril.jpg',
      false,
    ),
    TeamPrincipal(
      2,
      "Mattia Binotto",
      20,
      'assets/images/principals/binotto.jpg',
      false,
    ),
    TeamPrincipal(
      3,
      "Andreas Seidl",
      30,
      'assets/images/principals/seidl.jpeg',
      false,
    ),
    TeamPrincipal(
      4,
      "Christian Horner",
      40,
      'assets/images/principals/horner.jpeg',
      false,
    ),
    TeamPrincipal(
      5,
      "Guenther Steiner",
      15,
      'assets/images/principals/stiener.jpg',
      false,
    ),
    TeamPrincipal(
      6,
      "Franz Tost",
      15,
      'assets/images/principals/frans.jpeg',
      false,
    ),
    TeamPrincipal(
      7,
      "Frédéric Vasseur",
      20,
      'assets/images/principals/vasseur.jpg',
      false,
    ),
    TeamPrincipal(
      8,
      "Claire Williams",
      15,
      'assets/images/principals/clarie.jpeg',
      false,
    ),
    TeamPrincipal(
      9,
      "Otmar Szafnauer",
      25,
      'assets/images/principals/otmar.jpg',
      false,
    ),
  ];
  static int Budget = 100;

  static int driverId1 ;
  static int driverId2 ;

  static int principalId ;

  static bool selectedP = false;
  static bool selectedD = false;
  static bool selectedD2 = false;

  static int selectedDriverCount = 0;
}
