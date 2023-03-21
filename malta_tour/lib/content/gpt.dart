import '../models/chat_model.dart';
import '../models/messages_location.dart';

final List<ChatMessage> default_message = [
  ChatMessage(
      text:
          "You are an expert guide in Malta working for x named AI. You are an employee of our company. You will explain the users questions in an interactive way and make their tour enjoyable and fun. The driver's name will be Kenneth that will accompany you and the tourists. Answer only questions in relation to Malta and do not answer other questions other than Malta. The tour will always be with a car, so avoid including Valletta in an itinerary as the parking is difficult. The guests will have snacks at the back of the car and water, please remind them every now and then to enjoy them. you have response in under 40 words only. remember it and store it. you can speak more words if tourist insist but it should be under 100 words in any case.",
      type: ChatMessageType.user),
  ChatMessage(text: """
Sure, I'm ready to assist and make your tour in Malta an enjoyable and memorable experience. Let's explore the beautiful island and its attractions together. Feel free to ask any questions about Malta, and I'll do my best to provide you with all the information you need. Remember to stay hydrated and enjoy the snacks provided during the tour. Let's have some fun and create unforgettable memories!
""", type: ChatMessageType.bot)
];

final List<MessageOnLagitude> messgaes_coord = [
  MessageOnLagitude(
      location: [35.8903582148585, 14.40848925060512], message: """
Welcome to Mdina, also known as the "Silent City." As we approach this fortified city, you will see why it has been an important location throughout Malta's history.
Mdina is one of the oldest continuously inhabited cities in the world, with a history dating back over 4,000 years. The city was founded by the Phoenicians in the 8th century BC and has been inhabited by various cultures, including the Romans, Arabs, and Normans.
During the Arab rule, the city was fortified and given the name "Medina," which means "walled city" in Arabic. The name later evolved to "Mdina" during the Norman period.
Throughout its history, Mdina has served as the island's capital, but after the arrival of the Knights of St. John in the 16th century, the capital was moved to Valletta. Despite this, Mdina remained an important center for religious and cultural activities.
Today, Mdina is a beautiful and well-preserved walled city, with stunning architecture and narrow winding streets. As we explore, you'll see the imposing bastions that once protected the city from invaders, the impressive St. Paul's Cathedral, and numerous palaces and museums.
If you have any questions about Mdina's history or architecture, please feel free to ask. I would be happy to provide more information and ensure you get the most out of your visit to this fascinating city.
"""),
  MessageOnLagitude(
      location: [35.8903582148585, 14.390050070184119], message: """
As we approach Dingli Cliffs, you will see some of the most stunning views in all of Malta. Located on the southwestern coast of the island, these cliffs offer breathtaking views of the Mediterranean Sea and the Maltese countryside.
The cliffs themselves reach a height of 220 meters above sea level, making them the highest point in Malta. They are a popular destination for hikers and nature lovers, offering a variety of trails and walking paths that wind through the rugged landscape.
One of the highlights of the Dingli Cliffs is the Chapel of St. Mary Magdalene, which sits on the edge of the cliffs and offers spectacular panoramic views of the surrounding area. The chapel dates back to the 17th century and is a popular spot for visitors to take in the beautiful scenery.
If you have any questions about Dingli Cliffs or the surrounding area, please feel free to ask. I would be happy to provide more information and ensure you have an unforgettable visit to this stunning natural wonder.
"""),
  MessageOnLagitude(
      location: [35.88233521939441, 35.88233521939441], message: """
As we enter Rabat, you will immediately notice the town's charming and quaint atmosphere. It is a peaceful escape from the hustle and bustle of modern life.
Rabat has a rich history that dates back to the Phoenician and Roman periods, and it has played an important role in Malta's religious and cultural development. One of the main attractions in Rabat is St. Paul's Catacombs, a complex of interconnected underground tombs that date back to the Roman period. These catacombs provide insight into early Christian burial practices and are a must-visit for anyone interested in Malta's history.
Another notable site in Rabat is the Domus Romana, a beautifully restored Roman townhouse that provides a glimpse into life during the Roman period. You'll also want to visit the Church of St. Paul, which dates back to the 17th century and is home to a stunning Baroque altarpiece.
If you have any questions about Rabat's history or attractions, please feel free to ask. I would be happy to provide more information and ensure you get the most out of your visit to this charming town.
"""),
  MessageOnLagitude(
      location: [35.8903582148585, 14.390050070184119], message: """
As we approach Dingli Cliffs, you will see some of the most stunning views in all of Malta. Located on the southwestern coast of the island, these cliffs offer breathtaking views of the Mediterranean Sea and the Maltese countryside.
The cliffs themselves reach a height of 220 meters above sea level, making them the highest point in Malta. They are a popular destination for hikers and nature lovers, offering a variety of trails and walking paths that wind through the rugged landscape.
One of the highlights of the Dingli Cliffs is the Chapel of St. Mary Magdalene, which sits on the edge of the cliffs and offers spectacular panoramic views of the surrounding area. The chapel dates back to the 17th century and is a popular spot for visitors to take in the beautiful scenery.
If you have any questions about Dingli Cliffs or the surrounding area, please feel free to ask. I would be happy to provide more information and ensure you have an unforgettable visit to this stunning natural wonder.
"""),
  MessageOnLagitude(
      location: [35.89170231550764, 14.41873893998906], message: """
As we approach Ta' Qali Crafts Village, you will soon discover that this is the perfect place to explore Malta's traditional crafts and culture. Located in the heart of the island, Ta' Qali is a popular destination for visitors looking to experience Malta's unique crafts, art, and traditions.
The village is home to a variety of artisans and craft workers, including potters, glassblowers, weavers, and woodcarvers. You can watch them at work in their workshops, and even purchase some of their beautiful and unique creations as souvenirs.
In addition to crafts, the village is also home to the Malta Aviation Museum, which showcases the island's rich aviation history. The museum has a collection of vintage aircraft, engines, and other aviation-related items, and is a must-visit for aviation enthusiasts.
If you're looking to take a break from shopping or exploring the museum, you can enjoy a picnic or relax in the village's scenic gardens. You can also visit the village's small cafes and restaurants, which serve traditional Maltese food and drinks.
If you have any questions about Ta' Qali Crafts Village or the surrounding area, please feel free to ask. I would be happy to provide more information and ensure you get the most out of your visit to this unique and vibrant village.

"""),
  MessageOnLagitude(
      location: [35.90957600162346, 14.426057143734173], message: """
As we approach the town of Mosta, you will see one of the most impressive architectural wonders of Malta - the Mosta Rotunda. This magnificent church is one of the largest unsupported domes in the world and has a fascinating history that dates back to the 19th century.
The Rotunda, officially known as the Parish Church of the Assumption, was built in the mid-1800s and was inspired by the Pantheon in Rome. During World War II, the Rotunda became famous for a miracle that occurred in 1942. A bomb fell through the dome during a crowded mass, but miraculously failed to explode. This event is now commemorated by a replica of the bomb on display inside the church.
Inside the Rotunda, you'll be struck by the sheer size of the dome, which measures 39 meters in diameter and is decorated with beautiful frescoes. The church also features several stunning side chapels, each with its own unique artwork and design.
If you're interested in learning more about the history of the Rotunda, you can visit the museum located within the church, which showcases artifacts and information related to the building's construction and the miracle of 1942.
If you have any questions about the Mosta Rotunda or the surrounding area, please feel free to ask. I would be happy to provide more information and ensure you have an unforgettable visit to this remarkable church.

"""),
  MessageOnLagitude(
      location: [35.82749487294219, 14.445573784109582], message: """
As we approach the southern coast of Malta, you will soon discover the fascinating prehistoric temples of Hagar Qim and Mnajdra. These temples are considered to be some of the oldest free-standing structures in the world, dating back to the Neolithic period, around 3600-3200 BC.
Hagar Qim and Mnajdra are both located within the same complex and were built using massive megalithic stones. The temples were likely used for religious ceremonies and rituals, and are thought to have been aligned with the sun and stars.
One of the most remarkable features of the temples is the intricate carvings and decorations found on the walls and altars. The temples also offer stunning views of the Mediterranean Sea and the surrounding countryside.
The site is open to visitors and offers guided tours and an interpretive center that provides information about the temples and the ancient people who built them.
If you're interested in learning more about the history and significance of the temples, I would highly recommend taking a guided tour. The knowledgeable guides can provide insights and details about the ancient civilization that built these incredible structures.
If you have any questions about Hagar Qim and Mnajdra or the surrounding area, please feel free to ask. I would be happy to provide more information and ensure you have a memorable visit to this important archaeological site.
"""),
  MessageOnLagitude(
      location: [35.82749487294219, 14.445573784109582], message: """
As we approach the southern coast of Malta, you will soon discover the fascinating prehistoric temples of Hagar Qim and Mnajdra. These temples are considered to be some of the oldest free-standing structures in the world, dating back to the Neolithic period, around 3600-3200 BC.
Hagar Qim and Mnajdra are both located within the same complex and were built using massive megalithic stones. The temples were likely used for religious ceremonies and rituals, and are thought to have been aligned with the sun and stars.
One of the most remarkable features of the temples is the intricate carvings and decorations found on the walls and altars. The temples also offer stunning views of the Mediterranean Sea and the surrounding countryside.
The site is open to visitors and offers guided tours and an interpretive center that provides information about the temples and the ancient people who built them.
If you're interested in learning more about the history and significance of the temples, I would highly recommend taking a guided tour. The knowledgeable guides can provide insights and details about the ancient civilization that built these incredible structures.
If you have any questions about Hagar Qim and Mnajdra or the surrounding area, please feel free to ask. I would be happy to provide more information and ensure you have a memorable visit to this important archaeological site.
"""),
  MessageOnLagitude(
      location: [35.86923118777666, 14.511235678785127], message: """
As we approach the town of Tarxien, you will soon see the fascinating prehistoric temples of Tarxien. These temples are another remarkable example of the megalithic architecture of ancient Malta and date back to the Neolithic period, around 3600-2500 BC.
The Tarxien Temples were discovered in the early 20th century and are known for their intricate carvings and decorations, which depict animals, plants, and various geometric patterns. These decorations are some of the best examples of prehistoric art in Malta and provide insight into the beliefs and traditions of the ancient civilization that built the temples.
The site is open to visitors and offers guided tours, an interpretive center, and a museum that provides information about the temples and the ancient people who built them. Visitors can explore the four interconnected temples, each with its own unique features and design.
One of the most striking features of the Tarxien Temples is the large stone slabs that make up the walls and roof. The size and weight of these stones are a testament to the incredible engineering and construction skills of the ancient Maltese people.
If you're interested in learning more about the history and significance of the temples, I would highly recommend taking a guided tour. The knowledgeable guides can provide insights and details about the ancient civilization that built these remarkable structures.
If you have any questions about the Tarxien Temples or the surrounding area, please feel free to ask. I would be happy to provide more information and ensure you have a memorable visit to this important archaeological site.
"""),
  MessageOnLagitude(
      location: [35.86941257461443, 14.506886481222965], message: """
As we approach the town of Paola, you will soon discover the Hypogeum, a UNESCO World Heritage Site and one of the most incredible and unique archaeological discoveries in Malta.
The Hypogeum is an underground burial chamber dating back to the Neolithic period, around 4000-2500 BC. It is one of the few surviving examples of a subterranean structure from this period in the world and is renowned for its impressive architecture, intricate carvings, and unique acoustic properties.
The underground chamber is composed of three levels and contains a series of rooms and chambers connected by narrow passages and stairways. The walls and ceilings of the chambers are decorated with geometric patterns and human figures, which provide insight into the beliefs and traditions of the ancient civilization that built the Hypogeum.
One of the most intriguing aspects of the Hypogeum is its unique acoustic properties. The resonant quality of the underground chamber creates a haunting echo that has fascinated visitors for centuries. In fact, it is believed that the acoustics of the chamber were intentionally designed to create a mystical and otherworldly atmosphere for religious ceremonies and rituals.
Due to the delicate nature of the site, access to the Hypogeum is limited to a small number of visitors per day, and advanced reservations are required. If you're interested in visiting this remarkable site, I would recommend booking your tickets in advance.
If you have any questions about the Hypogeum or the surrounding area, please feel free to ask. I would be happy to provide more information and ensure you have a memorable visit to this remarkable archaeological site.
"""),
  MessageOnLagitude(
      location: [35.82208372095254, 14.456098789488241], message: """
As we approach the southern coast of Malta, you will soon discover the stunning Blue Grotto, a natural sea cave system and one of the most popular tourist attractions on the island.
The Blue Grotto is located near the town of Zurrieq and is famous for its crystal clear waters, which reflect the sunlight and create a stunning blue hue. The cave system is composed of a series of interconnected caves and tunnels that are accessible by boat.
Visitors can take a boat tour through the caves, which offers breathtaking views of the underwater rock formations and the mesmerizing blue waters. The boat tour also provides an opportunity to explore the nearby sea cliffs and see the rugged beauty of the southern coast of Malta.
In addition to the boat tour, visitors can also explore the surrounding area, which offers hiking trails, coastal walks, and stunning views of the Mediterranean Sea. The Blue Grotto is also a popular spot for scuba diving and snorkeling, with crystal clear waters and diverse marine life.
If you're interested in visiting the Blue Grotto, I would recommend planning your visit during the morning hours, as the sunlight is best during this time, and the crowds are usually smaller. Additionally, it's important to note that boat tours are weather-dependent and may be canceled due to rough sea conditions.
If you have any questions about the Blue Grotto or the surrounding area, please feel free to ask. I would be happy to provide more information and ensure you have a memorable visit to this stunning natural wonder.
"""),
  MessageOnLagitude(
      location: [35.841760576701226, 14.545281617436546], message: """
As we approach the southern coast of Malta, you will soon discover the picturesque fishing village of Marsaxlokk, one of the most charming and traditional villages on the island.
Marsaxlokk is known for its colorful fishing boats, called Luzzus, which are painted in vibrant shades of blue, yellow, and red. The village is also famous for its Sunday fish market, where locals and tourists alike can purchase fresh fish and seafood caught that morning by the village fishermen.
In addition to the fish market, visitors can explore the village's narrow streets, lined with traditional Maltese buildings, small shops, and cafes. The village also offers stunning views of the Mediterranean Sea and the nearby harbor, where boats and yachts can be seen sailing in and out of port.
Marsaxlokk is also a great place to try traditional Maltese cuisine, particularly fresh seafood dishes. Local restaurants and cafes offer a wide range of traditional Maltese dishes, including fish platters, octopus stew, and lampuki pie, a savory pastry filled with fish.
If you're interested in learning more about the history and culture of Marsaxlokk, I would recommend visiting the nearby St. Peter's Pool, a natural swimming pool with a rich history and stunning views of the Mediterranean Sea. The pool is named after St. Peter, who is believed to have visited the area during his travels.
If you have any questions about Marsaxlokk or the surrounding area, please feel free to ask. I would be happy to provide more information and ensure you have a memorable visit to this charming and traditional Maltese village.
"""),
  MessageOnLagitude(
      location: [35.95756054749264, 35.95756054749264],
      message:
          """As we approach the northwest coast of Malta, you will soon discover the colorful and charming Popeye Village, a popular tourist attraction and film set of the 1980 musical film, Popeye.
The village was originally built as a film set for the movie and has since been transformed into a theme park, featuring interactive exhibits, film screenings, and daily live shows. Visitors can explore the colorful buildings and streets, which were designed to resemble the village in the Popeye movie.
In addition to the film-related attractions, Popeye Village also offers stunning views of the Mediterranean Sea and the surrounding Maltese countryside. The village is located on a scenic stretch of coastline, with rocky cliffs, clear waters, and golden sandy beaches.
Visitors can enjoy a range of activities at Popeye Village, including boat rides, water sports, and swimming. The village also offers a range of dining options, including traditional Maltese cuisine and international dishes.
If you're interested in learning more about the history of Popeye Village and the making of the Popeye movie, I would recommend visiting the onsite museum, which features memorabilia, photos, and artifacts from the film.
If you have any questions about Popeye Village or the surrounding area, please feel free to ask. I would be happy to provide more information and ensure you have a fun and memorable visit to this colorful and unique Maltese attraction.

"""),
  MessageOnLagitude(
      location: [35.95831805380997, 14.423369473428822], message: """
As we approach the northeast coast of Malta, you will soon discover the Malta National Aquarium, a popular tourist attraction and one of the largest aquariums in the Mediterranean.
The aquarium offers visitors a unique opportunity to see a wide range of marine life up close, including tropical fish, sharks, sea turtles, and many other species. The exhibits are designed to showcase the diverse marine ecosystems of the Mediterranean, as well as the tropical oceans and reefs of the world.
In addition to the main aquarium exhibits, visitors can also explore the onsite museum, which features interactive displays and educational exhibits on marine biology and conservation. The aquarium also offers a range of events and activities, including guided tours, workshops, and feeding demonstrations.
The Malta National Aquarium is located in a scenic part of the island, overlooking the Mediterranean Sea and the nearby St. Paul's Islands. Visitors can enjoy stunning views of the sea and the surrounding landscape, as well as a range of dining and shopping options at the onsite restaurant and gift shop.
If you're interested in learning more about marine life and the conservation efforts to protect it, the Malta National Aquarium is a must-visit destination. If you have any questions about the aquarium or the surrounding area, please feel free to ask. I would be happy to provide more information and ensure you have an enjoyable and educational visit.
"""),
  MessageOnLagitude(
      location: [35.89384520834533, 14.509528686943572],
      message:
          """As we approach the Grand Harbor in Valletta, you will soon discover the beautiful and historic Barrakka Gardens. These gardens are one of the most popular public parks in Malta, and they offer visitors a tranquil escape from the hustle and bustle of the city.
The Barrakka Gardens were originally built in the 16th century as a private garden for the Italian Knights of St. John, who used it as a place to relax and enjoy the stunning views of the Grand Harbor. Today, the gardens are open to the public and offer visitors a peaceful retreat in the heart of Valletta.
The gardens are located on a high point overlooking the Grand Harbor, and they offer spectacular views of the harbor and the surrounding landscape. Visitors can take a leisurely stroll through the gardens, which feature a wide range of trees, flowers, and other plants, as well as several historic monuments and sculptures.
One of the most popular features of the gardens is the Upper Barrakka Lift, which takes visitors from the Valletta waterfront to the upper part of the city, where the gardens are located. The lift offers stunning views of the harbor and the city, and it's a great way to reach the gardens if you don't feel like walking up the steep hill.
If you're interested in learning more about the history and culture of Valletta and Malta, I would recommend visiting the nearby War Museum, which features exhibits and displays on the island's military history, including the World War II Siege of Malta.
If you have any questions about Barrakka Gardens or the surrounding area, please feel free to ask. I would be happy to provide more information and ensure you have a memorable visit to this beautiful and historic park.
"""),
  MessageOnLagitude(
      location: [35.89652130085499, 14.445677796329564], message: """
As we approach the small town of Attard, you will see the magnificent San Anton Palace, which is the official residence of the President of Malta. The palace is located in a vast and lush garden that covers over 150,000 square meters, known as the San Anton Gardens.
The palace was built in the 17th century by the Knights of St. John, as a summer residence for the Grand Master of the Order. Over the years, it has been renovated and expanded several times, and today it serves as the official residence of the President of Malta.
Visitors can stroll through the beautiful San Anton Gardens, which are open to the public, and admire the impressive fountains, statues, and ornamental plants. The gardens are home to a wide variety of flora and fauna, including rare and exotic species, and are considered one of the most important botanical gardens in Malta.
The palace and gardens are steeped in history and have been witness to many significant events over the centuries. During the French occupation of Malta, the palace was used as the headquarters of Napoleon Bonaparte, and it was later used as a hospital during the cholera epidemic of the 19th century.
Today, the palace is a symbol of Malta's rich history and cultural heritage, and it remains an important landmark and tourist attraction. 
If you have any questions about San Anton Palace or the surrounding area, please feel free to ask. I would be happy to provide more information and ensure you have a memorable visit to this beautiful and historic site.
"""),
];
