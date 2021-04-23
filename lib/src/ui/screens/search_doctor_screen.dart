import 'package:flutter/material.dart';

class SearchDoctorScreen extends StatefulWidget {
  @override
  _SearchDoctorScreenState createState() => _SearchDoctorScreenState();
}

class _SearchDoctorScreenState extends State<SearchDoctorScreen> {
  bool _markAsFavorite = false;
  Color primaryColor = Color(0xFF4e8fda);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          splashRadius: 20,
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Color(0xFF222831),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Rechercher',
          style: TextStyle(
            fontSize: 17.5,
            fontWeight: FontWeight.w700,
            color: Color(0xFF222831),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(
              Icons.location_on_outlined,
              size: 20,
              semanticLabel: 'Find doctor by position',
              color: Color(0xFF222831),
            ),
            splashRadius: 18,
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              shadowColor: primaryColor,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: 'Rechercher un praticien',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, i) => Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                shadowColor: primaryColor,
                margin: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: 8,
                ),
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
                              image: DecorationImage(
                                image: AssetImage('assets/images/doctore.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dr. Anna Wells',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black),
                              ),
                              const SizedBox(height: 4),
                              Text(
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
                                      Text(
                                        '4.8',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 2),
                                  Text(
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
                                  child: Text('Prendre Rendez-vous'),
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
            ),
          ),
        ],
      ),
    );
  }
}
