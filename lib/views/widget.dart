import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class WidgetPage extends StatefulWidget {
  const WidgetPage({super.key});

  @override
  State<WidgetPage> createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetPage> {
  bool liked = false;
  Color heart_color = Colors.grey;
  Color darkblue = Color(0xFF0c1d37);
  Color brown = Color(0xFF37260c);
  Color light_gray = Color(0xFF727d90);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkblue,
        title: Text("Mission 1"),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: darkblue,
          // gradient: LinearGradient(
          //   begin: Alignment.topLeft,
          //   colors: [Colors.red.shade500, Colors.blue.shade500],
          //   end: Alignment.topRight,
          // ),
        ),
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.8), BlendMode.dstATop),
                      image: AssetImage('assets/images/bg.jpg'),
                    )),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: darkblue, width: 8),
                        color: brown,
                        shape: BoxShape.circle,
                      ),
                      margin: EdgeInsets.all(16),
                      child: FloatingActionButton(
                        backgroundColor: Colors.transparent,
                        onPressed: () {
                          setState(() {
                            liked = !liked;
                          });
                        },
                        child: Icon(Icons.favorite,
                            color: liked ? Colors.red : Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                          // border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/killua.jpg"),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                          // border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/gon.jpg"),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                          // border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/hisoka.jpg"),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                          // border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/shizuku.jpg"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 4,
              child: Column(
                children: [
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 3,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(
                                top: 4.0, bottom: 4.0, left: 24.0),
                            child: Text("HUNTER X HUNTER",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Futura',
                                )),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(
                                top: 4.0, bottom: 4.0, right: 24.0),
                            child: Text("2 October 2011",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: light_gray,
                                  fontSize: 12,
                                  fontFamily: 'Fontspring',
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: ListView(
                      padding: EdgeInsets.only(
                          top: 0.0, bottom: 24.0, left: 24.0, right: 24.0),
                      children: [
                        Text(
                            "The story follows a young boy named Gon Freecss, who was told all his life that both his parents were dead. But when he learns from Kite, an apprentice of his father Ging Freecss, that he is still alive and has since become an accomplished Hunter, Gon leaves his home on Whale Island (くじら島, Kujira Tō) to take the Hunter Examination (ハンター試験, Hantā Shiken) in order to become a Hunter like him. During the exam, Gon meets and befriends three of the other applicants: Kurapika, the last remaining member of the Kurta clan who wishes to become a Hunter in order to avenge his clan and recover their scarlet-glowing eyes that were plucked from their corpses by a band of thieves known as the Phantom Troupe; Leorio, a prospective physician who, in order to pay for medical school, desires the financial benefits that Hunters receive; and Killua Zoldyck, another twelve-year-old boy who has left his former life as a member of the world's most notorious assassin family.Among many other examinees, Gon continuously encounters Hisoka, a mysterious and deadly transmuter who takes an interest in him. After many trials together, Gon and his friends end up passing the exam except for Killua, who fails after killing another applicant due to the influence of his brother, Illumi, and runs away to his family's estate in shame.\n",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: light_gray,
                              fontWeight: FontWeight.w300,
                            )),
                        Text(
                            "After Gon and the others convince Killua to rejoin their side, Leorio and Kurapika depart temporarily for their own personal reasons, while Gon and Killua set for the Heavens Arena (天空闘技場, Tenkū Tōgijō), a skyscraper where thousands of martial artists compete daily in fighting tournaments, seeking to improve themselves and gain monetary rewards.There they meet Zushi, a fellow Heavens Arena applicant, who has a kung fu master named Wing who trains them in utilizing Nen, a Qi-like life energy used by its practicers to manifest parapsychological abilities, and is also considered to be the final requirement to pass the Hunter Exam. Sometime later, Gon and his friends reunite again in Yorknew City (ヨークシンシティ, Yōkushin Shiti) where they have a clash with the Phantom Troupe. During the occasion, two from the band of thieves are killed by Kurapika and he is forced to give up the chance of hunting down the rest in order to rescue Gon and Killua from captured, but not without succeeding in sealing the powers of their leader, Chrollo Lucilfer.\n",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: light_gray,
                              fontWeight: FontWeight.w300,
                            )),
                        Text(
                            "A few days later, Gon and Killua achieve their objective and begin playing Greed Island, an extremely rare and expensive video game with Nen-like properties following some clues about Ging's whereabouts.While exploring the game, it is revealed that its scenario is actually set somewhere in the real world, created with Nen by a team led by none other than Ging himself. Outclassed by the challenges in the game at first, they are soon joined and trained by Biscuit Krueger, an experienced teacher of Nen and kung fu master. With Biscuit's help, Gon and Killua train their Nen and learn to shape their abilities to their traits. Killua takes a short break from Greed Island to apply for the Hunter Examination again, this time passes with success. The trio then complete the game together against all odds and Gon obtains the right to choose the artifacts from the game necessary to reunite with his father.\n",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: light_gray,
                              fontWeight: FontWeight.w300,
                            )),
                        Text(
                            "Gon decides to have Killua accompany him to meet his father using the artifacts, but the duo are sent to meet Kite instead. They decide to help with Kite's research of a man-sized Chimera Ant queen, an insect that devours other creatures and then gives birth to progeny that inherit the characteristics of the different species it has eaten. The queen washes up onto an island nation called the Neo-Green Life (N.G.L.) Autonomous Region, where she quickly develops a taste for humans and builds a colony powerful enough to overcome the population, especially after her offspring learn the power of Nen from consuming Hunters. Upon facing the Royal Guard of the Chimera Ants, Kite sacrifices himself to allow Gon and Killua to flee and alert the Hunter Association. After weeks of preparation, the Association sends a team of some of their most powerful Hunters, including Netero, the president of the Association himself to defeat the Ants and their king Meruem, whose subjects secretly overthrew the government of the nearby Republic of East Gorteau (東ゴルトー共和国, Higashi Gorutō Kyouwakoku) as part of their plan of subduing all of mankind. Despite losing to Meruem in combat, Netero ends up killing him with a bomb implanted in his body that poisons him to death soon after. Meanwhile, Gon has a showdown with Neferpitou, the Ant who killed Kite. After overusing Nen to exact his revenge, he is hospitalized and in critical condition. After the Chimera Ant incident is resolved, the Hunter Association's top echelons the Zodiacs, from which Ging is a member, begin the process of choosing Netero's replacement as Chairman, while Killua returns home to ask for his younger sister Alluka to save Gon's life. His family is unwilling to risk losing Alluka or having her dangerous powers used against them, but after evading his older brother Illumi's attempts to intercept him, Killua manages to bring Alluka to Gon's side and have him fully restored. He then attempts to seal away Alluka's alter ego which grants them their power (Nanika, likely a creature from the Dark Continent), but at the last moment decides to revert the process rather than seal away Nanika Alluka's only other friend. Killua then parts ways with Gon to travel the world with Alluka, while Gon himself finally meets his father and learns the true nature of his quest.\n",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: light_gray,
                              fontWeight: FontWeight.w300,
                            )),

                        Text(
                            "Some time later, Netero's son Beyond assembles an expedition to the Dark Continent (暗黒大陸, Ankoku Tairiku), the forbidden, vast area outside of the known world; he is sponsored by the Kingdom of Kakin. Fearing that the expedition may bring disaster, just like in all previous attempts, the world's five greatest powers accept that Kakin join their ranks in exchange for full authority over its findings. To accompany Beyond and ensure his compliance, the Zodiacs decide to watch over him and invite Kurapika and Leorio to join them, replacing Ging and former Vice-Chairman Pariston Hill, who assembled their own Dark Continent exploration teams by Beyond's request.Meanwhile, Chrollo regains his powers and fulfills Hisoka's wish to have a duel with him, which ends with Hisoka defeated and killed. After reviving through Nen, Hisoka starts killing off the Phantom Troupe members one by one, who have boarded Kakin's ship to the Dark Continent to rob it. Aboard the ship, Nasubi, the king of Kakin, starts a battle to the death between his heirs to decide his successor. Kurapika, who also infiltrated the ship with other Hunters, takes part in the succession war as the bodyguard of Fourteenth Prince Wobble, Kakin's youngest prince and a toddler. Kurapika's personal objective, however, is to retrieve the last batch of scarlet eyes from the Kurta Clan in custody of Tserriednich, Kakin's Fourth Prince.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: light_gray,
                              fontWeight: FontWeight.w300,
                            )),
                        //
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
