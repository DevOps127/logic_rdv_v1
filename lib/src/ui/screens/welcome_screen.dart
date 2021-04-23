import 'package:flutter/material.dart';
import 'package:logic_rdv_v1/src/routes.dart';
import 'package:logic_rdv_v1/src/ui/shared/my_appointment_item.dart';

import 'screens.dart';

const primaryColor = Color(0xFF4e8fda);

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key key}) : super(key: key);
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool _markAsFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFf1f6f9),
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Container(
          width: 120,
          alignment: Alignment.center,
          child: Image.asset('assets/images/logo.png'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteGenerator.connexionScreen);
              },
              child: const Text(
                'Se connecter',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        primary: true,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                readOnly: true,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SearchDoctorScreen(),
                    ),
                  );
                },
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                  prefixIcon: const Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Rechercher un praticien',
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.only(
                top: 20,
                left: 16,
                right: 16,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    0.1,
                    0.6,
                    0.6,
                  ],
                  colors: [
                    primaryColor.withOpacity(.7),
                    Colors.white60,
                    Colors.white60,
                  ],
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 8,
                    left: 16,
                    child: Image.asset('assets/images/covid_img_1.png'),
                  ),
                  Positioned(
                    bottom: 8,
                    left: 64,
                    child: Image.asset('assets/images/covid_img_1.png'),
                  ),
                  Positioned(
                    right: 100,
                    bottom: 0,
                    child: Image.asset(
                      'assets/images/coronavirus.png',
                      height: 50,
                      width: 50,
                      color: primaryColor.withOpacity(.2),
                    ),
                  ),
                  Positioned(
                    right: 64,
                    top: 4,
                    child: Image.asset(
                      'assets/images/coronavirus.png',
                      height: 50,
                      width: 50,
                      color: primaryColor.withOpacity(.2),
                    ),
                  ),
                  Positioned(
                    right: 8,
                    bottom: 4,
                    child: Image.asset(
                      'assets/images/coronavirus.png',
                      height: 50,
                      width: 50,
                      color: primaryColor.withOpacity(.2),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    right: 24,
                    bottom: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Bienvenue sur\nLogicRdv',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Container(
                          height: 28,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Inscription rapide'),
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              primary: primaryColor,
                              onPrimary: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            _RowMenuSeeAll(
                title: 'Specialités',
                subtitle: 'Voir tous',
                onSubTitleTap: () {}),
            Container(
              height: 80,
              margin: const EdgeInsets.only(top: 6),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  const _SpecialityItem(
                    imageUrl: 'assets/images/dentist.png',
                    text: 'Sois dentaire',
                  ),
                  const _SpecialityItem(
                    imageUrl: 'assets/images/genecologie.png',
                    text: 'Génécologie',
                  ),
                  const _SpecialityItem(
                    imageUrl: 'assets/images/eye.png',
                    text: 'Ophtamologie',
                  ),
                  const _SpecialityItem(
                    imageUrl: 'assets/images/pediatrie.jpg',
                    text: 'Pédiatrie',
                  ),
                  const _SpecialityItem(
                    imageUrl: 'assets/images/neurologie.png',
                    text: 'Neurologie',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _RowMenuSeeAll(
              title: 'Praticiens disponible',
              subtitle: 'Voir tous',
              onSubTitleTap: () {},
            ),
            const MyTodayAppointmentItem(),
            const SizedBox(height: 16),
            _RowMenuSeeAll(
              title: 'Meilleurs praticiens',
              subtitle: 'Voir tous',
              onSubTitleTap: () {},
            ),
            const SizedBox(height: 16),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              shadowColor: primaryColor,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 16,
                  right: 8,
                  bottom: 16,
                ),
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/doctore.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Dr. Anna Wells',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              'Cardiologue, MBBS',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '8+ d\'expérience',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade400,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16,
                                    ),
                                    const SizedBox(width: 2),
                                    const Text(
                                      '4.8',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 2),
                                const Text(
                                  '(66 Notes)',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Container(
                              height: 30,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text('Prendre Rendez-vous'),
                                style: ElevatedButton.styleFrom(
                                  primary: primaryColor,
                                  onPrimary: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      top: -12,
                      right: -8,
                      child: IconButton(
                        splashRadius: 20,
                        icon: Icon(
                          _markAsFavorite
                              ? Icons.favorite_outline
                              : Icons.favorite,
                          color: primaryColor,
                        ),
                        onPressed: () {
                          setState(() {
                            _markAsFavorite = !_markAsFavorite;
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Padding(
        //   padding: const EdgeInsets.only(left: 16),
        //   child: InkWell(
        //     onTap: () {},
        //     borderRadius: BorderRadius.circular(30),
        //     child: CircleAvatar(
        //       radius: 18,
        //       backgroundImage: AssetImage('assets/images/profil.jpg'),
        //     ),
        //   ),
        // ),
        Container(
          width: 120,
          alignment: Alignment.center,
          child: Image.asset('assets/images/logo.png'),
        ),
        // Column(
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     Text(
        //       'Position actuelle',
        //       style: TextStyle(
        //         fontSize: 12,
        //         fontWeight: FontWeight.w500,
        //         color: Colors.grey.shade400,
        //       ),
        //     ),
        //     const SizedBox(height: 4),
        //     Row(
        //       children: [
        //         Icon(
        //           Icons.location_on_outlined,
        //           size: 14,
        //         ),
        //         const SizedBox(width: 6),
        //         Text(
        //           'Paris, France',
        //           style: TextStyle(
        //             fontWeight: FontWeight.w600,
        //           ),
        //         )
        //       ],
        //     ),
        //   ],
        // ),

        TextButton(
          onPressed: () {},
          child: const Text(
            'Se connecter',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          style: TextButton.styleFrom(),
        )
        // IconButton(
        //   icon: Icon(
        //     Icons.notifications,
        //     color: Color(0xFF4e8fda),
        //   ),
        //   splashRadius: 20,
        //   onPressed: () {},
        // ),
      ],
    );
  }
}

class _SpecialityItem extends StatelessWidget {
  final String imageUrl;
  final String text;
  const _SpecialityItem({
    Key key,
    this.imageUrl,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: primaryColor,
      child: Padding(
        padding: const EdgeInsets.only(
          right: 16,
          left: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 42,
              width: 42,
              child: Image.asset(imageUrl),
            ),
            const SizedBox(height: 6),
            Text(
              text,
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RowMenuSeeAll extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onSubTitleTap;
  const _RowMenuSeeAll({
    Key key,
    this.title,
    this.subtitle,
    this.onSubTitleTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          InkWell(
            onTap: onSubTitleTap,
            child: const Text('Voir Tous'),
          )
        ],
      ),
    );
  }
}
