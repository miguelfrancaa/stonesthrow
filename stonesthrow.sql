-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 16-Maio-2023 às 23:54
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `stonesthrow`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `artists`
--

CREATE TABLE `artists` (
  `artist_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `description_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `artists`
--

INSERT INTO `artists` (`artist_id`, `name`, `description`, `photo`, `description_photo`) VALUES
(1, 'J Dilla', 'J Dilla aka James Yancey, Jay Dee 1974-2006 Stones Throw began working with J Dilla in the early days of his solo career in the early 2000s. He would soon collaborate with Madlib in the group Jaylib, and eventually releasing the solo album Donuts on Stones Throw in 2006, which has come to be regarded as one of his signature works. J Dilla passed away on the morning of February 10th, 2006 at the age of 32. He had suffered for over three years with an incurable blood disease, and had also been diagnosed with lupus. He left behind a body of work which will be loved and rediscovered for years to come. Born and raised on the east side of Detroit, Dilla -- James Yancey -- was forced by his parents to become involved with music, and he was a record fanatic at a young age, absorbing funk and rap singles and jazz albums, from Slave to Jack McDuff. He learned to play cello, keyboards, trumpet, and violin, but drums got him like nothing else. He tried his hand at producing tracks on a tape deck by using the pause and record buttons, and he also took up MC\'ing. In 1988, he formed Slum Village with Pershing High School friends Baatin and T3. It wasn\'t until 1992, after receiving some valuable guidance from fellow Detroiter Amp Fiddler, that his talent really began to take shape. A session keyboardist who had worked with Prince, Parliament, and Enchantment, Fiddler taught Dilla how to use the Midi Production Center drum machine. Dizzying quantity of posthumous albums, EPs, and singles, most notably a greatly expanded edition of the Ruff Draft EP, were issued throughout the decade that followed.\r\nIn 2014, Dilla\'s mother, who was involved in many of those releases, donated her son\'s MPC and Minimoog Voyager synthesizer to the Smithsonian\'s National Museum of African American History and Culture. The Diary of J Dilla, which originated as an early-2000s project for MCA, saw release in 2016. MCA had signed Dilla for his reputation as a beat maker, but Dilla confounded the major label by switching to MC mode and enlisting the likes of comrades House Shoes, Waajeed, Madlib, and Pete Rock as producers. After an extended period that entailed major legal obstacles and the recovery of recordings, the album was released in 2016 on the reactivated Pay Jay label through Mass Appeal. Yet another poshumous release arrived in 2017. Titled Motor City, that set consisted of previously unreleased instrumentals selected and sequenced by Maureen Yancey. Donuts, an album of instrumentals that Dilla completed during one of his extended hospital stays, was released on February 7, 2006, his 32nd birthday. Three days later, while staying at his Los Angeles home with his mother, Maureen \"Ma Dukes\" Yancey, he passed away, a victim of cardiac arrest.', 'jdilla.png', 'jdilla2.jpeg'),
(2, 'Knxwledge', 'Glen Earl Boothe (born March 8, 1988), professionally known as Knxwledge (pronounced \"knowledge\"), is an American hip hop record producer and songwriter based in Los Angeles, California. Since 2009, he has had over 100 releases via Bandcamp. In 2010, he released his debut album Klouds via All City. In 2012, he released a 53-track retrospective compilation on cassette, which was released by Leaving Records. His songs are often a mix of various genres, such as jazz, soul, old-school hip hop, and modern rap.\r\n\r\nIn 2015, he released his debut album for Stones Throw Records, Hud Dreems, and produced the track \"Momma\" on Kendrick Lamar\'s junior release, To Pimp a Butterfly, which went on to win Best Rap Album at the 58th annual Grammy Awards in 2016.[6] His work alongside Anderson .Paak as the duo NxWorries has received critical acclaim. In March 2020 he released 1988, his second album for Stones Throw. Any day that Knxwledge decides to release some of his vast library is a great day. It always sets an easy mood, while the nuances of each track keep that mood feeling fresh all the whole way through. Stream Knxwledge’s new projects, 10,000 Proof and Koko. Both of these digital efforts follow two Bandcamp exclusive releases from a few days prior. Knx debuted the next installment of his Musiq Soulchild.', 'knxwledge.png', 'knxwledge2.jpeg'),
(3, 'Eddie Chacon', '“Low-key R&B legend\" Eddie Chacon made an indelible mark in popular music as half of the duo Charles & Eddie, whose 1992 single “Would I Lie to You” was a number one hit heard around the world. The group’s 4-million-records-sold rocket to the stars lasted a few years, and Eddie spent the next couple of decades carving out a career as a photographer and creative director. He returned to music in 2020 in collaboration with John Carroll Kirby, and signed to Stones Throw Records in 2022.', 'eddiechacon.png', 'eddiechacon1.jpeg'),
(4, 'MF Doom', 'Daniel Dumile, best known by his stage name MF Doom or simply Doom (both stylized in all caps), was a British-American rapper and record producer. Noted for his intricate wordplay, signature metal mask, and \"supervillain\" stage persona, Dumile became a major figure of underground hip hop and alternative hip hop in the 2000s. After his death, Variety described him as one of the scene\'s \"most celebrated, unpredictable and enigmatic figures\".\r\n\r\nBorn in London, Dumile moved to Long Island, New York, at a young age. He began his career in 1988 as a member of KMD, performing as Zev Love X. The group disbanded in 1993 upon the death of member DJ Subroc, Dumile\'s brother. After a hiatus, Dumile reemerged in the late 1990s. He began performing at open mic events while wearing a metal mask resembling that of Marvel Comics supervillain Doctor Doom, who is depicted on the cover of his 1999 debut solo album Operation: Doomsday. He adopted the MF Doom persona and rarely made unmasked public appearances thereafter.\r\n\r\nBetween 2003 and 2005, Dumile released four solo albums and three collaborative albums. In addition to the critically acclaimed Mm..Food (2004) under the MF Doom moniker, he released solo albums including one under the pseudonym King Geedorah and two as Viktor Vaughn. Madvillainy (2004), recorded with producer Madlib under the name Madvillain, is often cited as Dumile\'s magnum opus and is regarded as a landmark album in hip hop.[6] In 2005, Dumile released The Mouse and the Mask with producer Danger Mouse as Danger Doom.\r\n\r\nThough he lived the majority of his life in the United States, Dumile never gained American citizenship. In 2010, he was denied reentry after returning from an international tour for his sixth and final solo album, Born Like This (2009). He relocated to London and, in his final years, worked mostly in collaboration with other artists, releasing albums with Jneiro Jarel (as JJ Doom), Bishop Nehru (NehruvianDoom), and Czarface (Czarface Meets Metal Face and the posthumous Super What?).', 'mfdoom.png', 'mfdoom2.png'),
(5, 'The Steoples', 'The Steoples are GB (aka Gifted & Blessed, Frankie Reyes) and Yeofi (aka A Race of Angels). GB also produces music as Frankie Reyes on Stones Throw. Yeofi is originally from rural England, having played with several UK-based bands before moving to Los Angeles. Together as The Steoples, their music draws on an eclectic range of sounds: from Latin rhythms to ‘80s soul and sombre tones of folk fused with R&B.', 'thesteoples.png', 'thesteoples.png'),
(6, 'Sudan Archives', 'Sudan Archives is a violinist and vocalist who writes, plays, and produces her own music. Drawing inspiration from Sudanese fiddlers, she is self-taught on the violin, and her unique songs also fold in elements of R&B, experimental electronic music, and beat-making. She signed to Stones Throw Records in 2017.\r\n\r\nSudan Archives grew up in Cincinnati where she “messed around with instruments in the house” and took up violin in the fourth grade, teaching herself how to play the instrument by ear. When she discovered the violin playing style of Northeast Africa her eyes opened to the possibilities of the instrument. “The way they played it was different from classical music. I resonated with the style,’“ she says. She began mixing my violin into beats, fusing of folk music and electronic production. She honed her at-home style after moving to Los Angeles aged 19 to study music technology.', 'sudanarchives.png', 'sudanarchives2.png'),
(7, 'Madvillain', 'MF Doom and Madlib are Madvillain. The two met in 2002 and soon began working on Madvillainy which would be finished over the next year and released in 2004. The album went against the grain of all popular conventions in contemporary hip-hop: short songs, dirty sound, no choruses, and with lyrical themes which were not always clear to everyone on first listen. The album received the highest critical praise of a hip-hop album released in 2004, and years later has continued to generate interest and controversy. Doom and Madlib have worked on a second Madvillain album on and off for several years. If you\'re waiting for it, wait in line behind us.', 'madvillain.jpeg', 'madvillain2.jpeg'),
(8, 'Sudan Archives', 'Sudan Archives is a violinist and vocalist who writes, plays, and produces her own music. Drawing inspiration from Sudanese fiddlers, she is self-taught on the violin, and her unique songs also fold in elements of R&B, experimental electronic music, and beat-making. She signed to Stones Throw Records in 2017.\r\n\r\nSudan Archives grew up in Cincinnati where she “messed around with instruments in the house” and took up violin in the fourth grade, teaching herself how to play the instrument by ear. When she discovered the violin playing style of Northeast Africa her eyes opened to the possibilities of the instrument. “The way they played it was different from classical music. I resonated with the style,’“ she says. She began mixing my violin into beats, fusing of folk music and electronic production. She honed her at-home style after moving to Los Angeles aged 19 to study music technology.', 'sudanarchives.png', 'sudanarchives2.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `parent_id`) VALUES
(1, 'Music', NULL),
(2, 'Merch', NULL),
(3, 'Vinyl', 1),
(4, '45s', 1),
(5, 'CD', 1),
(6, 'Cassette', 1),
(7, 'Clothing', 2),
(8, 'Acessories', 2),
(9, 'Artworks', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `events`
--

CREATE TABLE `events` (
  `event_id` int(10) UNSIGNED NOT NULL,
  `local` varchar(32) NOT NULL,
  `event_date` date NOT NULL,
  `mode` varchar(32) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `artist_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `events`
--

INSERT INTO `events` (`event_id`, `local`, `event_date`, `mode`, `link`, `artist_id`) VALUES
(1, 'Primavera Sound Porto', '2023-06-08', 'Festival - Live Concert', 'https://www.primaverasound.com/pt/porto/tickets-2023', 2),
(2, 'London', '2023-05-17', 'Live Concert', 'https://www.songkick.com/concerts/40865019-eddie-chacon-at-koko', 3),
(3, 'WorldWide', '2023-09-07', 'Free Livestream', 'https://www.instagram.com/sudanarchives/', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `news`
--

CREATE TABLE `news` (
  `new_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `content2` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `imageCarroussel` varchar(255) NOT NULL,
  `top` smallint(5) UNSIGNED DEFAULT NULL,
  `leftpx` smallint(5) UNSIGNED DEFAULT NULL,
  `artist_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `news`
--

INSERT INTO `news` (`new_id`, `title`, `content`, `content2`, `image`, `video`, `imageCarroussel`, `top`, `leftpx`, `artist_id`, `created_at`) VALUES
(1, 'Eddie Chacon – Sundown', '“Low-key R&B legend” Eddie Chacon’s first album with Stones Throw, Sundown, is out now. Twelve new songs, produced by and written with John Carroll Kirby.\r\n\r\nEddie’s story is by now well known: after achieving stratospheric success as one half of the duo Charles & Eddie, whose hit “Would I Lie To You” topped charts around the world, Chacon took over two decades away from the music industry. Meeting John Carroll Kirby in 2019 inspired his return to music.\r\n\r\n', 'Sundown is about “being humbled by how little time we have on this earth.” Eddie said to Crack Magazine: “I was away from music for over 20 years. As you get older, as an artist, youth culture becomes very intimidating. You start to ask yourself, ‘Is there a place here for me? Where do I fit into this?’”\r\n\r\nAfter releasing the 2020 album Pleasure, Joy and Happiness, which was a word-of-mouth hit, Eddie realized he had more left in the tank. Eddie and John recorded Sundown at 64 Sound Studios in Northeast LA. The first half was created in Ibiza, Spain for a few weeks. A fan and his family lent Eddie their “Villa Can Rudayla” after following Eddie’s return, wanting the space to inspire creativity.\r\n\r\n“I didn’t want to fight my age. I wanted to make something that you’d have to be my age and have the life experience that I’ve had to make,” Eddie said in a recent interview with The Fader. “But sometimes when you embark on something it’s almost as if you need to give yourself permission… I wanted to do something that was tender and kind. And I also wanted to do something that was counter to the pop industry. I wanted it to be a meditative experience.”', 'eddiechaconsundown.jpeg', '5z2FD5SYgew', 'eddiechaconcarroussel.jpeg', 35, 20, 3, '2023-05-04 18:52:15'),
(2, 'Madvillain on vinyl', 'Our Madvillain records by MF DOOM & Madlib have been in print ever since their original release. Here’s what we released.\r\n\r\nMoney Folder & Most Blunted 12″ EP (2003)  \r\nCurls & All Caps 12″ EP (2004)  \r\nMadvillainy 2/LP (2004)  \r\nMadvillainy Instrumentals 2/LP (2004)  \r\nFour Tet Remixes 12″ EP (2005)  \r\nMadvillainy 2: The Madlib Remix 2/LP (2008)  \r\n\r\n', 'Digging a little deeper, here’s the other Madvillain records we’ve released. There was Curls & All Caps (Radio Promo) made for DJs in c. late 2003 or early 2004, a few of which had painted covers. The original release of “One Beer” came out as a promo-only 7-inch single in 2004, about 1000 copies were pressed. Four Tet & Koushik remixes came out on a single CD and two limited runs of vinyl without sleeves in 2005. Out of nowhere Madlib remixed the entire album in 2008. We first released this as a box set containing the new remix album, the demos on tape, and some other things. There were a couple special editions of Madvillainy on vinyl – the 10th anniversary one, and the “Sire” edition  – both of these were the normal record with some fresh packaging.', 'madvillainonvinyl.jpeg', 'Q5fQmbiEA9A&ab', 'madvillainyonvinyl2.png', 65, 20, 4, '2023-05-06 09:29:16'),
(3, 'Automatic Demo Tape', 'When we signed Automatic last year they had this fantastic 6-track demo tape. It’s available today for Bandcamp Friday.\r\n\r\nAutomatic Demo on Bandcamp | on Stones Throw\r\n\r\nThe band is: Izzy Glaudini-synths, vocals, Lola Dompé-drums, vocals, and Halle Saxon- bass, vocals.', NULL, 'automaticdemotape.jpeg', '5QH6j6n9NTI', 'theautomaticdemotapeback.png', 35, 20, NULL, '2023-05-06 13:16:08'),
(4, 'The Steoples - Alas Alice', 'The Steoples are the avant-soul duo of GB and Yeofi, back with their new single ‘Alas Alice’, out now on Stones Throw.\r\n\r\n“‘Alas Alice’ is a tale of love confounded,” says Yeofi. “It’s an endless cycle of going back and forth, in and out, round and around.” Mixing rich harmony, confessional lyrics, dreamy strings and Yeofi’s epic vocals, ‘Alas Alice’ is the duo’s first release since their debut album, Six Rocks, on Stones Throw in 2017.', 'Friends for over fifteen years, Yeofi and GB combine their varying musical worlds as The Steoples. Originally from rural England, Yeofi played with several UK-based bands before moving to Los Angeles. He has since collaborated with artists including Theo Parrish and DJ Spinna under the moniker A Race of Angels.\r\n\r\nGifted & Blessed, The Abstract Eye, and Frankie Reyes are just some of the aliases GB has used to release his music. Over the last four years, he has been a Stones Throw regular, releasing two albums as Frankie Reyes on the label, which were both created on the analogue Oberheim synthesizer: Boleros Valses y Mas in 2016 and Originalitos in 2020.\r\n\r\nLook out for more new music from The Steoples in 2021.\r\n\r\nThe Steoples photo by Roman Koval. ‘Alas Alice’ artwork by Jakob Dwight.', 'thesteoplesalasalice.jpeg', 'kgq6LgqZ3lQ', 'thesteoplesalasaliceback.png', 35, 20, 5, '2023-05-06 13:24:07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `orderDetails`
--

CREATE TABLE `orderDetails` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `priceEach` decimal(5,2) NOT NULL,
  `quantity` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_date` timestamp NULL DEFAULT NULL,
  `shipment_date` timestamp NULL DEFAULT NULL,
  `status` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `item` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(5,2) UNSIGNED NOT NULL,
  `stock` smallint(5) UNSIGNED NOT NULL,
  `image` varchar(200) NOT NULL,
  `image2` varchar(200) DEFAULT NULL,
  `tracklist` text DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `artist_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`product_id`, `item`, `type`, `description`, `price`, `stock`, `image`, `image2`, `tracklist`, `category_id`, `artist_id`) VALUES
(1, 'Soul Tee', 'T Shirt', '100% Cotton Tubular Jersey. Preshrunk to minimize shrinkage. ', '25.00', 30, 'soultee.jpeg', NULL, NULL, 7, NULL),
(4, 'Madvillainy', 'Vinyl 2/LP', 'Madvillainy is a collaboration between rapper MF DOOM and producer Madlib under the group name Madvillain. The producer and MC both did was what completely natural to them at the time, turning the formula of popular rap at the time on its head with an album that is both unique and true to its influences. Cover photo by Eric Coleman, design by Jeff Jank.', '28.00', 50, 'madvillainy.png', NULL, '1. The Illest Villains (01:55\r\n2. Accordion (01:58)\r\n3. Meat Grinder (02:11)\r\n4. Bistro 01:07)\r\n5. Raid feat. MED (02:30)\r\n6. America\'s Most Blunted (03:54)\r\n7. Sickfit (Instrumental) (01:21)\r\n8. Rainbows (02:51)\r\n9. Curls (01:35)\r\n10. Do Not Fire! (00:52)\r\n11. Money Folder (03:02)\r\n12. Shadows Of Tomorrow (02:36)\r\n13. Operation Lifesaver AKA Mint Test (01:30)\r\n14. Figaro (02:25)\r\n15. Hardcore Hustle (01:21)\r\n16. Strange Ways (01:51)\r\n17. Fancy Clown feat. Viktor Vaughn (01:55)\r\n18. Eye feat. Stacy Epps (01:57)\r\n19. Supervillain Theme (00:52)\r\n20. All Caps (02:10)\r\n21. Great Day (02:16)\r\n22. Rhinestone Cowboy (03:59)', 3, 7),
(5, 'Madvillainy', 'Vinyl 2/CD', 'Madvillainy is a collaboration between rapper MF DOOM and producer Madlib under the group name Madvillain. The producer and MC both did was what completely natural to them at the time, turning the formula of popular rap at the time on its head with an album that is both unique and true to its influences. Cover photo by Eric Coleman, design by Jeff Jank.', '11.00', 200, 'madvillainy.png', NULL, '1. The Illest Villains (01:55\r\n2. Accordion (01:58)\r\n3. Meat Grinder (02:11)\r\n4. Bistro 01:07)\r\n5. Raid feat. MED (02:30)\r\n6. America\'s Most Blunted (03:54)\r\n7. Sickfit (Instrumental) (01:21)\r\n8. Rainbows (02:51)\r\n9. Curls (01:35)\r\n10. Do Not Fire! (00:52)\r\n11. Money Folder (03:02)\r\n12. Shadows Of Tomorrow (02:36)\r\n13. Operation Lifesaver AKA Mint Test (01:30)\r\n14. Figaro (02:25)\r\n15. Hardcore Hustle (01:21)\r\n16. Strange Ways (01:51)\r\n17. Fancy Clown feat. Viktor Vaughn (01:55)\r\n18. Eye feat. Stacy Epps (01:57)\r\n19. Supervillain Theme (00:52)\r\n20. All Caps (02:10)\r\n21. Great Day (02:16)\r\n22. Rhinestone Cowboy (03:59)', 5, 7),
(6, 'Athena', 'Vinyl - Black 1/LP', 'She first emerged as an avant-garde violinist who channeled her playing through loop pedals. Then songwriter, vocal performer, and beat-maker. She\'s captivated audiences at festivals around the world, touring her trail-blazing EPs Sudan Archives (2017) and Sink (2018). Sudan\'s many identity coalesces in her debut album, Athena: a psychedelic, magnetic take on modern R&B.\r\n\r\n\"When I was a little girl, I thought I could rule the world,\" Sudan Archives announces in the sparse, string-plucked opening bars of Athena, on the strident \"Did You Know\". Her musicality and sense of self-belief developed as a young child in the church. Born Brittney Parks, but called Sudan from a young age, she moved around Cincinnati, Ohio many times as a child; religion and music were the most stable forces in her life. It was in church that Sudan began learning to play the violin by ear, participating in ensemble performances. \"I remember begging my mom to get me a violin,\" she says. \"From there I just never let it go – it felt like I had a purpose.\"\r\n\r\nGrowing up with a twin sister, Sudan also learned young that she was the \"bad twin\". Her stepdad – a one-time music industry executive – tried to turn the two into a pop duo when they were teenagers, but Sudan would miss rehearsals and curfew so frequently that the project was abandoned. Still, the experience was valuable: \"My stepdad basically planted this whole idea of artistry as a career,\" she remembers. Though she left the band behind, Sudan clung onto the idea of pursuing music when she moved to Los Angeles at age 19. While studying and holding down two jobs, she would spend her spare time \"fucking around with some beats and making some weird shit\", which she released tentatively under the name Sudan Moon – a combination of her childhood nickname and her love of Sailor Moon. The ethereal quality of those early lo-fi, G-funk-inspired beats would eventually make its way into Sudan\'s current sound.\r\n\r\nIt was once she discovered ethnomusicology, and learned to incorporate the violin into her beats, that she really unlocked a new level. Cameroonian electronic music pioneer Francis Bebey was an early inspiration: \"His music is so simple, and the way he combines strings and electronic music is such a vibe.” From there, she educated herself about other artists and ethnomusicologists, learning about the history of one-string fiddling in Ghana, Sudan, and all over the world, which \"blew my mind\". Now a fervent crate-digger with ambitions of studying ethnomusicology, she changed her artist name to Sudan Archives.\r\n\r\nAfter she met with Stones Throw A&R and Leaving Records founder Matthewdavid, Peanut Butter Wolf signed her to Stones Throw. Her self-titled debut EP introduced the world to Sudan\'s fusion of North African-style fiddling, layered R&B harmonies, and pared-back production. Her second EP Sink was a resounding six-track statement that, according to Jenn Pelly at Pitchfork, saw Sudan \"level up as a songwriter\" — especially true of the bold self-love song \"Nont For Sale\".\r\n\r\nThose EPs, Sudan says, were \"like a haiku of what the album is\". Athena is \"more in your face, more confrontational – and that\'s also how I\'ve grown as an artist. I used to be a hermit who would make beats in her bedroom, but now I\'m working with other writers, producers and instrumentalists, I\'ve learned how to communicate. It feels like I\'m almost back in church.\" At first, it was tough for Sudan to cede any control in her creative process, but as she got stuck into the sessions with producers Wilma Archer (Jessie Ware, Nilufer Yanya), Washed Out, Rodaidh McDonald (The xx, Sampha, King Krule), and Paul White (Danny Brown, Charli XCX), she opened up. The resulting album, whittled down to 12 taut tracks from around 60, is her most ambitious work yet.\r\n\r\nOn the album\'s cover, she poses as a Greek goddess sculpted in bronze. Simultaneously at her most powerful — channelling the energy of her princess warrior heroes Xena and Sailor Moon — and her most vulnerable, Sudan challenges the viewer to see what\'s under the surface. \"I\'m naked!\" she says. \"I don\'t have anything to hide at all, it\'s all out there.\"', '23.00', 150, 'sudanarchives.png', NULL, '1. Did You Know (03:14)\r\n2. Confessions (02:53)\r\n3. Black Vivaldi Sonata (02:50)\r\n4. Down On Me (04:10)\r\n5. Ballet of the Unhatched Twins I (00:41)\r\n6. Green Eyes (03:41)\r\n7. Iceland Moss (03:30)\r\n8. Coming Up (03:41)\r\n9. House of Open Tuning II (00:38)\r\n10. Glorious 02:27\r\n11. Stuck (01:08)\r\n12. Limitless (02:55)\r\n13. Honey (03:02)\r\n14. Pelicans In The Summer (03:38)', 3, 8),
(7, 'Athena', '1/CD', 'She first emerged as an avant-garde violinist who channeled her playing through loop pedals. Then songwriter, vocal performer, and beat-maker. She\'s captivated audiences at festivals around the world, touring her trail-blazing EPs Sudan Archives (2017) and Sink (2018). Sudan\'s many identity coalesces in her debut album, Athena: a psychedelic, magnetic take on modern R&B.\r\n\r\n\"When I was a little girl, I thought I could rule the world,\" Sudan Archives announces in the sparse, string-plucked opening bars of Athena, on the strident \"Did You Know\". Her musicality and sense of self-belief developed as a young child in the church. Born Brittney Parks, but called Sudan from a young age, she moved around Cincinnati, Ohio many times as a child; religion and music were the most stable forces in her life. It was in church that Sudan began learning to play the violin by ear, participating in ensemble performances. \"I remember begging my mom to get me a violin,\" she says. \"From there I just never let it go – it felt like I had a purpose.\"\r\n\r\nGrowing up with a twin sister, Sudan also learned young that she was the \"bad twin\". Her stepdad – a one-time music industry executive – tried to turn the two into a pop duo when they were teenagers, but Sudan would miss rehearsals and curfew so frequently that the project was abandoned. Still, the experience was valuable: \"My stepdad basically planted this whole idea of artistry as a career,\" she remembers. Though she left the band behind, Sudan clung onto the idea of pursuing music when she moved to Los Angeles at age 19. While studying and holding down two jobs, she would spend her spare time \"fucking around with some beats and making some weird shit\", which she released tentatively under the name Sudan Moon – a combination of her childhood nickname and her love of Sailor Moon. The ethereal quality of those early lo-fi, G-funk-inspired beats would eventually make its way into Sudan\'s current sound.\r\n\r\nIt was once she discovered ethnomusicology, and learned to incorporate the violin into her beats, that she really unlocked a new level. Cameroonian electronic music pioneer Francis Bebey was an early inspiration: \"His music is so simple, and the way he combines strings and electronic music is such a vibe.” From there, she educated herself about other artists and ethnomusicologists, learning about the history of one-string fiddling in Ghana, Sudan, and all over the world, which \"blew my mind\". Now a fervent crate-digger with ambitions of studying ethnomusicology, she changed her artist name to Sudan Archives.\r\n\r\nAfter she met with Stones Throw A&R and Leaving Records founder Matthewdavid, Peanut Butter Wolf signed her to Stones Throw. Her self-titled debut EP introduced the world to Sudan\'s fusion of North African-style fiddling, layered R&B harmonies, and pared-back production. Her second EP Sink was a resounding six-track statement that, according to Jenn Pelly at Pitchfork, saw Sudan \"level up as a songwriter\" — especially true of the bold self-love song \"Nont For Sale\".\r\n\r\nThose EPs, Sudan says, were \"like a haiku of what the album is\". Athena is \"more in your face, more confrontational – and that\'s also how I\'ve grown as an artist. I used to be a hermit who would make beats in her bedroom, but now I\'m working with other writers, producers and instrumentalists, I\'ve learned how to communicate. It feels like I\'m almost back in church.\" At first, it was tough for Sudan to cede any control in her creative process, but as she got stuck into the sessions with producers Wilma Archer (Jessie Ware, Nilufer Yanya), Washed Out, Rodaidh McDonald (The xx, Sampha, King Krule), and Paul White (Danny Brown, Charli XCX), she opened up. The resulting album, whittled down to 12 taut tracks from around 60, is her most ambitious work yet.\r\n\r\nOn the album\'s cover, she poses as a Greek goddess sculpted in bronze. Simultaneously at her most powerful — channelling the energy of her princess warrior heroes Xena and Sailor Moon — and her most vulnerable, Sudan challenges the viewer to see what\'s under the surface. \"I\'m naked!\" she says. \"I don\'t have anything to hide at all, it\'s all out there.\"', '10.00', 50, 'sudanarchives.png', NULL, '1. Did You Know (03:14)\r\n2. Confessions (02:53)\r\n3. Black Vivaldi Sonata (02:50)\r\n4. Down On Me (04:10)\r\n5. Ballet of the Unhatched Twins I (00:41)\r\n6. Green Eyes (03:41)\r\n7. Iceland Moss (03:30)\r\n8. Coming Up (03:41)\r\n9. House of Open Tuning II (00:38)\r\n10. Glorious 02:27\r\n11. Stuck (01:08)\r\n12. Limitless (02:55)\r\n13. Honey (03:02)\r\n14. Pelicans In The Summer (03:38)', 5, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(252) NOT NULL,
  `password` varchar(255) NOT NULL,
  `adress` varchar(150) NOT NULL,
  `city` varchar(64) NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `country` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `videos`
--

CREATE TABLE `videos` (
  `video_id` int(10) UNSIGNED NOT NULL,
  `youtube_link` varchar(255) NOT NULL,
  `name` varchar(120) NOT NULL,
  `artist_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `videos`
--

INSERT INTO `videos` (`video_id`, `youtube_link`, `name`, `artist_id`) VALUES
(1, 'ebPvq6ebbdQ', 'Sudan Archives - Time', NULL),
(2, 'TVbrpJ13emo', 'Quasimoto - Catchin da Vibe', NULL),
(3, '_ncSt5xC8Uk', 'J Dilla - Nothing Like This', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`artist_id`);

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Índices para tabela `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Índices para tabela `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`new_id`);

--
-- Índices para tabela `orderDetails`
--
ALTER TABLE `orderDetails`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Índices para tabela `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Índices para tabela `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`video_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `artists`
--
ALTER TABLE `artists`
  MODIFY `artist_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `news`
--
ALTER TABLE `news`
  MODIFY `new_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
