
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2C2D3C), 
      appBar: AppBar(
        
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage('assets/profile.png'), 
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Привет!",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        "Катя",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
             
              Row(
                children: [
                  Icon(Icons.notifications, color: Colors.white),
                  SizedBox(width: 20),
                  Icon(Icons.mail, color: Colors.white),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: const TextSpan(
                          text: '14,000 / ',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          children: <TextSpan>[
                            TextSpan(
                                text: '15,000 шагов',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white)),
                                    
                          ],
                          
                        ),
                      ),
                     
                      const SizedBox(height: 8),

                     
                      Container(
                        height: 8,
                        width: MediaQuery.of(context).size.width * 0.62,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade800,
                        ),
                        child: FractionallySizedBox(
                          alignment: Alignment.centerLeft,
                          widthFactor: 0.93,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.greenAccent,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                   const Text("Уровень 5",
                          style: TextStyle(color: Colors.yellow,)),
                  
                  const Column(
                    children: [
                      
                       CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage('assets/stare.png'), 
                  ),
                    ],
                  ),
                  
                ],
              ),
              const SizedBox(height: 20),

              
               const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  InfoCard(
                    label: "Шагов",
                    value: "53,524",
                    asset: AssetImage('assets/Vector.png'),
                  ),
                  
                  InfoCard(
                    label: '''Заработано 
   баллов''',
                    value: "1000",
                   asset: AssetImage('assets/coin.png'),
                  ),
                ],
              ),
              const SizedBox(height: 20),

             
              Container(
                height: 150 ,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue.shade400,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Поделись и получи",
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Text(
                              "Получите 2 балла за каждый шаг",
                              style: TextStyle(color: Colors.white70, fontSize: 12),
                            ),
                          ],
                        ),
                        
                      ],
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white30,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      icon: const Icon(Icons.share, color: Colors.white),
                      label: const Text("Поделиться",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
                
              ),

              const SizedBox(height: 20),

              // History Section
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "История",
                    style: TextStyle(
                        color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Смотреть все",
                    style: TextStyle(color: Colors.purpleAccent, fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // History List (Example)
              const HistoryItem(date: "19 сентября", points: "100 pt", steps: "10,120", distance: "12,4 km", calories: "1222 kcal"),
              const HistoryItem(date: "27 Мая", points: "50 pt", steps: "8,500", distance: "9.3 km", calories: "923 kcal"),
            ],
          ),
        ),
      ),
      // Bottom Navigation Bar
      
    );
  }
}

class InfoCard extends StatelessWidget {
  final String label;
  final String value;
  final AssetImage asset;

  const InfoCard({super.key, required this.label, required this.value, required this.asset});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: const Color(0xFF3B3C4A),
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        height: 100,
        child: Column(
          
          children: [
            
            const SizedBox(height: 10),
            Text(
              value,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                  CircleAvatar(
                      radius: 10,
                       backgroundImage: asset, 
                       backgroundColor: Colors.transparent ,
                    ),
                Center( 
                  child: Text(
                    label,
                    softWrap: true,  
                    style: const TextStyle(color: Colors.white, fontSize: 14, ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HistoryItem extends StatelessWidget {
  final String date;
  final String points;
  final String steps;
  final String distance;
  final String calories;

  const HistoryItem(
      {super.key, required this.date,
      required this.points,
      required this.steps,
      required this.distance,
      required this.calories});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF3B3C4A),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            date,
            style: const TextStyle(color: Colors.pinkAccent, fontSize: 14),
          ),
          Text(
            "$steps Шагов",
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            "$points • $distance • $calories",
            style: const TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
