USE pantry;

DROP TABLE IF EXISTS Users;

CREATE TABLE Users (
    userID      INT             NOT NULL    PRIMARY KEY,
    username    VARCHAR(50)     NOT NULL,
    email       VARCHAR(50)     NOT NULL,
    firstName   VARCHAR(50)     NOT NULL,
    lastName    VARCHAR(50)     NOT NULL,
    birthday    VARCHAR(50)     NOT NULL,
    authString  VARCHAR(100)    NOT NULL
);

insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (1, 'atomala0', 'atomala0@whitehouse.gov', 'Adria', 'Tomala', '1992-10-14', 'vnXN8k');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (2, 'klongforth1', 'klongforth1@tiny.cc', 'Kenon', 'Longforth', '1997-06-01', '3x5BwC101Dy');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (3, 'nnoone2', 'nnoone2@ed.gov', 'Nancey', 'Noone', '2003-05-04', 'BUnbcw');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (4, 'amacdermot3', 'amacdermot3@elegantthemes.com', 'Angeline', 'MacDermot', '2001-01-29', 'LCnqxcP');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (5, 'mjaggard4', 'mjaggard4@cpanel.net', 'Malynda', 'Jaggard', '1980-08-09', 'yRrTIgQ2K');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (6, 'jcutriss5', 'jcutriss5@ucoz.com', 'Jakob', 'Cutriss', '2000-04-23', 'KHMVz9mmI');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (7, 'lchewter6', 'lchewter6@archive.org', 'Lockwood', 'Chewter', '2011-04-05', 'Om2Ms3xHvKoG');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (8, 'glivesey7', 'glivesey7@huffingtonpost.com', 'Gonzales', 'Livesey', '2013-07-23', 'JZ45O524Z');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (9, 'ldevigne8', 'ldevigne8@mlb.com', 'Lotti', 'Devigne', '2012-06-10', 'GUSOfdKMgvtJ');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (10, 'sscoon9', 'sscoon9@a8.net', 'Stearne', 'Scoon', '1989-08-30', 'W2rWMYrD6xv');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (11, 'edanseya', 'edanseya@cam.ac.uk', 'Eloisa', 'Dansey', '1990-11-02', 'XGHT6cD');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (12, 'oclendeningb', 'oclendeningb@howstuffworks.com', 'Othello', 'Clendening', '2014-09-11', 'dU1nPT7KSv');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (13, 'bbuardc', 'bbuardc@chronoengine.com', 'Bert', 'Buard', '1989-04-08', 'mNxuRA4UBEw');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (14, 'isurmand', 'isurmand@japanpost.jp', 'Ina', 'Surman', '2013-11-10', 'yfjdGt5C');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (15, 'dderisleye', 'dderisleye@booking.com', 'Daffie', 'Derisley', '1990-08-02', 'ALCzPc5o');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (16, 'dwimletf', 'dwimletf@wikimedia.org', 'Daveen', 'Wimlet', '1999-10-08', 'DYDNtK0V1');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (17, 'hgrisardg', 'hgrisardg@bizjournals.com', 'Holden', 'Grisard', '2006-03-31', 'Go4arYlG86');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (18, 'kchealesh', 'kchealesh@posterous.com', 'Killie', 'Cheales', '1994-03-30', 'rzKrHtEW');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (19, 'fskethi', 'fskethi@wunderground.com', 'Frayda', 'Sketh', '1994-06-07', 'ZzxilXjKrgN');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (20, 'pwoodrowj', 'pwoodrowj@reddit.com', 'Palmer', 'Woodrow', '1995-09-08', 'Hthm4mae7vjM');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (21, 'econradsenk', 'econradsenk@angelfire.com', 'Etti', 'Conradsen', '1987-02-13', 'NYEbLqWu6SkH');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (22, 'gjohannesl', 'gjohannesl@intel.com', 'Giustino', 'Johannes', '1997-01-26', 'rVTL0E');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (23, 'jdikelsm', 'jdikelsm@cdbaby.com', 'Jimmie', 'Dikels', '1983-01-16', 'OP5YTmqs');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (24, 'khuzzayn', 'khuzzayn@discuz.net', 'Kathlin', 'Huzzay', '1994-07-06', 'SxZc0aZIGizW');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (25, 'adefrieso', 'adefrieso@uiuc.edu', 'Aryn', 'Defries', '2010-04-23', 'tRy9vGLri');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (26, 'gwhelanp', 'gwhelanp@free.fr', 'Gillie', 'Whelan', '2014-11-16', 'gi5lt8');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (27, 'estartq', 'estartq@amazon.co.jp', 'Erastus', 'Start', '2014-09-08', '44aW0gpzT6wO');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (28, 'iwooddisser', 'iwooddisser@mtv.com', 'Ibbie', 'Wooddisse', '2008-05-29', 'hL2pVKh');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (29, 'ltroaks', 'ltroaks@pen.io', 'Lottie', 'Troak', '1994-08-12', 'Fkdquxwli');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (30, 'rcoggont', 'rcoggont@illinois.edu', 'Rogerio', 'Coggon', '2009-06-13', 'S7m6jRYrr');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (31, 'lmichalu', 'lmichalu@zdnet.com', 'Lammond', 'Michal', '2013-07-17', 'G0kS2QtNwW');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (32, 'jappleyardv', 'jappleyardv@icio.us', 'Juanita', 'Appleyard', '1985-01-10', '2pZnTU');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (33, 'bransfieldw', 'bransfieldw@dot.gov', 'Bliss', 'Ransfield', '1995-08-31', 'P31PEPBQO');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (34, 'gsheersx', 'gsheersx@sohu.com', 'Giuseppe', 'Sheers', '1995-06-10', 'OPyUHMx');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (35, 'mbuffy', 'mbuffy@youku.com', 'Marcille', 'Buff', '1998-06-22', 'Ji1JhZ6oBW');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (36, 'qmordeyz', 'qmordeyz@businesswire.com', 'Quintin', 'Mordey', '2014-07-01', 'J8NOQR0lO7t');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (37, 'mlotte10', 'mlotte10@cdc.gov', 'Marcos', 'Lotte', '1985-11-23', 'dZ00BJ9Y9QxV');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (38, 'ainott11', 'ainott11@reddit.com', 'Alfredo', 'Inott', '2003-10-15', 'ePOAhc7');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (39, 'skopman12', 'skopman12@vkontakte.ru', 'Sue', 'Kopman', '1998-12-30', 'LFo76VaQnZd');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (40, 'ebuckby13', 'ebuckby13@smh.com.au', 'Em', 'Buckby', '2001-12-02', 'wjVLIv');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (41, 'ogayden14', 'ogayden14@guardian.co.uk', 'Obie', 'Gayden', '2012-09-21', 'GsVYBH');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (42, 'wtrain15', 'wtrain15@xinhuanet.com', 'Wyndham', 'Train', '2006-02-28', 'AxVJwZoTr4os');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (43, 'ctrevers16', 'ctrevers16@digg.com', 'Conant', 'Trevers', '1991-10-24', 'Lr4Z54YQ');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (44, 'mbonnor17', 'mbonnor17@va.gov', 'Moss', 'Bonnor', '2006-03-17', 'eaOvsooD');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (45, 'lilyushkin18', 'lilyushkin18@squidoo.com', 'Lind', 'Ilyushkin', '2014-03-07', '4UvZEL');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (46, 'cbriton19', 'cbriton19@yahoo.com', 'Cyril', 'Briton', '2009-02-01', '6xfj66pultr1');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (47, 'vsteeples1a', 'vsteeples1a@bizjournals.com', 'Valerie', 'Steeples', '2003-05-20', 'l3de59E5DL');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (48, 'astandishbrooks1b', 'astandishbrooks1b@rambler.ru', 'Alleyn', 'Standish-Brooks', '1982-01-16', 'PSNQBqcYF');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (49, 'aschmidt1c', 'aschmidt1c@npr.org', 'Adriana', 'Schmidt', '1981-08-06', 'iF671yATx');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (50, 'hgoodwill1d', 'hgoodwill1d@usatoday.com', 'Helenka', 'Goodwill', '2009-02-22', 'MbsUeus5fPb6');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (51, 'bcreasey1e', 'bcreasey1e@rambler.ru', 'Brier', 'Creasey', '2014-05-29', 'wQepF0K');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (52, 'jgowdridge1f', 'jgowdridge1f@furl.net', 'Jasmine', 'Gowdridge', '1997-12-17', 'hQvCPCcVw');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (53, 'frisbrough1g', 'frisbrough1g@tmall.com', 'Felipe', 'Risbrough', '1982-04-02', 'WiKLc7GPcSsR');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (54, 'slurriman1h', 'slurriman1h@tamu.edu', 'Sherilyn', 'Lurriman', '1985-06-13', '8pHnbD9R');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (55, 'mowers1i', 'mowers1i@go.com', 'Muffin', 'Owers', '1994-09-20', 'QzRt3bDRy');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (56, 'ltarney1j', 'ltarney1j@pen.io', 'Lilly', 'Tarney', '1985-01-04', 'BRDOG9NzU');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (57, 'bpregel1k', 'bpregel1k@ebay.com', 'Belle', 'Pregel', '2012-09-04', 'nDK7PEAr');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (58, 'lrockingham1l', 'lrockingham1l@friendfeed.com', 'Leroi', 'Rockingham', '1990-10-07', 'n6eylv6If9');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (59, 'rboggish1m', 'rboggish1m@examiner.com', 'Roderick', 'Boggish', '1999-11-28', 'Sm8uVJ8aX8M');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (60, 'rmcgeown1n', 'rmcgeown1n@flavors.me', 'Rodie', 'McGeown', '1980-08-03', 'fZUmEca');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (61, 'brubica1o', 'brubica1o@nih.gov', 'Basil', 'Rubica', '1990-10-07', 'TeCTEn0QJ');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (62, 'lseargeant1p', 'lseargeant1p@china.com.cn', 'Laetitia', 'Seargeant', '1988-08-09', 'xVswM1erKd0');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (63, 'adomokos1q', 'adomokos1q@wunderground.com', 'Annis', 'Domokos', '2005-09-27', 'MFWjEfGR');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (64, 'pdominichetti1r', 'pdominichetti1r@people.com.cn', 'Pearline', 'Dominichetti', '1991-01-28', 'ujktJGOK');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (65, 'gfielder1s', 'gfielder1s@surveymonkey.com', 'Grazia', 'Fielder', '1986-09-05', 'tcvG3H');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (66, 'eshailer1t', 'eshailer1t@dmoz.org', 'Edie', 'Shailer', '2002-12-20', '8QNBrv');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (67, 'fklagges1u', 'fklagges1u@skype.com', 'Fan', 'Klagges', '1990-07-02', 'kVNkUaaXpgSC');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (68, 'pbrown1v', 'pbrown1v@zimbio.com', 'Paulita', 'Brown', '1983-12-17', 'ZpxHjV6c6');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (69, 'lbrocks1w', 'lbrocks1w@pinterest.com', 'Lesli', 'Brocks', '1998-11-22', 'YOywX1yUd');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (70, 'mscathard1x', 'mscathard1x@csmonitor.com', 'Morgan', 'Scathard', '2003-12-31', 'YD5vjWu5d');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (71, 'fyardy1y', 'fyardy1y@cloudflare.com', 'Ferdinande', 'Yardy', '2000-07-08', '9rBwuljLV');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (72, 'gochterlony1z', 'gochterlony1z@eepurl.com', 'Gigi', 'Ochterlony', '1995-04-18', 'ID0THXc');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (73, 'hyannoni20', 'hyannoni20@hp.com', 'Hadrian', 'Yannoni', '2000-12-24', 'uEEQ5CSb');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (74, 'mruler21', 'mruler21@delicious.com', 'Marni', 'Ruler', '2009-08-21', 'DdDTVN');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (75, 'mnarey22', 'mnarey22@bbb.org', 'Marje', 'Narey', '1991-09-09', 'ejBy7l');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (76, 'hmazey23', 'hmazey23@de.vu', 'Harv', 'Mazey', '2013-03-18', 'e9kLdZqzVM4O');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (77, 'ldomoni24', 'ldomoni24@delicious.com', 'Lanni', 'Domoni', '1980-12-24', 'XvPbeb');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (78, 'lbiernat25', 'lbiernat25@elpais.com', 'Lorianna', 'Biernat', '1985-11-02', 'mP8ocmj');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (79, 'jgraber26', 'jgraber26@mashable.com', 'Jeannine', 'Graber', '2003-10-16', 'LMBgfYJ');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (80, 'ahealey27', 'ahealey27@tripod.com', 'Annmarie', 'Healey', '1986-08-24', 'nUjzfN4srW3');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (81, 'hmatuschek28', 'hmatuschek28@mediafire.com', 'Heddi', 'Matuschek', '1988-09-15', 'UmEBIc');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (82, 'apoller29', 'apoller29@who.int', 'April', 'Poller', '2008-07-28', 'NOgZhseFs');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (83, 'rcandy2a', 'rcandy2a@fotki.com', 'Raimondo', 'Candy', '1987-04-23', 'UvVravfMMce');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (84, 'llupton2b', 'llupton2b@fc2.com', 'Langston', 'Lupton', '1995-11-14', 'vyaO4V5');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (85, 'hpandya2c', 'hpandya2c@imgur.com', 'Harper', 'Pandya', '2004-01-26', 'T7TFVnMnfVxw');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (86, 'tkuhnhardt2d', 'tkuhnhardt2d@simplemachines.org', 'Tan', 'Kuhnhardt', '1981-01-23', 'YUL5v4QE8XZB');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (87, 'mprevett2e', 'mprevett2e@china.com.cn', 'Mariette', 'Prevett', '2004-06-06', '8KXHbSD23V1R');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (88, 'vlayton2f', 'vlayton2f@51.la', 'Verge', 'Layton', '1984-02-26', '8htAYCdE6GuO');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (89, 'rinnocenti2g', 'rinnocenti2g@t.co', 'Rubin', 'Innocenti', '1984-02-12', 'ReZP6P');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (90, 'ahanlon2h', 'ahanlon2h@hao123.com', 'Alisa', 'Hanlon', '1989-12-05', 'eB1PNsNTSV');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (91, 'cocarroll2i', 'cocarroll2i@indiatimes.com', 'Christyna', 'O''Carroll', '2007-07-29', 'DAF4PCras');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (92, 'tbottrill2j', 'tbottrill2j@arstechnica.com', 'Tally', 'Bottrill', '1986-02-26', 'KaOsEynP8');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (93, 'tlambol2k', 'tlambol2k@princeton.edu', 'Tildie', 'Lambol', '1984-03-23', 'qo7sSPYYtw');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (94, 'ehousley2l', 'ehousley2l@patch.com', 'Ellery', 'Housley', '2011-11-14', 'MwcAwRJ1Q7e');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (95, 'btruelock2m', 'btruelock2m@ustream.tv', 'Britt', 'Truelock', '2008-01-13', 'bF91qayA');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (96, 'jmushart2n', 'jmushart2n@nature.com', 'Jo', 'Mushart', '1981-09-27', 'OAF4xNfzdjq');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (97, 'jamphlett2o', 'jamphlett2o@taobao.com', 'Jehu', 'Amphlett', '1989-07-17', 'fzupaKM');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (98, 'tferon2p', 'tferon2p@chron.com', 'Timothee', 'Feron', '1981-12-01', 'VZTrrOG');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (99, 'mbes2q', 'mbes2q@statcounter.com', 'Maureene', 'Bes', '1983-04-07', 'aHpjKsiq0Q');
insert into Users (userId, username, email, firstName, lastName, birthday, authString) values (100, 'awyness2r', 'awyness2r@theglobeandmail.com', 'Afton', 'Wyness', '1985-10-08', 'CvSgtKD73YfM');