---- PostgreSQL database dump---- Dumped from database version 16.0-- Dumped by pg_dump version 16.0-- Started on 2023-12-08 20:00:34
 SET statement_timeout = 0;
 SET lock_timeout = 0;
 SET idle_in_transaction_session_timeout = 0;
 SET client_encoding = 'UTF8';
 SET standard_conforming_strings = on;
 SELECT pg_catalog.set_config('search_path', '', false);
 SET check_function_bodies = false;
 SET xmloption = content;
 SET client_min_messages = warning;
 SET row_security = off;---- TOC entry 216 (class 1259 OID 19619)-- Name: authors; Type: TABLE; Schema: public; Owner: --
CREATE TABLE public.authors (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    gender character varying(20),
    born date,
    died date,
    summary text
 );---- TOC entry 217 (class 1259 OID 19629)-- Name: books; Type: TABLE; Schema: public; Owner: --
CREATE TABLE public.books (
    id bigint NOT NULL,
    title character varying(100) NOT NULL,
    avg_rating numeric(5,2),
    year integer,
    language character varying(30),
    author_id bigint,
    publisher_id bigint,
    summary text
 );---- TOC entry 215 (class 1259 OID 19614)-- Name: publishers; Type: TABLE; Schema: public; Owner: --
CREATE TABLE public.publishers (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    year integer,
    country character varying(50)
 );---- TOC entry 4847 (class 0 OID 19619)-- Dependencies: 216-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: --
INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (1, 'H. 
G. Wells', 'm', '1866-09-21', '1946-08-13', 'Herbert George "H. G." Wells (21 
September 1866 – 13 August 1946) was an English writer. He was prolific in many 
genres, including the novel, history, politics, social commentary, and textbooks 
and rules for war games. Wells is now best remembered for his science fiction 
novels and is called a "father of science fiction", along with Jules Verne and Hugo
 Gernsback. His most notable science fiction works include The Time Machine (1895), 
The Island of Doctor Moreau (1896), The Invisible Man (1897), and The War of the 
Worlds (1898). He was nominated for the Nobel Prize in Literature four times.
 Wells''s earliest specialised training was in biology, and his thinking on ethical 
matters took place in a specifically and fundamentally Darwinian context. He was 
also from an early date an outspoken socialist, often (but not always, as at the 
beginning of the First World War) sympathising with pacifist views. His later works
 became increasingly political and didactic, and he wrote little science fiction, 
while he sometimes indicated on official documents that his profession was that of 
journalist. Novels like Kipps and The History of Mr Polly, which describe lower
middle-class life, led to the suggestion that he was a worthy successor to Charles 
Dickens, but Wells described a range of social strata and even attempted, in Tono
Bungay (1909), a diagnosis of English society as a whole. A diabetic, in 1934, 
Wells co-founded the charity The Diabetic Association (known today as Diabetes 
UK).');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (2, 
'Edgar Rice Burroughs', 'm', '1875-09-01', '1950-03-19', 'Edgar Rice Burroughs 
(September 1, 1875 – March 19, 1950) was an American writer best known for his 
creations of the jungle hero Tarzan and the heroic Mars adventurer John Carter, 
although he produced works in many genres.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (3, 
'Isaac Asimov', 'm', '1919-08-25', '1992-04-06', 'Isaac Asimov (; born Isaak 
Ozimov; c. January 2, 1920 – April 6, 1992) was an American writer and professor of
 biochemistry at Boston University. He was known for his works of science fiction 
and popular science. Asimov was a prolific writer, and wrote or edited more than 
500 books and an estimated 90,000 letters and postcards. His books have been 
published in 9 of the 10 major categories of the Dewey Decimal Classification.
 Asimov wrote hard science fiction and, along with Robert A. Heinlein and Arthur C. 
Clarke, he was considered one of the "Big Three" science fiction writers during his
 lifetime. Asimov''s most famous work is the Foundation Series; his other major 
series are the Galactic Empire series and the Robot series. The Galactic Empire 
novels are explicitly set in earlier history of the same fictional universe as the 
Foundation series. Later, beginning with Foundation''s Edge, he linked this distant
 future to the Robot and Spacer stories, creating a unified "future history" for his
 stories much like those pioneered by Robert A. Heinlein and previously produced by 
Cordwainer Smith and Poul Anderson. He wrote hundreds of short stories, including 
the social science fiction "Nightfall", which in 1964 was voted by the Science 
Fiction Writers of America the best short science fiction story of all time. Asimov
 wrote the Lucky Starr series of juvenile science-fiction novels using the pen name 
Paul French.
 Asimov also wrote mysteries and fantasy, as well as much nonfiction. Most of his 
popular science books explain scientific concepts in a historical way, going as far
 back as possible to a time when the science in question was at its simplest stage. 
He often provides nationalities, birth dates, and death dates for the scientists he
 mentions, as well as etymologies and pronunciation guides for technical terms. 
Examples include Guide to Science, the three-volume set Understanding Physics, and 
Asimov''s Chronology of Science and Discovery, as well as works on astronomy, 
mathematics, history, William Shakespeare''s writing, and chemistry.
 Asimov was a long-time member and vice president of Mensa International, albeit 
reluctantly; he described some members of that organization as "brain-proud and 
aggressive about their IQs". He took more joy in being president of the American 
Humanist Association. The asteroid 5020 Asimov, a crater on the planet Mars, a 
Brooklyn elementary school, and a literary award are named in his honor.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (4, 'Kurt
 Vonnegut', 'm', '1922-11-11', '2007-04-11', 'Kurt Vonnegut, Jr. (; November 11, 
1922 – April 11, 2007) was an American writer. In a career spanning over 50 years, 
Vonnegut published 14 novels, three short story collections, five plays, and five 
works of non-fiction. He is most famous for his darkly satirical, best-selling 
novel Slaughterhouse-Five (1969).
 Born and raised in Indianapolis, Indiana, Vonnegut attended Cornell University, but
 dropped out in January 1943 and enlisted in the United States Army. As part of his 
training, he studied mechanical engineering at Carnegie Institute of Technology 
(now Carnegie Mellon University) and the University of Tennessee. He was then 
deployed to Europe to fight in World War II, and was captured by the Germans during
 the Battle of the Bulge. He was interned in Dresden and survived the Allied bombing
 of the city by taking refuge in a meat locker of the slaughterhouse where he was 
imprisoned. After the war, Vonnegut married Jane Marie Cox, with whom he had three 
children. He later adopted his sister''s three sons, after she died of cancer and 
her husband died in a train accident.
 Vonnegut published his first novel, Player Piano, in 1952. The novel was reviewed 
positively, but was not commercially successful. In the nearly 20 years that 
followed, Vonnegut published several novels that were only marginally successful, 
such as Cat''s Cradle (1963) and God Bless You, Mr. Rosewater (1964). Vonnegut''s 
magnum opus, however, was his immediately successful sixth novel, Slaughterhouse
Five. The book''s antiwar sentiment resonated with its readers amidst the ongoing 
Vietnam War, and its reviews were generally positive. After its release, 
Slaughterhouse-Five went to the top of The New York Times Best Seller list, 
thrusting Vonnegut into fame. He was invited to give speeches, lectures, and 
commencement addresses around the country and received many awards and honors.
 Later in his career, Vonnegut published several autobiographical essays and short
story collections, including Fates Worse Than Death (1991), and A Man Without a 
Country (2005). After his death, he was hailed as a morbidly comical commentator on
 the society in which he lived, and as one of the most important contemporary 
writers. Vonnegut''s son Mark published a compilation of his father''s unpublished 
compositions, titled Armageddon in Retrospect. Numerous scholarly works have 
examined Vonnegut''s writing and humor.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (5, 'Ayn 
Rand', 'f', '1905-02-02', '1982-03-06', 'Ayn Rand (; born Alisa Zinov''yevna 
Rosenbaum, Russian: Али́са Зино́вьевна Розенба́ум; February 2 [O.S. January 20] 1905 
March 6, 1982) was a Russian-American novelist, philosopher, playwright, and 
screenwriter. She is known for her two best-selling novels, The Fountainhead and 
Atlas Shrugged, and for developing a philosophical system she called Objectivism. 
Educated in Russia, she moved to the United States in 1926. She had a play produced
 on Broadway in 1935–1936. After two early novels that were initially unsuccessful 
in America, she achieved fame with her 1943 novel, The Fountainhead.
 In 1957, Rand published her best-known work, the novel Atlas Shrugged. Afterward, 
she turned to non-fiction to promote her philosophy, publishing her own magazines 
and releasing several collections of essays until her death in 1982. Rand advocated
 reason as the only means of acquiring knowledge, and rejected faith and religion. 
She supported rational and ethical egoism, and rejected altruism. In politics, she 
condemned the initiation of force as immoral, and opposed collectivism and statism 
as well as anarchism, and instead supported laissez-faire capitalism, which she 
defined as the system based on recognizing individual rights. In art, Rand promoted
 romantic realism. She was sharply critical of most philosophers and philosophical 
traditions known to her, except for Aristotle, Thomas Aquinas, and classical 
liberals.
 Literary critics received Rand''s fiction with mixed reviews, and academia 
generally ignored or rejected her philosophy, though academic interest has 
increased in recent decades. The Objectivist movement attempts to spread her ideas,
 both to the public and in academic settings. She has been a significant influence 
among libertarians and American conservatives.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (6, 
'Jules Verne', 'm', '1828-02-08', '1905-03-24', 'Jules Gabriel Verne ( ; French: 
[ʒyl vɛʁn]; 8 February 1828 – 24 March 1905) was a French novelist, poet, and 
playwright.
 Verne was born to bourgeois parents in the seaport of Nantes, where he was trained 
to follow in his father''s footsteps as a lawyer, but quit the profession early in 
life to write for magazines and the stage. His collaboration with the publisher 
Pierre-Jules Hetzel led to the creation of the Voyages extraordinaires, a widely 
popular series of scrupulously researched adventure novels including Journey to the
 Center of the Earth (1864), Twenty Thousand Leagues Under the Sea (1870), and 
Around the World in Eighty Days (1873).
 Verne is generally considered a major literary author in France and most of Europe,
 where he has had a wide influence on the literary avant-garde and on surrealism. 
His reputation is markedly different in Anglophone regions, where he has often been
 labeled a writer of genre fiction or children''s books, largely because of the 
highly abridged and altered translations in which his novels are often reprinted.
 Verne has been the second most-translated author in the world since 1979, ranking 
between Agatha Christie and William Shakespeare. He has sometimes been called the 
"Father of Science Fiction", a title that has also been given to H. G. Wells and 
Hugo Gernsback.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (7, 
'Arthur Conan Doyle', 'm', '1859-05-22', '1930-07-07', 'Sir Arthur Ignatius Conan 
Doyle KStJ, DL (22 May 1859 – 7 July 1930) was a British writer best known for his 
detective fiction featuring the character Sherlock Holmes. Originally a physician, 
in 1887 he published A Study in Scarlet, the first of four novels about Holmes and 
Dr. Watson. In addition, Doyle wrote over fifty short stories featuring the famous 
detective.
 The Sherlock Holmes stories are generally considered milestones in the field of 
crime fiction. Doyle is also known for writing the fictional adventures of 
Professor Challenger and for propagating the mystery of the Mary Celeste. He was a 
prolific writer whose other works include fantasy and science fiction stories, 
plays, romances, poetry, non-fiction and historical novels.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (8, 
'Philip K. Dick', 'm', '1928-12-16', '1982-03-02', 'Philip Kindred Dick (December 
16, 1928 – March 2, 1982) was an American writer notable for publishing works of 
science fiction. Dick explored philosophical, social, and political themes in 
novels with plots dominated by monopolistic corporations, authoritarian 
governments, alternate universes, and altered states of consciousness. His work 
reflected his personal interest in metaphysics and theology, and often drew upon 
his life experiences in addressing the nature of reality, identity, drug abuse, 
schizophrenia, and transcendental experiences.
 Born in Illinois before moving to California, Dick began publishing science fiction
 stories in the 1950s, initially finding little commercial success. His 1962 
alternate history novel The Man in the High Castle earned Dick early acclaim, 
including a Hugo Award for Best Novel. He followed with science fiction novels such
 as Do Androids Dream of Electric Sheep? (1968) and Ubik (1969). His 1974 novel Flow
 My Tears, the Policeman Said won the John W. Campbell Memorial Award for best 
novel. Following a series of religious experiences in February–March 1974, Dick''s 
work engaged more explicitly with issues of theology, philosophy, and the nature of
 reality, as in such novels as A Scanner Darkly (1977) and VALIS (1981). A 
collection of his non-fiction writing on these themes was published posthumously as
 The Exegesis of Philip K. Dick (2011). He died in 1982 of a stroke, aged 53.
 In addition to 44 published novels, Dick wrote approximately 121 short stories, 
most of which appeared in science fiction magazines during his lifetime. A variety 
of popular films based on his works have been produced, including Blade Runner 
(1982), Total Recall (1990), Minority Report (2002), A Scanner Darkly (2006), 
Paycheck (2003), Next (2007), and The Adjustment Bureau (2011). In 2005, Time 
magazine named Ubik one of the hundred greatest English-language novels published 
since 1923. In 2007, Dick became the first science fiction writer to be included in
 The Library of America series.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (9, 'H. 
P. Lovecraft', 'm', '1890-08-20', '1937-03-15', 'Howard Phillips Lovecraft (; 
August 20, 1890 – March 15, 1937) was an American author who achieved posthumous 
fame through his influential works of horror fiction. He was virtually unknown and 
published only in pulp magazines before he died in poverty, but he is now regarded 
as one of the most significant 20th-century authors in his genre. Lovecraft was 
born in Providence, Rhode Island, where he spent most of his life. Among his most 
celebrated tales are "The Call of Cthulhu" and "The Shadow over Innsmouth", both 
canonical to the Cthulhu Mythos. Lovecraft was never able to support himself from 
earnings as author and editor. He saw commercial success increasingly elude him in 
this latter period, partly because he lacked the confidence and drive to promote 
himself. He subsisted in progressively strained circumstances in his last years; an
 inheritance was completely spent by the time that he died at age 46.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (10, 
'Edwin Abbott Abbott', 'm', '1838-12-20', '1926-10-12', 'Edwin Abbott Abbott, FBA 
(20 December 1838 – 12 October 1926) was an English schoolmaster and theologian, 
best known as the author of the novella Flatland (1884).');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (11, 
'William Hope Hodgson', 'm', '1877-11-15', '1918-10-10', 'William Hope Hodgson (15 
November 1877 – April 1918) was an English author. He produced a large body of 
work, consisting of essays, short fiction, and novels, spanning several overlapping
 genres including horror, fantastic fiction, and science fiction. Hodgson used his 
experiences at sea to lend authentic detail to his short horror stories, many of 
which are set on the ocean, including his series of linked tales forming the 
"Sargasso Sea Stories". His novels, such as The House on the Borderland (1908) and 
The Night Land (1912), feature more cosmic themes, but several of his novels also 
focus on horrors associated with the sea. Early in his writing career Hodgson 
dedicated effort to poetry, although few of his poems were published during his 
lifetime. He also attracted some notice as a photographer and achieved renown as a 
bodybuilder. He died in World War I at age 40.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (14, 'E. 
E. Smith', 'm', '1890-05-02', '1965-08-31', 'Edward Elmer Smith (also E. E. Smith, 
E. E. Smith, Ph.D., E. E. "Doc" Smith, Doc Smith, "Skylark" Smith, or—to his family
 —Ted; May 2, 1890 – August 31, 1965) was an American food engineer (specializing in
 doughnut and pastry mixes) and an early science-fiction author, best known for the 
Lensman and Skylark series. He is sometimes called the father of space opera.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (16, 
'Harry Harrison', 'm', '1925-03-12', '2012-08-15', 'Harry Max Harrison (born Henry 
Maxwell Dempsey; March 12, 1925 – August 15, 2012) was an American science fiction 
author, known for his character the Stainless Steel Rat and for his novel Make 
Room! Make Room! (1966). The latter was the rough basis for the motion picture 
Soylent Green (1973). Harrison was (with Brian Aldiss) the co-president of the 
Birmingham Science Fiction Group.
 Aldiss called him "a constant peer and great family friend". His friend Michael 
Carroll said, "Imagine Pirates of the Caribbean or Raiders of the Lost Ark, and 
picture them as science-fiction novels. They''re rip-roaring adventures, but 
they''re stories with a lot of heart." Novelist Christopher Priest wrote in an 
obituary,
 Harrison was an extremely popular figure in the SF world, renowned for being 
amiable, outspoken and endlessly amusing. His quickfire, machine-gun delivery of 
words was a delight to hear, and a reward to unravel: he was funny and self-aware, 
he enjoyed reporting the follies of others, he distrusted generals, prime ministers
 and tax officials with sardonic and cruel wit, and above all he made plain his 
acute intelligence and astonishing range of moral, ethical and literary 
sensibilities.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (17, 
'Various', NULL, NULL, NULL, NULL);
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (18, 'Ray
 Bradbury', 'm', '1920-08-22', '2012-06-05', 'Ray Douglas Bradbury (August 22, 1920 – June 5, 2012) was an American author and screenwriter. He worked in a variety of 
genres, including fantasy, science fiction, horror, and mystery fiction.
 Widely known for his dystopian novel Fahrenheit 451 (1953), and his science fiction
 and horror story collections, The Martian Chronicles (1950), The Illustrated Man 
(1951), and I Sing the Body Electric (1969), Bradbury was one of the most 
celebrated twentieth- and twenty-first-century American writers. While most of his 
best known work is in speculative fiction, he also wrote in other genres, such as 
the coming-of-age novel Dandelion Wine (1957) and the fictionalized memoir Green 
Shadows, White Whale (1992).
 Recipient of numerous awards, including a 2007 Pulitzer Citation, Bradbury also 
wrote and consulted on screenplays and television scripts, including Moby Dick and 
It Came from Outer Space. Many of his works were adapted to comic book, television 
and film formats.
 On his death in 2012, The New York Times called Bradbury "the writer most 
responsible for bringing modern science fiction into the literary mainstream".');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (19, 'H. 
Beam Piper', 'm', '1904-03-23', '1964-11-06', 'Henry Beam Piper (March 23, 1904 – 
c. November 6, 1964) was an American science fiction author. He wrote many short 
stories and several novels. He is best known for his extensive Terro-Human Future 
History series of stories and a shorter series of "Paratime" alternate history 
tales.
 He wrote under the name H. Beam Piper. Another source gives his name as "Horace 
Beam Piper" and a different date of death. His gravestone says "Henry Beam Piper". 
Piper himself may have been the source of part of the confusion; he told people the
 H stood for Horace, encouraging the assumption that he used the initial because he 
disliked his name. On a copy of "Little Fuzzy" given to Charles O. Piper, Beam''s 
cousin and executor, he wrote "To Charles from Henry."');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (20, 
'Philip Francis Nowlan', 'm', '1888-10-17', '1940-02-01', 'Philip Francis Nowlan 
(November 13, 1888 – February 1, 1940) was an American science fiction author, best
 known as the creator of Buck Rogers.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (21, 
'Edward Bellamy', 'm', '1850-03-26', '1898-05-22', 'Edward Bellamy (March 26, 1850 – May 22, 1898) was an American author and socialist, most famous for his utopian 
novel, Looking Backward, a tale set in the distant future of the year 2000. 
Bellamy''s vision of a harmonious future world inspired the formation of at least 
165 "Nationalist Clubs" dedicated to the propagation of Bellamy''s political ideas 
and working to make them a practical reality.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (22, 
'Robert E. Howard', 'm', '1906-01-22', '1936-06-11', 'Robert Ervin Howard (January 
22, 1906 – June 11, 1936) was an American author who wrote pulp fiction in a 
diverse range of genres. He is well known for his character Conan the Barbarian and
 is regarded as the father of the sword and sorcery subgenre.
 Howard was born and raised in Texas. He spent most of his life in the town of Cross
 Plains, with some time spent in nearby Brownwood. A bookish and intellectual child,
 he was also a fan of boxing and spent some time in his late teens bodybuilding, 
eventually taking up amateur boxing. From the age of nine he dreamed of becoming a 
writer of adventure fiction but did not have real success until he was 23. 
Thereafter, until his death by suicide at age 30, Howard''s writings were published
 in a wide selection of magazines, journals, and newspapers, and he became 
proficient in several subgenres. His greatest success occurred after his death.
 Although a Conan novel was nearly published in 1934, Howard''s stories were never 
collected during his lifetime. The main outlet for his stories was Weird Tales, 
where Howard created Conan the Barbarian. With Conan and his other heroes, Howard 
helped fashion the genre now known as sword and sorcery, spawning many imitators 
and giving him a large influence in the fantasy field. Howard remains a highly read
 author, with his best works still reprinted.
 Howard’s suicide and the circumstances surrounding it have led to speculation about
 his mental health. His mother had been ill with tuberculosis his entire life, and 
upon learning she had entered a coma from which she was not expected to wake, he 
walked out to his car and shot himself in the head.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (23, 
'Robert Sheckley', 'm', '1928-07-17', '2005-12-09', 'Robert Sheckley (July 17, 1928– December 9, 2005) was an American writer. First published in the science fiction 
magazines of the 1950s, his numerous quick-witted stories and novels were famously 
unpredictable, absurdist, and broadly comical.
 Sheckley was nominated for Hugo and Nebula awards and was named Author Emeritus by 
the Science Fiction and Fantasy Writers of America in 2001.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (25, 
'Marion Zimmer Bradley', 'f', '1930-06-03', '1999-09-25', 'Marion Eleanor Zimmer 
Bradley (June 3, 1930 – September 25, 1999) was an American author of fantasy, 
historical fantasy, science fiction, and science fantasy novels, and is best known 
for the Arthurian fiction novel The Mists of Avalon, and the Darkover series. While
 some critics have noted a feminist perspective in her writing, her popularity has 
been posthumously marred by multiple accusations against her of child sexual abuse 
and rape by two of her children, Mark and Moira Greyland, among many others. Zimmer
 Bradley''s first child, David R. Bradley, and her brother, Paul Edwin Zimmer, also 
became published science fiction and fantasy authors.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (26, 'Lee
 Hawkins Garby', 'f', '1892-10-17', '1953-10-17', 'Lee Hawkins Garby (1892–1953) was
 the co-author with Edward Elmer Smith of the 1928 serial novel The Skylark of 
Space, the first science fiction story in which humans left the solar system. She 
was the wife of Dr. Carl DeWitt Garby, a friend of Dr. Smith''s from college at the
 University of Idaho.
 The novel was first published as a book in 1946, as The Skylark of Space: The Tale 
of the First Inter-Stellar Cruise (Buffalo Book Company(?)), naming Garby and Smith
 on the title page but Smith alone on the cover —with frontispiece by Charles 
Schneeman. The Library of Congress catalogs it as "by Edward E. Smith, in 
collaboration with Mrs. Lee Hawkins Garby"; publisher Southgate Press. A revised 
edition by Smith alone was published by Pyramid Books in 1958 and reissued many 
times. From 2007 the original by Garby and Smith has been in print again.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (28, 
'Andre Norton', 'f', '1912-02-17', '2005-03-17', 'Andre Alice Norton (born Alice 
Mary Norton, February 17, 1912 – March 17, 2005) was an American writer of science 
fiction and fantasy, who also wrote works of historical fiction and contemporary 
fiction. She wrote primarily under the pen name Andre Norton, but also under Andrew
 North and Allen Weston. She was the first woman to be Gandalf Grand Master of 
Fantasy, first to be SFWA Grand Master, and first inducted by the Science Fiction 
and Fantasy Hall of Fame.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (29, 
'David Lindsay', 'm', '1876-10-17', '1945-07-16', 'David Lindsay (3 March 1876 – 16
 July 1945) was an English author now best remembered for the philosophical science 
fiction novel A Voyage to Arcturus (1920).');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (30, 
'Poul Anderson', 'm', '1926-11-25', '2001-07-31', 'Poul William Anderson (November 
25, 1926 – July 31, 2001) was an American science fiction author who began his 
career during the Golden Age of the genre and continued to write and remain popular
 into the 21st century. Anderson also authored several works of fantasy, historical 
novels, and a prodigious number of short stories. He received numerous awards for 
his writing, including seven Hugo Awards and three Nebula Awards.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (32, 
'Fritz Leiber', 'm', '1910-12-24', '1992-09-05', 'Fritz Reuter Leiber, Jr. 
(December 24, 1910 – September 5, 1992) was an American writer of fantasy, horror, 
and science fiction. He was also a poet, actor in theater and films, playwright and
 chess expert. With writers such as Robert E. Howard and Michael Moorcock, Leiber 
can be regarded as one of the fathers of sword and sorcery fantasy, having created 
the term.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (33, 
'Cory Doctorow', 'm', '1971-07-17', NULL, 'Cory Efram Doctorow (; born July 17, 
1971) is a Canadian-British blogger, journalist, and science fiction author who 
serves as co-editor of the blog Boing Boing. He is an activist in favour of 
liberalising copyright laws and a proponent of the Creative Commons organization, 
using some of their licenses for his books. Some common themes of his work include 
digital rights management, file sharing, and post-scarcity economics.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (37, 
'Karel Čapek', 'm', '1890-01-09', '1938-12-25', 'Karel Čapek (Czech: [ˈkarɛl 
ˈtʃapɛk]; 9 January 1890 – 25 December 1938) was a Czech writer of the early 20th 
century. He had multiple roles throughout his career, including playwright, 
dramatist, essayist, publisher, literary reviewer, photographer and art critic. 
Nonetheless, he is best known for his science fiction including his novel War with 
the Newts and the play R.U.R. (Rossum''s Universal Robots), which introduced the 
word robot. He also wrote many politically charged works dealing with the social 
turmoil of his time. Largely influenced by American pragmatic liberalism, he 
campaigned in favor of free expression and utterly despised the rise of both 
fascism and communism in Europe.
 Čapek was nominated for the Nobel Prize in Literature seven times, but he never 
won. However, several awards are named after him, such as the Karel Čapek Prize, 
which is awarded every other year by Czech PEN Club for literary work that 
contributes to reinforcing or maintaining democratic and humanist values in the 
society. He was also a key figure in the creation of the Czechoslovak PEN Club as a
 part of the International PEN. He died on the brink of World War II as a result of 
lifelong medical condition, but his legacy as a literary figure has been well 
established after the war.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (38, 'E. 
Everett Evans', 'm', '1893-11-30', '1958-12-02', 'Edward Everett Evans (November 
30, 1893 – December 2, 1958) was an American science fiction author and fan.
 His works included the novels Man of Many Minds (1953), The Planet Mappers (1955), 
Alien Minds (1955), and the posthumously-published collaboration with E. E. "Doc" 
Smith Masters of Space (1976); and the collection Food for Demons (1971). All of 
these novels since passed into public domain and are available for free 
download.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (39, 'Tom
 Godwin', 'm', NULL, NULL, 'Tom Godwin (January 1, 1915–January 1, 1980) was an 
American science fiction author. Godwin published three novels and twenty seven 
short stories. His hard SF short story "The Cold Equations" is a notable example of
 the mid-1950s science fiction genre.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (40, 
'Frederik Pohl', 'm', '1919-11-26', '2013-09-02', 'Frederik George Pohl Jr. (; 
November 26, 1919 – September 2, 2013) was an American science fiction writer, 
editor and fan, with a career spanning more than seventy-five years—from his first 
published work, the 1937 poem "Elegy to a Dead Satellite: Luna", to the 2011 novel 
All the Lives He Led and articles and essays published in 2012.
 From about 1959 until 1969, Pohl edited Galaxy and its sister magazine If; the 
latter won three successive annual Hugo Awards as the year''s best professional 
magazine. His 1977 novel Gateway won four "year''s best novel" awards: the Hugo 
voted by convention participants, the Locus voted by magazine subscribers, the 
Nebula voted by American science fiction writers, and the juried academic John W. 
Campbell Memorial Award. He won the Campbell Memorial Award again for the 1984 
collection of novellas Years of the City, one of two repeat winners during the 
first forty years. For his 1979 novel Jem, Pohl won a U.S. National Book Award in 
the one-year category Science Fiction. It was a finalist for three other years'' 
best novel awards. He won four Hugo and three Nebula Awards.
 The Science Fiction Writers of America named Pohl its 12th recipient of the Damon 
Knight Memorial Grand Master Award in 1993 and he was inducted by the Science 
Fiction and Fantasy Hall of Fame in 1998, its third class of two dead and two 
living writers.
 Pohl won the Hugo Award for Best Fan Writer in 2010, for his blog, "The Way the 
Future Blogs".');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (41, 'Jr.
 John W. Campbell', 'm', '1910-06-08', '1971-07-11', 'John Wood Campbell Jr. (June 
8, 1910 – July 11, 1971) was an American science fiction writer and editor. As 
editor of Astounding Science Fiction (later called Analog Science Fiction and Fact)
 from late 1937 until his death, he is generally credited with shaping the Golden 
Age of Science Fiction.
 Isaac Asimov called Campbell "the most powerful force in science fiction ever, and 
for the first ten years of his editorship he dominated the field completely."
 As a writer, Campbell published super-science space opera under his own name and 
moody stories under his primary and most famous pseudonym, Don A. Stuart. Campbell 
also wrote under the pen names Karl Van Kampen and Arthur McCann. He stopped 
writing fiction after he became editor of Astounding.
 His novella "Who Goes There?" was adapted as the films The Thing from Another World
 (1951), The Thing (1982), and The Thing (2011) .');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (42, 
'Philip José Farmer', 'm', '1918-01-26', '2009-02-25', 'Philip José Farmer (January
 26, 1918 – February 25, 2009) was an American author known for his science fiction 
and fantasy novels and short stories.
 Farmer is best known for his sequences of novels, especially the World of Tiers 
(1965–93) and Riverworld (1971–83) series. He is noted for the pioneering use of 
sexual and religious themes in his work, his fascination for, and reworking of, the
 lore of celebrated pulp heroes, and occasional tongue-in-cheek pseudonymous works 
written as if by fictional characters. Farmer often mixed real and classic 
fictional characters and worlds and real and fake authors as epitomized by his Wold
 Newton family group of books. These tie all classic fictional characters together 
as real people and blood relatives resulting from an alien conspiracy. Such works 
as The Other Log of Phileas Fogg (1973) and Doc Savage: His Apocalyptic Life (1973)
 are early examples of literary mashup.
 Literary critic Leslie Fiedler compared Farmer to Ray Bradbury as both being 
"provincial American eccentrics" who "strain at the classic limits of the [science 
fiction] form," but found Farmer distinctive in that he "manages to be at once 
naive and sophisticated in his odd blending of theology, pornography, and 
adventure."');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (46, 
'Samuel R. Delany', 'm', '1942-04-01', NULL, 'Samuel Ray Delany, Jr. (; born April 
1, 1942), Chip Delany to his friends, is an American author, professor and literary
 critic. His work includes fiction (especially science fiction), memoir, criticism, 
and essays on sexuality and society.
 His science fiction novels include Babel-17, The Einstein Intersection (winners of 
the Nebula Award for 1966 and 1967 respectively), Nova, Dhalgren, and the Return to
 Nevèrÿon series. After winning four Nebula awards and two Hugo awards over the 
course of his career, Delany was inducted by the Science Fiction and Fantasy Hall 
of Fame in 2002. From January 2001 until his retirement in May 2015, he was a 
professor of English and Creative Writing at Temple University in Philadelphia. In 
2010 he won the third J. Lloyd Eaton Lifetime Achievement Award in Science Fiction 
from the academic Eaton Science Fiction Conference at UCR Libraries. The Science 
Fiction Writers of America named him its 30th SFWA Grand Master in 2013.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (48, 
'John Joseph McGuire', 'm', NULL, NULL, NULL);
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (49, 
'Randall Garrett', 'm', '1927-12-16', '1987-12-31', 'Randall Garrett (December 16, 
1927 – December 31, 1987) was an American science fiction and fantasy author. He 
was a prolific contributor to Astounding and other science fiction magazines of the
 1950s and 1960s. He instructed Robert Silverberg in the techniques of selling large
 quantities of action-adventure science fiction, and collaborated with him on two 
novels about Earth bringing civilization to an alien planet.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (50, 
'Robert Silverberg', 'm', '1935-01-15', NULL, 'Robert Silverberg (born January 15, 
1935) is an American author and editor, best known for writing science fiction. He 
is a multiple winner of both Hugo and Nebula Awards, a member of the Science 
Fiction and Fantasy Hall of Fame, and a Grand Master of SF. He attended every Hugo 
Awards ceremony since the inaugural event in 1953.
 ');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (51, 'C. 
M. Kornbluth', 'm', '1923-07-02', '1958-03-21', 'Cyril M. Kornbluth (July 2, 1923 
March 21, 1958) was an American science fiction author and a member of the 
Futurians. He used a variety of pen-names, including Cecil Corwin, S. D. Gottesman,
 Edward J. Bellin, Kenneth Falconer, Walter C. Davies, Simon Eisner, Jordan Park, 
Arthur Cooke, Paul Dennis Lavond and Scott Mariner. The "M" in Kornbluth''s name 
may have been in tribute to his wife, Mary Byers; Kornbluth''s colleague and 
collaborator Frederik Pohl confirmed Kornbluth''s lack of any actual middle name in
 at least one interview.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (52, 
'Leigh Douglass Brackett', 'f', '1915-12-07', '1978-03-18', 'Leigh Douglass 
Brackett (December 7, 1915 – March 18, 1978) was an American writer, particularly 
of science fiction, and has been referred to as the Queen of Space Opera. She was 
also a screenwriter, known for her work on such films as The Big Sleep (1946), Rio 
Bravo (1959), The Long Goodbye (1973) and The Empire Strikes Back (1980).');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (60, 
'Abraham Merritt', 'm', '1884-01-20', '1943-08-21', 'Abraham Grace Merritt (January
 20, 1884 – August 21, 1943) – known by his byline, A. Merritt – was an American 
Sunday magazine editor and a writer of fantastic fiction.
 The Science Fiction and Fantasy Hall of Fame inducted him in 1999, its fourth class
 of two deceased and two living writers.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (61, 
'Murray Leinster', 'm', '1896-06-16', '1975-06-08', 'Murray Leinster (June 16, 1896– June 8, 1975) was a nom de plume of William Fitzgerald Jenkins, an award-winning 
American writer of science fiction and alternate history literature. He wrote and 
published more than 1,500 short stories and articles, 14 movie scripts, and 
hundreds of radio scripts and television plays.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (62, 
'Stanley Weinbaum', 'm', '1902-04-04', '1935-12-14', 'Stanley Grauman Weinbaum 
(April 4, 1902 – December 14, 1935) was an American science fiction writer. His 
career in science fiction was short but influential. His first story, "A Martian 
Odyssey", was published to great (and enduring) acclaim in July 1934, but he 
succumbed to lung cancer less than a year and a half later.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (63, 
'Frank Herbert', 'm', '1920-10-08', '1986-02-11', 'Frank Patrick Herbert, Jr. 
(October 8, 1920 – February 11, 1986) was an American science fiction writer best 
known for the novel Dune and its five sequels. Though he became famous for science 
fiction, he was also a newspaper journalist, photographer, short story writer, book
 reviewer, ecological consultant and lecturer.
 The Dune saga, set in the distant future and taking place over millennia, deals 
with complex themes such as human survival and evolution, ecology, and the 
intersection of religion, politics and power. Dune itself is the best-selling 
science fiction novel of all time and the series is widely considered to be among 
the classics of the genre.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (65, 
'Philip Wylie', 'm', '1902-05-12', '1971-10-25', 'Philip Gordon Wylie (May 12, 1902– October 25, 1971) was an American author of works ranging from pulp science 
fiction, mysteries, social diatribes and satire, to ecology and the threat of 
nuclear holocaust.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (66, 
'John Jacob Astor', 'm', NULL, NULL, NULL);
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (73, 
'Lester Del Rey', 'm', '1915-06-02', '1993-05-10', 'Lester del Rey (June 2, 1915 – 
May 10, 1993) was an American science fiction author and editor. He was the author 
of many books in the juvenile Winston Science Fiction series, and the editor at Del
 Rey Books, the fantasy and science fiction imprint of Ballantine Books, along with 
his fourth wife Judy-Lynn del Rey.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (83, 
'Edmond Hamilton', 'm', '1904-10-21', '1977-02-01', 'Edmond Moore Hamilton (October
 21, 1904 – February 1, 1977) was an American writer of science fiction during the 
mid-twentieth century.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (90, 
'Garrett P Serviss', 'm', '1851-03-24', '1929-05-25', 'Garrett Putnam Serviss 
(March 24, 1851 – May 25, 1929) was an American astronomer, popularizer of 
astronomy, and early science fiction writer. Serviss was born in upstate New York 
and majored in science at Cornell University. He took a law degree at Columbia 
University but never worked as an attorney. Instead, in 1876 he joined the staff of
 the The New York Sun newspaper, working as a journalist until 1892 under editor 
Charles Dana.
 Serviss showed a talent for explaining scientific details in a way that made them 
clear to the ordinary reader, leading Andrew Carnegie to invite him to deliver The 
Urania Lectures in 1894 on astronomy, cosmology, geology, and related matters. With
 Carnegie''s financial backing, these lectures were illustrated with magic lantern 
slides and other effects to show eclipses, presumed lunar landscapes, and much 
else. Serviss toured the United States for over two years delivering these 
lectures, then settled down to become a popular speaker in the New York area. He 
also wrote a syndicated newspaper column devoted to astronomy and other sciences 
and wrote frequently for the leading magazines of the day.
 Serviss'' favorite topic was astronomy, and of the fifteen books he wrote, eight 
are devoted to it. He unquestionably was more widely read by the public on that 
topic than anyone prior to his time. He worked with Max and Dave Fleischer on The 
Einstein Theory of Relativity (1923), a short silent film released in connection 
with one of Serviss'' books. He also wrote six works of fiction in his lifetime, 
all of which would today be classified as science fiction. Five of these were 
novels, and one was a short story.
 In his private life, Serviss was an enthusiastic mountain climber. He described his
 reaching the summit of the Matterhorn at the age of 43 as part of an effort "to get
 as far away from terrestrial gravity as possible." His son was the Olympic high 
jumper Garrett Serviss.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (95, 
'George O. Smith', 'm', NULL, NULL, 'George Oliver Smith (April 9, 1911 – May 27, 
1981) (also known by the pseudonym Wesley Long) was an American science fiction 
author. He is not to be confused with George H. Smith, another American science 
fiction author.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (97, 
'Donald A. Wollheim', 'm', '1914-08-26', '1990-11-02', 'Donald Allen Wollheim 
(October 1, 1914 – November 2, 1990) was an American science fiction editor, 
publisher, writer, and fan. As an author, he published under his own name as well 
as under pseudonyms, including David Grinnell.
A founding member of the Futurians, he was a leading influence on science fiction 
development and fandom in the 20th century United States.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (98, 
'William Tenn', 'm', '1920-05-09', '2010-02-07', 'William Tenn was the pseudonym of
 Philip Klass (May 9, 1920 – February 7, 2010), a British-born American science 
fiction author, notable for many stories with satirical elements.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (99, 
'Ralph Milne Farley', 'm', NULL, NULL, 'Roger Sherman Hoar (April 8, 1887 – October
 10, 1963) was an American state senator and assistant Attorney General, for the 
state of Massachusetts. He also wrote science fiction under the pseudonym of "Ralph
 Milne Farley".');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (107, 
'Pierre Benoit', 'm', NULL, NULL, 'Pierre Benoit (16 July 1886 – 3 March 1962) was 
a French novelist and member of the Académie française.
 Pierre Benoit, born in Albi (southern France) was the son of a French soldier. 
Benoit spent his early years and military service in Northern Africa, before 
becoming a civil servant. His first novel, Koenigsmark, was published in 1918; 
L''Atlantide was published the next year and was awarded the Grand Prize of the 
Académie française. Benoit became a member of the Académie in 1931.
 A political right-winger, Benoit was an admirer of the French fascist Charles 
Maurras. During the Nazi Occupation of France, Benoît joined the "Groupe 
Collaboration", a pro-Nazi arts group whose other members included Abel Bonnard, 
Georges Claude and Pierre Drieu La Rochelle. This led him to be arrested in 
September 1944; he was eventually released after six months, but his work remained 
on the "blacklist" of French Nazi collaborators for several years afterwards.
 Late in his life, Benoit gave a series of interviews with the French writer Paul 
Guimard.
 He died in March 1962 in Ciboure.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (119, 
'George Griffith', 'm', '1857-10-11', '1906-10-11', 'George Griffith (1857–1906), 
full name George Chetwynd Griffith-Jones, was a prolific British science fiction 
writer and noted explorer who wrote during the late Victorian and Edwardian age. 
Many of his visionary tales appeared in magazines such as Pearson''s Magazine and 
Pearson''s Weekly before being published as novels. Griffith was extremely popular 
in the United Kingdom, though he failed to find similar acclaim in the United 
States, in part due to his revolutionary and socialist views. A journalist, rather 
than scientist, by background, what his stories lack in scientific rigour and 
literary grace they make up for in sheer exuberance of execution.
 "To-night that spark was to be shaken from the torch of Revolution, and to-morrow 
the first of the mines would explode...the armies of Europe would fight their way 
through the greatest war that the world had ever seen." – from Griffith''s most 
famous novel The Angel of the Revolution.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (136, 
'James H. Schmitz', 'm', '1911-10-15', '1981-04-18', 'James Henry Schmitz (October 
15, 1911 – April 18, 1981) was an American science fiction writer born in Hamburg, 
Germany of American parents.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (138, 'F 
L Wallace', 'm', NULL, NULL, 'F. L. Wallace (February 16, 1915 – November 26, 
2004), sometimes credited as Floyd Wallace, was a noted science fiction and mystery
 writer. He was born in Rock Island, Illinois, in 1915, and died in Tustin, 
California, in 2004. Wallace spent most of his life in California as a writer and 
mechanical engineer after attending the University of Iowa. He also attended UCLA.
 His first published story, "Hideaway," appeared in the magazine Astounding. Galaxy 
Science Fiction and other science fiction magazines published subsequent stories of
 his including "Student Body", "Delay in Transit", "Bolden''s Pets", and "Tangle 
Hold". His mystery works include "Driving Lesson," a second-prize winner in the 
twelfth annual short story contest held by Ellery Queen''s Mystery Magazine. His 
novel, Address: Centauri, was published by Gnome Press in 1955. His works have been
 translated into numerous languages and his stories are available today around the 
world in anthologies.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (143, 
'Allan Danzig', 'm', NULL, NULL, NULL);
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (154, 
'Robert Shea', 'm', '1933-02-14', '1994-03-10', 'Robert Joseph Shea (February 14, 
1933 - March 10, 1994) was an American novelist and former journalist best known as
 co-author with Robert Anton Wilson of the science fantasy trilogy Illuminatus!. It 
became a cult success and was later turned into a marathon-length stage show put on
 at the British National Theatre and elsewhere. In 1986 it won the Prometheus Hall 
of Fame Award. Shea went on to write several action novels based in exotic 
historical settings.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (162, 
'Roger D. Aycock', 'm', NULL, NULL, 'Roger D. Aycock ( 6 December 1914 – 5 April 
2004) was an American author who wrote under the pseudonym Roger Dee. He primarily 
wrote science fiction.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (173, 
'Mary E. Bradley Lane', 'f', NULL, NULL, NULL);
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (176, 
'Ralph Williams', 'm', NULL, NULL, NULL);
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (190, 
'Homer Eon Flint', 'm', '1888-08-26', '1924-08-26', 'Homer Eon Flint (bornas Homer 
Eon Flindt; 1888 –1924) was an American writer of pulp science fiction novels and 
stories.
 He began working as a scenarist for silent films (reportedly at his wife''s 
insistence) in 1912. In 1918 he published "The Planeteer" in All-Story Weekly. His 
"Dr. Kinney" stories were reprinted by Ace Books in 1965, and with Austin Hall he 
co-wrote the novel The Blind Spot.
 Reportedly he died as a result of an involvement in a bank robbery attempt. 
According to his granddaughter the only witness was himself a gangster.
 His son was Max Hugh Flindt (1915-2004), co-founder of the ancient astronaut 
society who co-authored with Otto Binder Mankind – Child of the Stars in 1974, and 
in 2004 published Between the Apes and the Angels.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (199, 
'Jay Franklin', 'm', '1897-04-27', '1967-11-28', 'John Franklin Carter a.k.a. Jay 
Franklin a.k.a. Diplomat a.k.a. Unofficial Observer (1897–1967) was an American 
journalist, columnist, biographer and novelist. He notably wrote the syndicated 
column, "We the People", under his pen name Jay Franklin. He wrote over 30 books on
 a variety of subjects, including his detective novels about the character Dennis 
Tyler. In his column, he was one of the few who predicted Truman''s victory in the 
1948 presidential election.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (216, 
'Harold L. Goodwin', 'm', NULL, NULL, 'Harold Leland Goodwin (November 20, 1914 – 
February 18, 1990) was an American writer.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (224, 
'Everett B. Cole', 'm', '1910-04-17', '2001-08-21', 'Everett B. Cole was an 
American writer of science fiction short stories and a professional soldier. He 
fought at Omaha Beach during World War II and worked as a signal maintenance and 
property officer at Fort Douglas, Utah, retiring in 1960. He got a bachelor''s 
degree in Math and Physics and became a Math, Physics, and Chemistry teacher at 
Yorktown High School in Texas. His first science fiction story, "Philosophical 
Corps" was published in the magazine Astounding in 1951. His fix-up of that story 
and two others, The Philosophical Corps, was published by Gnome Press in 1962. A 
second novel, The Best Made Plans, was serialized in Astounding in 1959, but never 
published in book form. He also co-authored historical books about the south Texas 
region.');
 INSERT INTO public.authors (id, name, gender, born, died, summary) VALUES (243, 
'Michael Shaara', 'm', NULL, NULL, 'Michael Shaara (June 23, 1928 – May 5, 1988) 
was an American author of science fiction, sports fiction, and historical fiction. 
He was born to Italian immigrant parents (the family name was originally spelled 
Sciarra, which in Italian is pronounced in a similar way) in Jersey City, New 
Jersey, graduated in 1951 from Rutgers University, where he joined Theta Chi, and 
served as a sergeant in the 82nd Airborne Division prior to the Korean War.
 Before Shaara began selling science fiction stories to fiction magazines during the
 1950s, he was an amateur boxer and police officer. He later taught literature at 
Florida State University while continuing to write fiction. The stress of this and 
his cigarette smoking caused him, at the early age of 36, to have a heart attack, 
from which he recovered completely. His novel about the Battle of Gettysburg, The 
Killer Angels, won the Pulitzer Prize for Fiction in 1975. Shaara died of a heart 
attack in 1988 aged fifty-nine.
 Shaara''s son, Jeffrey Shaara, is also a popular writer of historical fiction; most
 notably sequels to his father''s best-known novel. His most famous is the prequel 
to The Killer Angels, Gods and Generals. Jeffrey got Michael''s last book, For Love
 of the Game, published three years after he died. Nowadays there is a Michael 
Shaara Award for Excellence in Civil War Fiction, established by Jeffrey Shaara, 
awarded yearly at Gettysburg College.
 Shaara''s daughter, Lila Shaara, is also a novelist.');---- TOC entry 4848 (class 0 OID 19629)-- Dependencies: 217-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: --
INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (1, 'The Time Machine', 3.87, 1895, 'English', 1, 1, 
'The Time Machine is a science fiction novel by H. G. Wells, published in 1895 and 
written as a frame narrative. Wells is generally credited with the popularization 
of the concept of time travel by using a vehicle that allows an operator to travel 
purposely and selectively forwards or backwards in time. The term "time machine", 
coined by Wells, is now almost universally used to refer to such a vehicle.
 The Time Machine has been adapted into three feature films of the same name, as 
well as two television versions, and a large number of comic book adaptations. It 
has also indirectly inspired many more works of fiction in many media 
productions.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (2, 'The War of the Worlds', 3.80, 1898, 'English', 
1, 2, 'The War of the Worlds is a science fiction novel by English author H. G. 
Wells first serialised in 1897 in the UK by Pearson''s Magazine and in the United 
States by Cosmopolitan magazine. The novel''s first appearance in hardcover was in 
1898 from publisher William Heinemann of London. Written between 1895 and 1897, it 
is one of the earliest stories that detail a conflict between mankind and an 
extraterrestrial race. The novel is the first-person narrative of both an unnamed 
protagonist in Surrey and of his younger brother in London as southern England is 
invaded by Martians. The novel is one of the most commented-on works in the science
 fiction canon.
 The plot has been related to invasion literature of the time. The novel has been 
variously interpreted as a commentary on evolutionary theory, British imperialism, 
and generally Victorian superstitions, fears and prejudices. At the time of 
publication, it was classified as a scientific romance, like Wells'' earlier novel 
The Time Machine. The War of the Worlds has been both popular (having never been 
out of print) and influential, spawning half a dozen feature films, radio dramas, a
 record album, various comic book adaptations, a television series, and sequels or 
parallel stories by other authors. It has even influenced the work of scientists, 
notably Robert H. Goddard, who, inspired by the book, invented both the liquid 
fuelled rocket and multistage rocket, which resulted in the Apollo 11 Moon landing 
71 years later.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (3, 'A Princess of Mars', 3.80, 1912, 'English', 2, 
3, 'A Princess of Mars is a science fantasy novel by American writer Edgar Rice 
Burroughs, the first of his Barsoom series. It was first serialized in the pulp 
magazine All-Story Magazine from February–July, 1912. Full of swordplay and daring 
feats, the novel is considered a classic example of 20th-century pulp fiction. It 
is also a seminal instance of the planetary romance, a subgenre of science fantasy 
that became highly popular in the decades following its publication. Its early 
chapters also contain elements of the Western. The story is set on Mars, imagined 
as a dying planet with a harsh desert environment. This vision of Mars was based on
 the work of the astronomer Percival Lowell, whose ideas were widely popularized in 
the late 19th and early 20th centuries.
 The Barsoom series inspired a number of well-known 20th-century science fiction 
writers, including Jack Vance, Ray Bradbury, Arthur C. Clarke, Robert A. Heinlein, 
and John Norman. The series was also inspirational for many scientists in the 
fields of space exploration and the search for extraterrestrial life, including 
Carl Sagan, who read A Princess of Mars when he was a child.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (4, 'Youth', 4.18, 1952, 'English', 3, 4, '"Youth" is
 a science fiction novelette by Isaac Asimov. It first appeared in the May 1952 
issue of Space Science Fiction and was reprinted in the 1955 collection The Martian
 Way and Other Stories. Youth is one of the rare Asimov stories with alien 
characters.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (5, '2 B R 0 2 B', 0.00, 1962, 'English', 4, 5, '"2 B
 R 0 2 B" is a science fiction short story by Kurt Vonnegut, originally published in
 the digest magazine Worlds of If Science Fiction, January 1962, and collected in 
Vonnegut''s Bagombo Snuff Box (1999). The title is pronounced "2 B R naught 2 B", 
referencing the famous phrase "to be, or not to be" from William Shakespeare''s 
Hamlet, Prince of Denmark. In this story, the title refers to the telephone number 
one dials to schedule an assisted suicide with the Federal Bureau of Termination. 
Vonnegut''s 1965 novel God Bless You, Mr. Rosewater describes a story by this name,
 attributing it to his recurring character Kilgore Trout, although the plot summary 
given is closer in nature to the eponymous tale from his short-story collection 
Welcome to the Monkey House.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (6, 'Anthem', 3.62, 1938, 'English', 5, 6, 'Anthem is
 a dystopian fiction novella by Ayn Rand, written in 1937 and first published in 
1938 in England. The story takes place at an unspecified future date when mankind 
has entered another dark age. Technological advancement is now carefully planned 
and the concept of individuality has been eliminated. A young man known as Equality
 7-2521 rebels by doing secret scientific research. When his activity is discovered,
 he flees into the wilderness with the girl he loves. Together they plan to 
establish a new society based on rediscovered individualism.
 Rand originally conceived of the story as a play, then decided to write for 
magazine publication. At her agent''s suggestion, she submitted it to book 
publishers. The novella was first published by Cassell in England. It was published
 in the United States only after Rand''s next novel, The Fountainhead, became a best
 seller. Rand revised the text for the US edition, which was published in 1946.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (7, 'Twenty Thousand Leagues under the Sea', 3.86, 
1869, 'English', 6, 7, 'Twenty Thousand Leagues Under the Sea (French: Vingt mille 
lieues sous les mers: Tour du monde sous-marin, Twenty Thousand Leagues Under the 
Seas: A Tour of the Underwater World) is a classic science fiction novel by French 
writer Jules Verne published in 1870.
 The novel was originally serialized from March 1869 through June 1870 in Pierre
Jules Hetzel''s periodical, the Magasin d''ï¿½ducation et de Rï¿½crï¿½ation. The 
deluxe illustrated edition, published by Hetzel in November 1871, included 111 
illustrations by Alphonse de Neuville and ï¿½douard Riou. The book was highly 
acclaimed when released and still is now; it is regarded as one of the premiere 
adventure novels and one of Verne''s greatest works, along with Around the World in
 Eighty Days and Journey to the Center of the Earth. The description of Nemo''s 
ship, called the Nautilus, was considered ahead of its time, as it accurately 
describes features on submarines, which at the time were very primitive vessels.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (8, 'The Lost World', 3.72, 1912, 'English', 7, 8, 
'The Lost World is a novel released in 1912 by Sir Arthur Conan Doyle concerning an
 expedition to a plateau in the Amazon basin of South America where prehistoric 
animals (dinosaurs and other extinct creatures) still survive. It was originally 
published serially in the popular Strand Magazine and illustrated by New-Zealand
born artist Harry Rountree during the months of April–November 1912. The character 
of Professor Challenger was introduced in this book. The novel also describes a war
 between indigenous people and a vicious tribe of ape-like creatures.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (9, 'The Island of Doctor Moreau', 3.56, 1896, 
'English', 1, 9, 'The Island of Doctor Moreau is an 1896 science fiction novel, by 
English author H. G. Wells.
 The text of the novel is the narration of Edward Prendick, a shipwrecked man 
rescued by a passing boat who is left on the island home of Doctor Moreau, who 
creates human-like hybrid beings from animals via vivisection. The novel deals with
 a number of philosophical themes, including pain and cruelty, moral responsibility,
 human identity, and human interference with nature. Wells described the novel as 
"an exercise in youthful blasphemy".
 The Island of Doctor Moreau is a classic of early science fiction and remains one 
of Wells''s best-known books. It has been adapted to film and other media on many 
occasions.
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (10, 'A Journey to the Center of the Earth', 3.58, 
1864, 'French', 6, 7, 'Journey to the Center of the Earth (French: Voyage au centre
 de la Terre, also translated under the titles A Journey to the Centre of the Earth 
and A Journey to the Interior of the Earth) is an 1864 science fiction novel by 
Jules Verne. The story involves German professor Otto Lidenbrock who believes there
 are volcanic tubes going toward the centre of the Earth. He, his nephew Axel, and 
their guide Hans descend into the Icelandic volcano Snï¿½fellsjï¿½kull, 
encountering many adventures, including prehistoric animals and natural hazards, 
before eventually coming to the surface again in southern Italy, at the Stromboli 
volcano.
 The genre of subterranean fiction already existed long before Verne. However, the 
present book considerably added to its popularity and influenced later such 
writings. For example, Edgar Rice Burroughs explicitly acknowledged Verne''s 
influence on his own Pellucidar series.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (11, 'Second Variety', 3.96, 1953, 'English', 8, 4, 
'"Second Variety" is a science fiction short story by American writer Philip K. 
Dick, first published in Space Science Fiction magazine, in May 1953. A nuclear war
 between the Soviet Union and the West has reduced much of the world to a barren 
wasteland. The war continues, however, among the scattered remains of humanity. The
 Western forces have developed "claws", which are autonomous self-replicating robots
 to fight on their side. It is one of Dick''s many stories in which nuclear war has 
rendered the Earth''s surface uninhabitable. The story was adapted into the movie 
Screamers in 1995.
 The short story "Jon''s World" written in 1954 revisited the claw-infested world of
 "Second Variety".');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (12, 'The Mysterious Island', 4.08, 1874, 'English', 
6, 7, 'The Mysterious Island (French: L''ï¿½le mystï¿½rieuse) is a novel by Jules 
Verne, published in 1874. The original edition, published by Hetzel, contains a 
number of illustrations by Jules Fï¿½rat. The novel is a crossover sequel to 
Verne''s famous Twenty Thousand Leagues Under the Sea and In Search of the 
Castaways, though its themes are vastly different from those books. An early draft 
of the novel, initially rejected by Verne''s publisher and wholly reconceived 
before publication, was titled Shipwrecked Family: Marooned With Uncle Robinson, 
seen as indicating the influence on the novel of Robinson Crusoe and The Swiss 
Family Robinson. Verne developed a similar theme in his later novel, Godfrey Morgan
 (French: L''ï¿½cole des Robinsons, 1882).');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (13, 'The Dunwich Horror', 4.31, 1929, 'English', 9, 
10, '"The Dunwich Horror" is a short story by H. P. Lovecraft. Written in 1928, it 
was first published in the April 1929 issue of Weird Tales (pp. 481–508). It takes 
place in Dunwich, a fictional town in Massachusetts. It is considered one of the 
core stories of the Cthulhu Mythos. "The Dunwich Horror" is one of the few tales 
Lovecraft wrote wherein the heroes successfully defeat the antagonistic entity or 
monster of the story.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (14, 'Beyond the Door', 3.04, 1954, 'English', 8, 11,
 '"Beyond the Door" is a low fantasy short story by American writer Philip K. Dick, 
first published in the January 1954 issue of Fantastic Universe. The plot follows a
 cuckoo clock, which may or may not be intelligent, and a cuckolded husband.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (15, 'The Shunned House', 3.57, 1937, 'English', 9, 
12, '"The Shunned House" is a horror fiction novelette by American author H. P. 
Lovecraft, written on October 16–19, 1924. It was first published in the October 
1937 issue of Weird Tales.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (17, 'Flatland: A Romance of Many Dimensions', 3.81, 
1884, 'English', 10, 6, 'Flatland: A Romance of Many Dimensions is a satirical 
novella by the English schoolmaster Edwin Abbott Abbott, first published in 1884 by
 Seeley & Co. of London.
 Written pseudonymously by "A Square", the book used the fictional two-dimensional 
world of Flatland to comment on the hierarchy of Victorian culture, but the 
novella''s more enduring contribution is its examination of dimensions.
 Several films have been made from the story, including the feature film Flatland 
(2007). Other efforts have been short or experimental films, including one narrated
 by Dudley Moore and the short films Flatland: The Movie (2007) and Flatland 2: 
Sphereland (2012).');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (18, 'The House on the Borderland', 3.67, 1908, 
'English', 11, 14, 'The House on the Borderland (1908) is a supernatural horror 
novel by British fantasist William Hope Hodgson. The novel is a hallucinatory 
account of a recluse''s stay at a remote house, and his experiences of supernatural
 creatures and otherworldly dimensions.
 American horror writer H. P. Lovecraft listed The House on the Borderland and other
 works by Hodgson among his greatest influences, and Terry Pratchett has called the 
novel "the Big Bang in my private universe as a science fiction and fantasy reader 
and, later, writer".');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (20, 'The Night Land', 3.65, 1912, 'English', 11, 15,
 'The Night Land is a classic horror novel by William Hope Hodgson, first published 
in 1912. As a work of fantasy it belongs to the Dying Earth subgenre. Hodgson also 
published a much shorter version of the novel, entitled The Dream of X (1912).
 The Night Land was revived in paperback by Ballantine Books, which republished the 
work in two parts as the 49th and 50th volumes of its Ballantine Adult Fantasy 
series in July 1972.
 H. P. Lovecraft''s essay "Supernatural Horror in Literature" describes the novel as
 "one of the most potent pieces of macabre imagination ever written". Clark Ashton 
Smith wrote of it that "In all literature, there are few works so sheerly 
remarkable, so purely creative, as The Night Land. Whatever faults this book may 
possess, however inordinate its length may seem, it impresses the reader as being 
the ultimate saga of a perishing cosmos, the last epic of a world beleaguered by 
eternal night and by the unvisageable spawn of darkness. Only a great poet could 
have conceived and written this story; and it is perhaps not illegitimate to wonder
 how much of actual prophecy may have been mingled with the poesy."
 When the book was written, the nature of the energy source that powers stars was 
not known: Lord Kelvin had published calculations based on the hypothesis that the 
energy came from the gravitational collapse of the gas cloud that had formed the 
sun and found that this mechanism gave the Sun a lifetime of only a few tens of 
million of years. Starting from this premise, Hodgson wrote a novel describing a 
time, millions of years in the future, when the Sun has gone dark.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (21, 'The Gods of Mars', 3.86, 1913, 'English', 2, 
16, 'The Gods of Mars is a science fantasy novel by American writer Edgar Rice 
Burroughs, the second of his Barsoom series. It was first published in All-Story as
 a five-part serial in the issues for January–May 1913. It was later published as a 
complete novel by A. C. McClurg in September, 1918.
 As in many of his novels, Burroughs begins with a frame story that explains how he 
(Burroughs) came into possession of the text, implying it recounts true events.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (22, 'The Variable Man', 3.76, 1953, 'English', 8, 4,
 'The Variable Man is a novella written and sold by Philip K. Dick before he had an 
agent. It was first published in Space Science Fiction (British), Vol. 2 No. 2, 
July 1953 and Space Science Fiction, September 1953 with the US publication 
illustrated by Alex Ebel. Despite the magazine cover dates it is unclear whether 
the first publication was in the UK or in the United States where magazines tended 
to be published farther ahead of their cover dates than in the UK. The Variable Man
 can be found in several collections of Dick''s short stories, including The 
Variable Man and The Short Happy Life of the Brown Oxford.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (23, 'Warlord of Mars', 3.86, 1914, 'English', 2, 16,
 'The Warlord of Mars is a science fantasy novel by American writer Edgar Rice 
Burroughs, the third of his Barsoom series. Burroughs began writing it in June, 
1913, going through five working titles; Yellow Men of Barsoom, The Fighting Prince
 of Mars, Across Savage Mars, The Prince of Helium, and The War Lord of Mars.
 The finished story was first published in All-Story Magazine as a four-part serial 
in the issues for December, 1913-March, 1914. It was later published as a complete 
novel by A. C. McClurg in September, 1919.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (24, 'The Big Trip Up Yonder', 3.91, 1962, 'English',
 4, 17, '"Tomorrow and Tomorrow and Tomorrow" is a short story by Kurt Vonnegut 
originally written in 1953. It was first published in Galaxy Science Fiction 
magazine in January 1954, where the story was titled "The Big Trip Up Yonder", 
which is the protagonist''s euphemism for dying. A revised version bearing the 
title "Tomorrow and Tomorrow and Tomorrow" appeared in Vonnegut''s collection of 
short stories, Canary in a Cat House (1961), and was reprinted in Welcome to the 
Monkey House (1968). The new title comes from the famous line in Shakespeare''s 
play Macbeth starting "Tomorrow and tomorrow and tomorrow".');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (25, 'Beyond Lies the Wub', 3.81, 1952, 'English', 8,
 18, '"Beyond Lies the Wub" is a science fiction short story by Philip K. Dick. It 
was his first published genre story, originally appearing in Planet Stories in July
 1952. It was first collected in The Preserving Machine in 1969, and was included in
 The Best of Philip K. Dick in 1977. It was the title story for the first volume of 
the original edition of Dick''s collected stories. Translations of "Beyond Lies the
 Wub" have appeared in Dutch, French, German, Italian, Polish and Spanish; and the 
story has been included in more than a dozen anthologies.
');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (27, 'Mr. Spaceship', 3.52, 1953, 'English', 8, 19, 
'"Mr. Spaceship" is a science fiction short story by Philip K. Dick, first 
published in 1953 in Imagination, and later in The Collected Stories of Philip K. 
Dick. It has since been republished several times, including in Beyond Lies the Wub
 in 1988.
 The story is set in the distant future, where humanity is at war with "Yuks", an 
alien life form which does not use mechanical spaceships nor constructions. 
Instead, it relies on life forms. The war has been going on for a long time, and 
humanity has not been able to come up with a solution against the life-form based 
ships and mines that the Yuks use. One day, a team of researchers led by Philip 
Kramer decide to build a spaceship which is powered by a human brain. They find the
 ideal candidate, Kramer''s old professor, a dying man who volunteers to donate his 
brain to the project.
 The spaceship is built and on the first test run into outer space, the team 
discovers that the professor made some changes to the ship, giving him—or rather, 
his brain—full control over the ship. Sensing trouble, the team flees the ship, 
leaving the empty ship, piloted by the professor, into outer space. Later, the 
spaceship returns and kidnaps Kramer and his wife, and on board the ship, the 
professor''s brain informs them that they''ll be looking for a new planet to 
colonize, to start over, as the professor sees no hope in humanity and what it has 
become- a species which desires, above all else, war.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (29, 'Triplanetary', 3.64, 1934, 'English', 14, 49, 
'Triplanetary is a science fiction novel and space opera by American writer E. E. 
Smith. It was first serialized in the magazine Amazing Stories in 1934. After the 
original four novels of the Lensman series were published, Smith expanded and 
reworked Triplanetary into the first of two prequels for the series. The expanded 
Triplanetary was published in book form in 1948 by Fantasy Press. The second 
prequel, First Lensman, was a new original novel published in 1950 by Fantasy 
Press.
 The novel covers several episodes in an eons-long human breeding project by the 
super-intelligences of the Arisians. This alien race is breeding two genetic lines 
to become the ultimate weapon in Arisia''s cosmic war with their arch-enemies, the 
Eddorians. The initial chapters cover the Kinnison genetic line during the fall of 
Atlantis and Nero''s reign in Rome. These tales were inserted into the novel 
following the serialized release, along with chapters covering members of the 
Kinnison line in World Wars One, Two, and Three.
 The final chapter of Triplanetary tells of the discovery of the inertialess drive 
that allows faster-than-light travel. Patrolman Conway Costigan and his friends 
engage in a space battle with Gray Roger the pirate gangster. This conflict is 
complicated by the arrival of the technologically superior, extra-Solar, amphibian
like Nevians, resulting in the first interstellar war involving humans. In this 
story Virgil Samms and Roderick Kinnison, important members of the two breeding 
lines, are introduced.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (31, 'The World Set Free', 3.51, 1914, 'English', 1, 
20, 'The World Set Free is a novel written in 1913 and published in 1914 by H. G. 
Wells. The book is based on a prediction of nuclear weapons of a more destructive 
and uncontrollable sort than the world has yet seen. It had appeared first in 
serialised form with a different ending as A Prophetic Trilogy, consisting of three
 books: A Trap to Catch the Sun, The Last War in the World and The World Set Free.
 A frequent theme of Wells''s work, as in his 1901 nonfiction book Anticipations, 
was the history of humans'' mastery of power and energy through technological 
advance, seen as a determinant of human progress. The novel begins: "The history of
 mankind is the history of the attainment of external power. Man is the tool-using, 
fire-making animal. . . . Always down a lengthening record, save for a set-back 
ever and again, he is doing more." (Many of the ideas Wells develops here found a 
fuller development when he wrote The Outline of History in 1918-1919.) The novel is
 dedicated "To Frederick Soddy''s Interpretation of Radium," a volume published in 
1909.
 Scientists of the time were well aware that the slow natural radioactive decay of 
elements like radium continues for thousands of years, and that while the rate of 
energy release is negligible, the total amount released is huge. Wells used this as
 the basis for his story. In his fiction,
 The problem which was already being mooted by such scientific men as Ramsay, 
Rutherford, and Soddy, in the very beginning of the twentieth century, the problem 
of inducing radio-activity in the heavier elements and so tapping the internal 
energy of atoms, was solved by a wonderful combination of induction, intuition, and
 luck by Holsten so soon as the year 1933.
 Wells''s knowledge of atomic physics came from reading William Ramsay, Ernest 
Rutherford, and Frederick Soddy; the last discovered the disintegration of uranium.
 Soddy''s book Wealth, Virtual Wealth and Debt praises The World Set Free. Wells''s 
novel may even have influenced the development of nuclear weapons, as the physicist
 Leï¿½ Szilï¿½rd read the book in 1932, the same year the neutron was discovered. In
 1933 Szilï¿½rd conceived the idea of neutron chain reaction, and filed for patents 
on it in 1934.
 Wells''s "atomic bombs" have no more force than ordinary high explosive and are 
rather primitive devices detonated by a "bomb-thrower" biting off "a little 
celluloid stud." They consist of "lumps of pure Carolinum" that induce "a blazing 
continual explosion" whose half-life is seventeen days, so that it is "never 
entirely exhausted," so that "to this day the battle-fields and bomb fields of that
 frantic time in human history are sprinkled with radiant matter, and so centres of 
inconvenient rays."
 Never before in the history of warfare had there been a continuing explosive; 
indeed, up to the middle of the twentieth century the only explosives known were 
combustibles whose explosiveness was due entirely to their instantaneousness; and 
these atomic bombs which science burst upon the world that night were strange even 
to the men who used them.
 Wells observes:
 Certainly it seems now that nothing could have been more obvious to the people of 
the earlier twentieth century than the rapidity with which war was becoming 
impossible. And as certainly they did not see it. They did not see it until the 
atomic bombs burst in their fumbling hands [...] All through the nineteenth and 
twentieth centuries the amount of energy that men were able to command was 
continually increasing. Applied to warfare that meant that the power to inflict a 
blow, the power to destroy, was continually increasing [...]There was no increase 
whatever in the ability to escape [...]Destruction was becoming so facile that any 
little body of malcontents could use it [...]Before the last war began it was a 
matter of common knowledge that a man could carry about in a handbag an amount of 
latent energy sufficient to wreck half a city.
 Wells viewed war as the inevitable result of the Modern State; the introduction of 
atomic energy in a world divided resulted in the collapse of society. The only 
possibilities remaining were "either the relapse of mankind to agricultural 
barbarism from which it had emerged so painfully or the acceptance of achieved 
science as the basis of a new social order." Wells''s theme of world government is 
presented as a solution to the threat of nuclear weapons.
 From the first they had to see the round globe as one problem; it was impossible 
any longer to deal with it piece by piece. They had to secure it universally from 
any fresh outbreak of atomic destruction, and they had to ensure a permanent and 
universal pacification.
 The devastation of the war leads the French ambassador at Washington, Leblanc, to 
summon world leaders to a conference at Brissago, where Britain''s "King Egbert" 
sets an example by abdicating in favor of a world state. Such is the state of the 
world''s exhaustion that the effective coup of this "council" ("Never, of course, 
had there been so provisional a government. It was of an extravagant illegality.") 
is resisted only in a few places. The defeat of Serbia''s "King Ferdinand Charles" 
and his attempt to destroy the council and seize control of the world is narrated 
in some detail.
 Brought to its senses, humanity creates a utopian order along Wellsian lines in 
short order. Atomic energy has solved the problem of work. In the new order "the 
majority of our population consists of artists."
 The World Set Free concludes with a chapter recounting the reflections of one of 
the new order''s sages, Marcus Karenin, during his last days. Karenin argues that 
knowledge and power, not love, are the essential vocation of humanity, and that 
"There is no absolute limit to either knowledge or power."
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (33, 'In the Year 2889', 3.22, 1889, 'English', 6, 
21, 'In the Year 2889 is an 1889 short story published under the name of Jules 
Verne, but now believed to be mainly the work of his son Michel Verne, based on his
 father''s ideas.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (34, 'The Crystal Crypt', 3.51, 1954, 'English', 8, 
18, 'The Crystal Crypt is a science fiction short story by Philip K. Dick, first 
published in the January 1954 edition of Planet Stories and later published in 
Beyond Lies the Wub in 1988.
 The story is set in the distant future where Earth and Mars are on the verge of 
war. The last spaceship to leave Mars headed for Earth is stopped and searched by 
Martian soldiers, who are looking for three saboteurs who destroyed a Martian city.
 They are not found, and the ship continues towards Earth. On board the space ship, 
a business man by the name of Thacher meets a young woman and two men, who tell 
that they are the people sought by the Martians, and proceed to tell Thacher the 
story of how they did not destroy the Martian city, but used a device to reduce the
 entire city to fit in a tiny globe, which they smuggled on board the ship. The city
 is to be used as a bargaining chip against Mars in the upcoming war. Thacher 
reveals that he is a Martian secret agent, and several of the passengers on board 
are Martian police.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (35, 'The Skull', 4.14, 1952, 'English', 8, 22, '"The
 Skull" is a science fiction short story by Philip K. Dick, first published in 1952 
in If, and later in The Collected Stories of Philip K. Dick. It has since been 
republished several times, including in Beyond Lies the Wub in 1988.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (36, 'The Gun', 4.18, 1952, 'English', 8, 18, 'The 
Gun is a science fiction short story by Philip K. Dick, first published in 1952 
September issue of Planet Stories, and later published in Beyond Lies the Wub in 
1984. "The Gun" has been published in Italian, German, French and Polish 
translations.
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (37, 'Deathworld', 3.94, 1960, 'English', 16, 23, 
'Deathworld is the name of a series of science fiction novels by Harry Harrison 
including the books Deathworld (first published 1960, serialized in Astounding 
Science Fiction), Deathworld 2 (1964, initially titled The Ethical Engineer and 
serialized in Analog) and Deathworld 3 (1968, serialized in Analog as The Horse 
Barbarians), plus the short story "The Mothballed Spaceship" (1973, written as part
 of a tribute to John W. Campbell). The central hero is a gambler who becomes 
involved with colonists of an extremely hostile planet.
 There are several hints that the novels take place in the same universe as 
Harrison''s The Stainless Steel Rat series; however, other hints suggest a similar 
universe but not exactly the same one. For example, at several points in the 
Deathworld series, the novels mention the Special Corps with Inskipp as its leader;
 however, the story "The Mothballed Spaceship" mentions an armada about to attack 
Earth—a planet that is long destroyed in the time of The Stainless Steel Rat 
universe.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (38, 'The Chessmen of Mars', 3.82, 1922, 'English', 
2, 16, 'The Chessmen of Mars is a science fantasy novel by American wrtier Edgar 
Rice Burroughs, the fifth of his Barsoom series. Burroughs began writing it in 
January, 1921, and the finished story was first published in Argosy All-Story 
Weekly as a six-part serial in the issues for February 18 and 25 and March 4, 11, 
18 and 25, 1922. It was later published as a complete novel by A. C. McClurg in 
November 1922.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (39, 'The Defenders', 3.97, 1953, 'English', 8, NULL,
 '"The Defenders" is a 1953 science fiction novelette by American author Philip K. 
Dick, and the basis for Dick''s 1964 novel The Penultimate Truth. It is one of 
several of his stories to be expanded into a novel. The story was first published 
in the January 1953 issue of Galaxy Science Fiction.
 In 1956, the story was adapted for the radio program X Minus One by George 
Lefferts.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (42, 'First Lensman', 3.84, 1950, 'English', 14, 49, 
'First Lensman is a science fiction novel and space opera by American author E. E. 
Smith. It was first published in 1950 by Fantasy Press in an edition of 5,995 
copies. Although it is the second novel in the Lensman series, it was the sixth 
written. The novel chronicles the founding of the Galactic Patrol by Virgil Samms, 
the first sentient being in our cosmos to wear the "Lens", a unique badge of 
authority which is actually a form of "pseudo-life" that grants telepathic powers 
to the defenders of Civilization.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (43, 'Thuvia, Maid of Mars', 3.75, 1920, 'English', 
2, 3, 'Thuvia, Maid of Mars is a science fantasy novel by Edgar Rice Burroughs, the
 fourth of the Barsoom series. The principal characters are Carthoris (the son of 
John Carter of Mars) and Thuvia of Ptarth, each of whom appeared in the previous 
two novels.
 While typical in many ways of Burrough''s Barsoom novels, it also includes some 
inventive elements.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (47, 'The Poison Belt', 3.56, 1913, 'English', 7, 8, 
'The Poison Belt was the second story, a novella, that Sir Arthur Conan Doyle wrote
 about Professor Challenger. Written in 1913, much of it takes place in a single 
room in Challenger''s house in Sussex – rather oddly, given that it follows The 
Lost World, a story set largely outdoors in the wilds of South America. This would 
be the last story written about Challenger until the 1920s, by which time Doyle''s 
spiritualist beliefs had begun to influence his writing.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (48, 'The First Men in the Moon', 3.69, 1901, 
'English', 1, 20, 'The First Men in the Moon is a scientific romance by the English
 author H. G. Wells, originally serialised in The Strand Magazine from December 1900
 to August 1901 and published in hardcover in 1901, who called it one of his 
"fantastic stories". The novel tells the story of a journey to the moon undertaken 
by the two protagonists, a businessman narrator, Mr. Bedford, and an eccentric 
scientist, Mr. Cavor. Bedford and Cavor discover that the moon is inhabited by a 
sophisticated extraterrestrial civilization of insect-like creatures they call 
"Selenites".
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (49, 'The Country of the Blind, and Other Stories', 
NULL, 1911, 'English', 1, 24, 'The Country of the Blind and Other Stories is a 
collection of thirty-three fantasy and science fiction short stories written by the
 English author H. G. Wells between 1894 and 1909. It was first published by Thomas 
Nelson and Sons in 1911. All the stories had first been published in various weekly
 and monthly periodicals. Twenty-seven of the stories had also been previously 
published in five earlier story collections by Wells.
 The title of this collection refers to one of Wells''s best known short stories, 
"The Country of the Blind", which is included in this book.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (50, 'Piper in the Woods', 3.57, 1953, 'English', 8, 
19, 'Piper in the Woods is a science fiction short story by Philip K. Dick, first 
published in 1953 in Imagination, and later in The Collected Stories of Philip K. 
Dick. It has since been republished several times, including in Beyond Lies the Wub
 in 1988.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (51, 'Tales of Space and Time', 3.84, 1899, 
'English', 1, 56, 'Tales of Space and Time is a fantasy and science fiction 
collection of three short stories and two novellas written by the English author H.
 G. Wells between 1897 and 1898. It was first published by Doubleday & McClure Co. 
in 1899. All the stories had first been published in various monthly periodicals 
and this was the first volume to collect these stories.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (52, 'At the Earth''s Core', 3.77, 1914, 'English', 
2, 3, 'At the Earth''s Core is a 1914 fantasy novel by American writer Edgar Rice 
Burroughs, the first in his series about the fictional "hollow earth" land of 
Pellucidar. It first appeared as a four-part serial in All-Story Weekly from April 
4–25, 1914. It was first published in book form in hardcover by A. C. McClurg in 
July, 1922.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (53, 'Armageddon—2419 A.D.', 3.31, 1928, 'English', 
20, 25, 'Armageddon 2419 A.D. is Philip Francis Nowlan''s novella which first 
appeared in the August 1928 issue of the pulp magazine Amazing Stories. A sequel 
called The Airlords of Han was published in the March 1929 issue of Amazing 
Stories. Both stories are now in the public domain in the US according to the 
Project Gutenberg website. In the 1960s, Nowlan''s two novellas were combined by 
editor Donald A. Wollheim into one paperback novel, titled Armageddon 2419 A.D. The
 characters and setting eventually evolved into Buck Rogers.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (54, 'Looking Backward, 2000 to 1887', 3.27, 1888, 
'English', 21, 26, 'Looking Backward: 2000–1887 is a utopian science fiction novel 
by Edward Bellamy, a journalist and writer from Chicopee Falls, Massachusetts; it 
was first published in 1888.
 It was the third-largest bestseller of its time, after Uncle Tom''s Cabin and Ben
Hur: A Tale of the Christ. It influenced a large number of intellectuals, and 
appears by title in many socialist writings of the day. "It is one of the few books
 ever published that created almost immediately on its appearance a political mass 
movement".
 In the United States alone, over 162 "Bellamy Clubs" sprang up to discuss and 
propagate the book''s ideas. Owing to its commitment to the nationalization of 
private property and the desire to avoid use of the term socialism, this political 
movement came to be known as Nationalism — not to be confused with the political 
concept of nationalism. The novel also inspired several utopian communities.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (56, 'The Hour of the Dragon', 4.28, 1950, 'English',
 22, 48, 'The Hour of the Dragon, also known as Conan the Conqueror, is a fantasy 
novel by American writer Robert E. Howard featuring his sword and sorcery hero 
Conan the Cimmerian. It was one of the last Conan stories published before 
Howard''s suicide although not the last to be written. The novel was first 
published in serial form in the December, 1935 through April, 1936 issues of the 
pulp magazine Weird Tales. The first book edition was published by Gnome Press in 
hardcover in 1950. The Gnome Press edition retitled the story Conan the Conqueror, 
a title retained by all subsequent editions until 1977, when the original title was
 restored in an edition issued published by Berkley/Putnam in 1977. The Berkley 
edition also reverted the text to that of its original Weird Tales publication, 
discarding later edits. Later editions have generally followed Berkley and 
published under the original title. The 1997 film Kull the Conqueror is loosely 
based on The Hour of the Dragon, replacing Conan with Kull but otherwise keeping 
the same basic plot.
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (59, 'The Land That Time Forgot', 3.81, 1918, 
'English', 2, 3, 'The Land That Time Forgot is a fantasy novel by American writer 
Edgar Rice Burroughs, the first of his Caspak trilogy. His working title for the 
story was "The Lost U-Boat." The sequence was first published in Blue Book Magazine
 as a three-part serial in the issues for September, October and November 1918. The 
complete trilogy was later combined for publication in book form under the title of
 the first part by A. C. McClurg in June 1924. Beginning with the Ace Books editions
 of the 1960s, the three segments have usually been issued as separate short novels.
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (61, 'Omnilingual', 3.70, 1957, 'English', 19, 25, 
'"Omnilingual" is a science fiction short story by American writer H. Beam Piper. 
Originally published in the February 1957 issue of Astounding Science Fiction, it 
focuses on the problem of archaeology on an alien culture.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (63, 'When the Sleeper Wakes', 3.42, 1899, 'English',
 1, 2, 'The Sleeper Awakes (1910) is a dystopian science fiction novel by H. G. 
Wells about a man who sleeps for two hundred and three years, waking up in a 
completely transformed London where he has become the richest man in the world. The
 main character awakes to see his dreams realised, and the future revealed to him in
 all its horrors and malformities.
 The novel is a rewritten version of When the Sleeper Wakes, a story by Wells that 
was serialised between 1898 and 1899.
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (66, 'The Skylark of Space', 3.74, 1928, 'English', 
26, 27, 'The Skylark of Space is a science fiction novel by American writer Edward 
E. "Doc" Smith, written between 1915 and 1921 while Smith was working on his 
doctorate. Though the original idea for the novel was Smith''s, he co-wrote the 
first part of the novel with Lee Hawkins Garby, the wife of his college classmate 
and later neighbor Carl Garby. The novel starts as an edisonade, but turns into a 
space travel adventure when the characters goes into deep space. The Skylark of 
Space is considered to be one of the earliest novels of interstellar travel and the
 first example of space opera. Originally serialized in 1928 in the magazine Amazing
 Stories, it was first published in book form in 1946 by the Buffalo Book Co. The 
novel was followed by three sequels, beginning with Skylark Three.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (67, 'Planet of the Damned', 3.57, 1962, 'English', 
16, 28, 'Planet of the Damned is a 1962 science fiction novel by American writer 
Harry Harrison. It was serialised in 1961 under the title Sense of Obligation and 
published under that name in 1967. It was nominated for the Hugo Award.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (68, 'Space Viking', 3.76, 1962, 'English', 19, 35, 
'Space Viking is a science fiction novel by American writer H. Beam Piper, set in 
his Terro-Human future history. It tells the story of one man''s search for his 
wife''s murderer and its unexpected consequences. The story was originally 
serialized in Analog magazine (November 1962 – February 1963), then published by 
Ace Books in 1963.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (71, 'Science Fiction of the Thirties', 4.00, 1930, 
'English', 17, 20, 'Science Fiction of the Thirties is an anthology of science 
fiction short stories edited by Damon Knight. It was first published in hardcover 
by Bobbs-Merrill in January 1976; a book club edition was issued simultaneously by 
the same publisher together with the Science Fiction Book Club, and a trade 
paperback edition by Avon Books in March 1977.
 The book collects eighteen tales by various authors originally published in the 
1930s and exemplifying American magazine science fiction of that decade, together 
with a foreword and three essays on the period by the editor, and a bibliography. 
The stories were originally published in Astounding Stories and Amazing Stories, 
the premier science fiction magazines of the time. The book reproduces period 
illustrations that accompanied the stories'' original appearances by H. W. Wesso, 
Leo Morey, Paul Orban, Howard V. Brown, Elliott Dold, Jr., Thompson, and Charles 
Schneeman.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (72, 'The Time Traders', 3.74, 1958, 'English', 28, 
34, 'The Time Traders is a science fiction novel by American writer Andre Norton 
(pseudonym, nï¿½e Alice Mary Norton), the first in The Time Traders series. It was 
first published in 1958, and has been printed in several editions. It was updated 
by Norton in 2000 to account for real world changes. It is part of Norton''s 
Forerunner universe.
 The Time Traders introduces the premise: a confrontation between Western heroes, 
and the "Reds", a mysterious alien race that has used time travel to alter Earth. 
This novel alternates among the present day, a trading tribal society in Britain, 
2000 B.C., and a glacial outpost in the last ice age.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (166, 'The Status Civilization', 3.94, 1960, 
'English', 23, NULL, 'The Status Civilization is a science fiction novel by Robert 
Sheckley, first published in 1960.
 The Status Civilization concerns Will Barrent, a man who finds himself, without 
memory of any crime or, indeed, of his previous life, being shipped across space to
 the planet Omega.
 Omega, used to imprison extreme offenders, has a hierarchical society of extreme 
brutality, where the only way to advance (and avoid dying) is to commit an endless 
series of crimes. The average life expectancy from time of arrival on Omega is 
three years. The story concerns Barrent''s attempt to survive, escape, and return 
to Earth to clear himself of the accusations against him.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (74, 'Key Out of Time', 3.82, 1963, 'English', 28, 
34, 'Key Out of Time is a science fiction novel by American writer Andre Norton, 
the fourth in her series The Time Traders. It was first published in 1963, and as 
of 2012, had been reprinted in 17 editions with cover changes, as well as twice in 
a combined edition with The Defiant Agents. It is part of Norton''s Forerunner 
universe.
 Key Out of Time continues the series’ premise, an encounter between Western heroes,
 and the Russian Communists, and the Baldies, a mysterious alien race that used time
 travel to alter Earth. Events in the previous novel, The Defiant Agents, are 
treated as a Time Agent failure — but read that novel for a different 
interpretation. The setting of this novel is a world, Hawaika, appearing to be a 
tropical paradise.
 Kirkus Reviews, strongly supportive after following the series for years, writes, 
“Again, Andre Norton, one of the greats among writers of teenage science fiction 
(Galactic Derelict, 1959, p.658, J-316, for one), has employed [her] boundless 
imagination… Owing to the author’s exceptional mastery of detail, and astute 
control of plot, Key Out of Time stands as a novel which should more than satisfy 
young science fiction fanciers and fanatics.”');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (75, 'A Voyage to Arcturus', 3.62, 1920, 'English', 
29, 29, 'A Voyage to Arcturus is a novel by Scottish writer David Lindsay, first 
published in 1920. It combines fantasy, philosophy, and science fiction in an 
exploration of the nature of good and evil and their relationship with existence. 
Described by critic and philosopher Colin Wilson as the "greatest novel of the 
twentieth century", it was a central influence on C. S. Lewis'' Space Trilogy. J. 
R. R. Tolkien said he read the book "with avidity". Clive Barker has stated " A 
Voyage to Arcturus is a masterpiece" and called it "an extraordinary work . . . 
quite magnificent."
 An interstellar voyage is the framework for a narrative of a journey through 
fantastic landscapes. The story is set at Tormance, an imaginary planet orbiting 
Arcturus, which, in the novel (but not in reality) is a double star system, 
consisting of stars Branchspell and Alppain. The lands through which the characters
 travel represent philosophical systems or states of mind, through which the main 
character, Maskull, passes on his search for the meaning of life.
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (79, 'The Ghost Pirates', 3.57, 1909, 'English', 11, 
30, 'The Ghost Pirates is a novel by William Hope Hodgson, first published in 1909.
 The economic style of writing has led horror writer Robert Weinberg to describe The
 Ghost Pirates as "one of the finest examples of the tightly written novel ever 
published." 
In it, Hodgson never describes in any remarkable details the ghosts - if this is 
indeed what they are, since their true nature is left ambiguous - he merely reports
 on their gradual commandeering of the ship.
 "The Ghost Pirates . . . is a powerful account of a doomed and haunted ship on its 
last voyage, and of the terrible sea-devils (of quasi-human aspect, and perhaps the
 spirits of bygone buccaneers) that besiege it and finally drag it down to an 
unknown fate. With its command of maritime knowledge, and its clever selection of 
hints and incidents suggestive of latent horrors in nature, this book at times 
reaches enviable peaks of power." — H.P. Lovecraft
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (80, 'The Door Through Space', 3.29, 1961, 'English',
 25, 35, 'The Door Through Space is a 1961 science fiction novel by American writer 
Marion Zimmer Bradley. An expansion of Bradley''s story "Bird of Prey", which first
 appeared in the May, 1957 issue of the magazine Venture, it is her first novel, and
 was published by Ace Books, bound tï¿½te-bï¿½che with Rendezvous on a Lost World by
 A. Bertram Chandler.
 Although it is not part of her Darkover book series, Darkover is mentioned (as 
another planet) in passing in the book; numerous Darkover elements appear in the 
book, such as a red sun, Dry Towns with chained women, catmen and other nonhumans, 
Terran Empire trade cities, Ghost Wind.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (82, 'The People That Time Forgot', 3.70, 1918, 
'English', 2, 35, 'The People That Time Forgot is a fantasy novel by American 
writer Edgar Rice Burroughs, the second of his Caspak trilogy. The sequence was 
first published in Blue Book Magazine as a three-part serial in the issues for 
September, October and November 1918, with The People That Time Forgot forming the 
second installment. The complete trilogy was later combined for publication in book
 form under the title of The Land That Time Forgot (properly speaking the title of 
the first part) by A. C. McClurg in June 1924. Beginning with the Ace Books 
editions of the 1960s, the three segments have usually been issued as separate 
short novels.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (83, 'The Defiant Agents', 3.87, 1962, 'English', 28,
 34, 'The Defiant Agents is a science fiction novel by American writer Andre Norton,
 the third in her series The Time Traders. It was first published in 1962, and as of
 2012, had been reprinted in ten editions with cover changes, as well as twice in a 
combined edition with Key Out of Time. It is part of Norton''s Forerunner universe.
 The Defiant Agents continues the series’ premise, an encounter between Western 
heroes, and the Russian Communists, and a mysterious alien race that has used time 
travel to alter Earth. Most interaction in this novel is in an American Indian-like
 setting.
 Kirkus Reviews comments, “Andre Norton, a polished writer of science fiction, 
weaves [her] outlandish fare in patterns intricate enough to attract the most 
devoted addict. Do not try to contrive a consistent political allegory out of [her]
 flight into fantasy. This is pure science fiction....”');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (85, 'A Pail of Air', 3.93, 1951, 'English', 32, 
NULL, '"A Pail of Air" is a science fiction short story by American writer Fritz 
Leiber, which originally appeared in the December 1951 issue of Galaxy Magazine and
 was dramatized on the radio show X Minus One in March 1956.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (86, 'The Food of the Gods and How It Came to Earth',
 3.50, 1904, 'English', 1, 20, 'The Food of the Gods and How It Came to Earth is a 
science fiction novel by H. G. Wells, first published in 1904. Wells called it "a 
fantasia on the change of scale in human affairs. . . . I had hit upon [the idea] 
while working out the possibilities of the near future in a book of speculations 
called Anticipations (1901)." There have been various B-movie adaptations. The 
novel is about a group of scientists who invent a food that accelerates the growth 
of children and turns them into giants when they become adults.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (87, 'Down and Out in the Magic Kingdom', 3.57, 2003,
 'English', 33, 50, 'Down and Out in the Magic Kingdom is a 2003 science fiction 
book, the first novel by Canadian author and digital-rights activist Cory Doctorow.
 Concurrent with its publication by Tor Books, Doctorow released the entire text of 
the novel under a Creative Commons noncommercial license on his website, allowing 
the whole text of the book to be freely read and distributed without needing any 
further permission from him or his publisher.
 The novel was nominated for the Nebula Award for Best Novel in 2004.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (89, 'Skylark Three', 3.84, 1930, 'English', 14, 49, 
'Skylark Three is a science fiction novel by American writer E. E. Smith, the 
second in his Skylark series. Originally serialized through the Amazing Stories 
magazine in 1930, it was first collected in book form in 1948 by Fantasy Press.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (90, 'The Hyborian Age', 3.42, 1938, 'English', 22, 
NULL, 'The Hyborian Age is an essay by Robert E. Howard pertaining to the Hyborian 
Age, the fictional setting of his stories about Conan the Cimmerian. It was written
 in the 1930s but not published during Howard''s lifetime. Its purpose was to 
maintain consistency within his fictional setting.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (91, 'Plague Ship', 4.02, 1956, 'English', 28, 48, 
'Plague Ship is a science fiction novel by author Andrew North (pseudonym of Alice 
Mary Norton, also known as Andre Norton). It was published in 1956 by Gnome Press 
in an edition of 5,000 copies. The book is the second volume of the author''s Solar
 Queen series.
');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (95, 'The Monster Men', 4.25, 1929, 'English', 2, 3, 
'The Monster Men is a 1913 science fiction novel written by American author Edgar 
Rice Burroughs under the working title "Number Thirteen". It first appeared in 
print under the title of "A Man Without a Soul" in the November, 1913 issue of All
Story Magazine, and was first published in book form in hardcover by A. C. McClurg 
in March, 1929 under the present title. It has been reissued a number of times 
since by various publishers. The first paperback edition was issued by Ace Books in
 February 1963.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (99, 'R.U.R.', 3.86, 1920, 'Czech', 37, NULL, 'R.U.R.
 is a 1920 science fiction play by the Czech writer Karel Čapek. R.U.R. stands for 
Rossumovi Univerzální Roboti (Rossum’s Universal Robots). However, the English 
phrase Rossum’s Universal Robots had been used as the subtitle in the Czech 
original. It premiered on 25 January 1921 and introduced the word "robot" to the 
English language and to science fiction as a whole.
 R.U.R. quickly became famous and was influential early in the history of its 
publication. By 1923, it had been translated into thirty languages.
 The play begins in a factory that makes artificial people, called roboti (robots), 
from synthetic organic matter. They are not exactly robots by the current 
definition of the term: they are living flesh and blood creatures rather than 
machinery and are closer to the modern idea of clones. They may be mistaken for 
humans and can think for themselves. They seem happy to work for humans at first, 
but a robot rebellion leads to the extinction of the human race. Čapek later took a
 different approach to the same theme in War with the Newts, in which non-humans 
become a servant class in human society.
 R.U.R. is dark but not without hope, and was successful in its day in both Europe 
and North America.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (103, 'Space Prison', 3.85, 1958, 'English', 39, 48, 
'The Survivors is a science fiction novel by author Tom Godwin. It was published in
 1958 by Gnome Press in an edition of 5,000 copies, of which 1,084 were never bound.
 The novel was published in paperback by Pyramid Books in 1960 under the title Space
 Prison. The novel is an expansion of Godwin''s story "Too Soon to Die" which first 
appeared in the magazine Venture.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (106, 'The Tunnel Under The World', 3.90, 1955, 
'English', 40, NULL, '"The Tunnel under the World" is a science fiction short story
 by American writer Frederik Pohl. It was first published in 1955 in Galaxy 
magazine. It has often been anthologised, appearing among the others in The Golden 
Age of Science Fiction, edited by Kingsley Amis (1981).');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (108, 'The Black Star Passes', 3.25, 1953, 'English',
 41, 49, 'The Black Star Passes is a collection of science fiction short stories by 
American author John W. Campbell, Jr.. It was first published in 1953 by Fantasy 
Press in an edition of 2,951 copies. The book is the first in Campbell''s Arcot, 
Morey and Wade series. The stories originally appeared in the magazines Amazing 
Stories and Amazing Stories Quarterly, and were "extensively edited" for book 
publication, with Campbell''s approval, by Lloyd Arthur Eshbach.
 Galaxy reviewer Groff Conklin described the stories as "three creaking classics . .
 . fun to read, [but] rococo antiques [without] believable characters, human 
relations, even logical plots." Boucher and McComas dismissed the book as "a 
hopelessly outdated set of novelets . . . of concern only to those who wish to 
observe the awkward larval stage of a major figure in science fiction." P. Schuyler
 Miller described the stories as "old-fashioned fun which [Campbell] no longer takes
 any more seriously than you need to."');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (110, 'Little Fuzzy', 3.99, 1962, 'English', 19, 31, 
'Little Fuzzy is a 1962 juvenile science fiction novel by H. Beam Piper, now in 
public domain. It was nominated for the 1963 Hugo Award for Best Novel.
 The story revolves around determining whether a small furry species discovered on 
the planet Zarathustra is sapient, and features a mild libertarianism that 
emphasizes sincerity and honesty.
 During a book signing at Strand Book Store, Piper alleged that the Little Fuzzy 
series was inspired by an acquaintance named Kevin "Fuzzy" Sheffield, whom Piper 
first met in a literary club in central Oregon. When asked about Sheffield, Piper 
described him as "a bizarre character, capable of writing little more than a couple
 of vaguely-legible remarks in each letter. While I''m sure he''s full of insight 
and great ideas, it seems impossible to effectively communicate with him on a 
conventional human level...terribly nice fellow however."
 The book was followed by a sequel, Fuzzy Sapiens (original title The Other Human 
Race) published in 1964, the same year that Piper committed suicide in November.
 In the wake of Piper''s suicide, rumor spread of a lost "second sequel"; at the 
behest of Ace Books, William Tuning produced the critically acclaimed Fuzzy Bones. 
Later, Piper''s lost manuscript was discovered, and published as Fuzzies and Other 
People. Ace also hired Ardath Mayhar to write Golden Dreams: A Fuzzy Odyssey, which
 tells the events of Little Fuzzy from the viewpoint of the Fuzzies (or Gashta, as 
they call themselves).
 A new volume in the series, Fuzzy Ergo Sum by Wolfgang Diehr, was published by 
Pequod Press in April 2011. A second book, Caveat Fuzzy was released in August 
2012. In 2011, John Scalzi published Fuzzy Nation, which he described as a "reboot"
 of Piper''s original.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (111, 'Out of Time''s Abyss', 3.64, 1918, 'English', 
2, 32, 'Out of Time’s Abyss is a fantasy-science fiction novel by American writer 
Edgar Rice Burroughs, the third of his Caspak trilogy. The sequence was first 
published in Blue Book Magazine as a three-part serial in the issues for September,
 October and November 1918, with Out of Time''s Abyss forming the third installment.
 The complete trilogy was later combined for publication in book form under the 
title of The Land That Time Forgot (the title of the first part) by A. C. McClurg 
in June 1924. Beginning with the Ace Books editions of the 1960s, the three 
segments have usually been issued as separate short novels.
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (169, 'Falcons of Narabedla', 3.11, 1957, 'English', 
25, 35, 'Falcons of Narabedla is a science fiction novel by Marion Zimmer Bradley 
set in the universe of her Darkover series. It was first published in book form in 
English by Ace Books in 1964, as an Ace Double with Bradley''s collection The Dark 
Intruder and Other Stories on the other side. The story first appeared in the May 
1957 issue of the magazine Other Worlds.
 The name "Narabedla" is the name of the star "Aldebaran" spelled backwards.
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (113, 'Red Nails', 4.04, 1936, 'English', 22, 33, 
'"Red Nails" is the last of the stories about Conan the Cimmerian written by 
American author Robert E. Howard. A novella, it was originally serialized in Weird 
Tales magazine from July to October 1936. It is set in the pseudohistorical 
Hyborian Age and concerns Conan encountering a lost city in which the degenerate 
inhabitants are proactively resigned to their own destruction. Due to its grim 
themes of decay and death, the story is considered a classic of Conan lore and is 
often cited by Howard scholars as one of his best tales.
 The story was republished in the collections The Sword of Conan (Gnome Press, 1952)
 and Conan the Warrior (Lancer Books, 1967). It was first published by itself in 
book form by Donald M. Grant, Publisher, Inc. in 1975 as volume IV of their deluxe 
Conan set. It has most recently been republished in the collections The Conan 
Chronicles Volume 2: The Hour of the Dragon (Gollancz,2001) and The Conquering 
Sword of Conan (Del Rey, 2005) (published in the United Kingdom by Wandering Star 
as Conan of Cimmeria: Volume Three (1935-1936)), as well as The Best of Robert E. 
Howard, Volume 2: Grim Lands (Del Rey, 2007).');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (119, 'The Devil in Iron', 3.51, 1934, 'English', 22,
 33, 'The Devil in Iron is a 1976 collection of two fantasy short stories written by
 Robert E. Howard featuring his sword and sorcery hero Conan the Barbarian. The book
 was published in 1976 by Donald M. Grant, Publisher, Inc. as volume V of their 
deluxe Conan set. The stories both originally appeared in the magazine Weird 
Tales.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (120, 'Beyond the Black River', 4.05, 1935, 
'English', 22, 48, '"Beyond the Black River" is one of the original short stories 
about Conan the Cimmerian, written by American author Robert E. Howard and first 
published in Weird Tales magazine, v. 25, nos. 5-6, May-June 1935. The story was 
republished in the collections King Conan (Gnome Press, 1953) and Conan the Warrior
 (Lancer Books, 1967). It has more recently been published in the anthology The 
Mighty Swordsmen (Lancer Books, 1970), and the collections The Conan Chronicles 
Volume 2: The Hour of the Dragon (Gollancz, 2001) and Conan of Cimmeria: Volume 
Three (1935-1936) (Del Rey, 2005). It is set in the pseudo-historical Hyborian Age 
and concerns Conan fighting the savage Hyborian Picts in the unsettled lands beyond
 the infamous Black River.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (121, 'The Green Odyssey', 3.55, 1957, 'English', 42,
 53, 'The Green Odyssey is an American science fiction novel written by Philip José 
Farmer. It was Farmer''s first book-length publication, originally released by 
Ballantine in 1957. Unlike Farmer''s most prolific earlier short story work, this 
book contains no sexual themes, though his next book Flesh returned to these 
motifs. The novel also appeared in the back ground of the first episode of The 
Twilight Zone.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (122, 'A Witch Shall Be Born', 3.84, 1934, 'English',
 22, 33, '"A Witch Shall Be Born" is one of the original novellas by Robert E. 
Howard about Conan the Cimmerian. It was written in only a few days in spring of 
1934 and first published in Weird Tales in December 1934. The story concerns a 
witch replacing her twin sister as queen of a city state, which brings her into 
conflict with Conan who had been the captain of the queen''s guard. Themes of 
paranoia, and the duality of the twin sisters, are paramount in this story but it 
also includes elements of the conflict between barbarism and civilization that is 
common to the entire Conan series. The novella as a whole is considered an average 
example of the series but one scene stands out. Conan''s crucifixion early in the 
story in the second chapter ("The Tree of Death") is considered one of the most 
memorable scenes in the entire series. A variation of this scene was included in 
the 1982 film Conan the Barbarian with Arnold Schwarzenegger.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (126, 'The People of the Black Circle', 3.67, 1934, 
'English', 22, 33, '{{stack|
 "The People of the Black Circle" is one of the original novellas about Conan the 
Cimmerian, written by American author Robert E. Howard and first published in Weird
 Tales magazine in three parts over the September, October and November 1934 issues.
 Howard earned $250 for the publication of this story.
 It is set in the pseudo-historical Hyborian Age and concerns Conan kidnapping a 
regal princess of Vendhya (pre-historical India) and foiling a nefarious plot of 
world domination by the Black Seers of Yimsha. Due to its epic scope and atypical 
Hindustan flavor, the story is considered an undisputed classic of Conan lore and 
is often cited by Howard scholars as one of his best tales. It is also one of the 
few Howard stories where the reader is treated a deeper insight on magic and 
magicians beyond the stereotypical Hyborian depiction as demon conjurer
illusionist-priests.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (127, 'Star Born', 3.83, 1957, 'English', 28, 34, 
'Star Born is a science fiction novel by American writer Andre Norton, first 
published in 1957 by World Publishing Company of Cleveland. This is the sequel to 
The Stars Are Ours! and continues that adventure three generations on.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (129, 'Spacehounds of IPC', 3.69, 1931, 'English', 
14, 49, 'Spacehounds of IPC is a science fiction novel by author E. E. Smith. It 
was first published in book form in 1947 by Fantasy Press in an edition of 2,008 
copies. It was the first book published by Fantasy Press. The novel was originally 
serialized in the August, September and October issues of the magazine Amazing 
Stories in 1931. Smith became disenchanted when he saw that editor T. O''Conor 
Sloane had made some unauthorized changes in the story, most likely to give each of
 the three parts it had been split into equal length. Earlier "Doc" Smith had 
written the first great novels of interstellar exploration, the Skylark series, and
 later he created another sweeping multi-volume series about the Galactic Patrol in 
the Lensman series. But this story, Spacehounds of IPC, stands alone. Although it 
has many similarities to the Lensmen series, the technology and the lifeforms in 
the story cannot be reconciled with the universe of the Lensmen. It is possible 
that Smith may have been planning this story as the beginning of a new series, but 
he was never to return to this setting (mainly Jupiter and its moons) or to the 
characters in this story. The story was the first to use the term "tractor beam", a
 name and concept that has been adopted by many subsequent literary works of fiction
 and other media until the present day.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (130, 'The Jewels of Aptor', 3.30, 1962, 'English', 
46, 35, 'The Jewels of Aptor is a 1962 science fantasy novel by Samuel R. Delany, 
his first published novel. It first appeared in shortened form as an Ace Double F
173 together with Second Ending by James White.
 From the 1968 edition onwards, Delany''s original text has been restored, as the 
first edition was shortened by about fifteen pages for publication in the Ace 
Double format. 
');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (132, 'Islands of Space', 3.64, 1956, 'English', 41, 
49, 'Islands of Space is a science fiction novel by American writer John W. 
Campbell, Jr.. It was first published in book form in 1957 by Fantasy Press in an 
edition of 1,417 copies. The novel originally appeared in the magazine Amazing 
Stories Quarterly; the text was "extensively edited" for book publication, with 
Campbell''s approval, by Lloyd Arthur Eshbach. A paperback edition was published by
 Ace Books in 1966. In 1973, Islands was included in a Doubleday omnibus of all 
three "Arcot, Wade, and Morey" novels. A German translation appeared in 1967 as 
Kosmische Kreuzfahrt, and an Italian translation was published in 1976 as Isole 
nello spazio.
 Islands of Space is generally credited with introducing the concepts of hyperspace 
and the warp drive to science fiction.
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (136, 'The Outlaw of Torn', 3.98, 1914, 'English', 2,
 3, 'The Outlaw of Torn is a historical novel by Edgar Rice Burroughs, originally 
published as a five-part serial in New Story Magazine from January to May 1914, and
 first published in book form by A. C. McClurg in 1927. It was Burroughs'' second 
novel, his first being the science fiction work A Princess of Mars. His third was 
Tarzan of the Apes.
 The Outlaw of Torn is one of only two historical novels Burroughs wrote. The other,
I Am a Barbarian, set in the Rome of Caligula, was not published until 1967, 
seventeen years after his death.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (138, 'Lone Star Planet', 3.77, 1957, 'English', 48, 
35, 'A Planet for Texans (also published as Lone Star Planet) is a science-fiction 
novel written by Henry Beam Piper and John Joseph McGuire. It was first published 
in the March 1957 issue of Fantastic Universe as Lone Star Planet and first 
published in book form in Ace Double D-299 in 1958. The story originated in a 
suggestion by H. L. Mencken and presents a world on which the assassination of 
politicians is accepted practice. It eventually won a Prometheus Hall of Fame Award
 in 1999.
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (142, 'Search the Sky', 3.45, 1954, 'English', 51, 
53, 'Search the Sky is a satirical science fiction novel written by Frederik Pohl 
and Cyril M. Kornbluth and first published in 1954 by Ballantine Books.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (143, 'The Vortex Blaster', 2.50, 1960, 'English', 
14, 48, 'The Vortex Blaster is a collection of three science fiction short stories 
by author Edward E. Smith, Ph.D.. It was simultaneously published in 1960 by Gnome 
Press in an edition of 3,000 copies and by Fantasy Press in an edition of 341 
copies. The book was originally intended to be published by Fantasy Press, but was 
handed over to Gnome Press when Fantasy Press folded. Lloyd Eshbach, of Fantasy 
Press, who was responsible for the printing of both editions, printed the extra 
copies for his longtime customers. The stories originally appeared in the magazines
 Comet and Astonishing Stories.
 In 1968, Pyramid Books issued a paperback edition under the title Masters of the 
Vortex, promoting it as "the final adventure in the famous Lensman series." While 
the stories are set in the same universe as the Lensman novels, they are only 
tangentially related. They reference events that happen in the Lensman series, but 
only “off stage”. No characters from the other Lensmen books show up in this book. 
From the events spoken of in this book it apparently falls between Second Stage 
Lensmen and Children of the Lens.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (144, 'Subspace Survivors', 3.47, 1960, 'English', 
14, 36, 'Subspace Explorers is a science fiction novel by E. E. "Doc" Smith. It was
 first published in 1965 by Canaveral Press in an edition of 1,460 copies. The novel
 is an expansion of Smith''s story "Subspace Survivors" which first appeared in the 
July 1960 issue of the magazine Astounding.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (145, 'The Answer', 4.17, 1959, 'English', 19, NULL, 
'"The Answer" is a science fiction short story written by H. Beam Piper. It is not 
a part of either Piper’s Terro-Human Future History series nor his Paratime series.
 It made its first appearance in the December 1959 issue of Fantastic Universe 
Science Fiction.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (146, 'Shadows in Zamboula', 3.69, 1935, 'English', 
22, 48, '"Shadows in Zamboula" is one of the original stories by Robert E. Howard 
about Conan the Cimmerian, first published in Weird Tales in November, 1935. Its 
original title was "The Man-Eaters of Zamboula".
 The story takes place over the course of a night in the desert city of Zamboula, 
with political intrigue amidst streets filled with roaming cannibals. It features 
the character Baal-pteor, one of the few humans in the Conan stories to be a 
physical challenge for the main Cimmerian character himself.
 By present-day sensibilities, the story is seriously marred by including a vicious 
racial stereotype - blacks as cannibals - though Howard strove to lessen this by 
making clear that the cannibals in Zamboula are only the specific blacks from 
Darfar, other blacks being untainted.');
INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (147, 'Black Amazon of Mars', 3.62, 1951, 'English', 
52, 35, 'People of the Talisman is a science fiction novel by Leigh Brackett set on
 the planet Mars, whose protagonist is Eric John Stark.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (149, 'Shadows in the Moonlight', 3.56, 1934, 
'English', 22, 48, '"Shadows in the Moonlight" is one of the original short stories
 starring the fictional sword and sorcery hero Conan the Cimmerian, written by 
American author Robert E. Howard and first published in Weird Tales magazine in 
April 1934. Howard originally named his story "Iron Shadows in the Moon". It is set
 in the pseudo-historical Hyborian Age and concerns Conan escaping to a remote 
island in the Vilayet Sea where he encounters the Red Brotherhood, a skulking 
creature, and mysterious iron statues.
 The story was republished in the collections Conan the Barbarian (Gnome Press, 
1954) and Conan the Freebooter (Lancer Books, 1968). It has more recently been 
published in the collections The Conan Chronicles Volume 1: The People of the Black
 Circle (Gollancz, 2000) and Conan of Cimmeria: Volume One (1932-1933) (Del Rey, 
2003).');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (150, 'Captives of the Flame', 3.86, 1963, 'English',
 46, 35, 'Captives of the Flame is a 1963 science fantasy novel by Samuel R. Delany,
 and is the first novel in the "Fall of the Towers" trilogy. The novel was 
originally published as Ace Double F-199 together with The Psionic Menace by Keith 
Woodcott (a pseudonym of John Brunner). It was later rewritten as Out of the Dead 
City and published by Signet Books in 1968.
 The stories of the Fall of the Towers trilogy were originally set in the same post
holocaust Earth as Delany''s earlier The Jewels of Aptor; linking references, 
however, were removed in later revised editions.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (152, 'The Ultimate Weapon', 3.81, 1966, 'English', 
41, NULL, 'The Ultimate Weapon is a 1966 science fiction novel by American writer 
John W. Campbell.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (154, 'The Planet Savers', 3.67, 1958, 'English', 25,
 35, 'The Planet Savers is a science fantasy novel by American writer Marion Zimmer 
Bradley, part of her Darkover series. It was first published in book form in 
English by Ace Books in 1962, dos-ï¿½-dos with Bradley''s novel The Sword of 
Aldones. The story first appeared in the November 1958 issue of the magazine 
Amazing Stories. It subsequently appeared in a German translation in 1960 with 
additional chapters added that were not by the author.
 The Planet Savers takes place at least 152 years after the events described in 
Rediscovery.
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (158, 'Analog Science Fiction and Fact', 3.20, 1931, 
'English', 17, 52, 'Analog Science Fiction and Fact is an American science-fiction 
magazine published under various titles since 1930. Originally titled Astounding 
Stories of Super-Science, the first issue was dated January 1930, published by 
William Clayton, and edited by Harry Bates. Clayton went bankrupt in 1933 and the 
magazine was sold to Street & Smith. The new editor was F. Orlin Tremaine, who soon
 made Astounding the leading magazine in the nascent pulp science fiction field, 
publishing well-regarded stories such as Jack Williamson''s Legion of Space and 
John W. Campbell''s "Twilight". At the end of 1937, Campbell took over editorial 
duties under Tremaine''s supervision, and the following year Tremaine was let go, 
giving Campbell more independence. Over the next few years Campbell published many 
stories that became classics in the field, including Isaac Asimov''s Foundation 
series, A.E. van Vogt''s Slan, and several novels and stories by Robert A. 
Heinlein. The period beginning with Campbell''s editorship is often referred to as 
the Golden Age of Science Fiction.
 By 1950, new competition had appeared from Galaxy Science Fiction and The Magazine 
of Fantasy & Science Fiction. Campbell''s interest in some pseudo-science topics, 
such as dianetics (an early version of scientology), alienated some of his regular 
writers, and Astounding was no longer regarded as the leader of the field, though 
it did continue to publish popular and influential stories: Hal Clement''s novel 
Mission of Gravity appeared in 1953, and Tom Godwin''s "The Cold Equations" 
appeared the following year.
 In 1960, Campbell changed the title of the magazine to Analog Science Fiction & 
Fact; he had long wanted to get rid of the word "Astounding" in the title, which he
 felt was too sensational. At about the same time Street & Smith sold the magazine 
to Condé Nast. Campbell remained as editor until his death in 1971.
 Ben Bova took over from 1972 to 1978, and the character of the magazine changed 
noticeably, since Bova was willing to publish fiction that included sexual content 
and profanity. Bova published stories such as Frederik Pohl''s "The Gold at the 
Starbow''s End", which was nominated for both a Hugo and Nebula Award, and Joe 
Haldeman''s "Hero", the first story in the Hugo and Nebula Award-winning "Forever 
War" sequence; Pohl had been unable to sell to Campbell, and "Hero" had been 
rejected by Campbell as unsuitable for the magazine. Bova won five consecutive Hugo
 Awards for his editing of Analog.
 Bova was followed by Stanley Schmidt, who continued to publish many of the same 
authors who had been contributing for years; the result was some criticism of the 
magazine as stagnant and dull, though Schmidt was initially successful in 
maintaining circulation. The title was sold to Davis Publications in 1980, then to 
Dell Magazines in 1992. Crosstown Publications acquired Dell in 1996 and remains 
the publisher. Schmidt continued to edit the magazine until 2012, when he was 
replaced by Trevor Quachri.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (161, 'Despoilers of the Golden Empire', 3.35, 1959, 
'English', 49, 44, '"Despoilers of the Golden Empire" is a science fiction 
novelette by Randall Garrett, originally published in Astounding Science Fiction in
 March 1959 under the pseudonym David Gordon.
 The story appears to be about an expedition through space to a planet inhabited by 
a civilized but technologically backward people, whom the expedition conquer. 
However, in the last line it is revealed to be anything but that.
 In terms of genre, the story reads like a pulp magazine yarn mixing space travel 
and classic swashbuckling themes, to the point where the characters even fight with
 swords, bringing to mind the adventures of Flash Gordon, or the Barsoom stories of 
Edgar Rice Burroughs.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (170, 'Jewels of Gwahlur', 3.82, 1935, 'English', 22,
 33, 'Jewels of Gwahlur is a 1979 collection of two fantasy short stories written by
 Robert E. Howard featuring his sword and sorcery hero Conan the Barbarian. The book
 was published in 1979 by Donald M. Grant, Publisher, Inc. as volume VIII of their 
deluxe Conan set. The title story originally appeared in the magazine Weird Tales. 
"The Snout in the Dark" is the original fragment of a story that Howard never 
completed. It first appeared, completed by L. Sprague de Camp and Lin Carter, in 
the collection Conan of Cimmeria.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (171, 'Wolfbane', 3.65, 1957, 'English', 51, 45, 
'Wolfbane is a science fiction novel by Frederik Pohl and C. M. Kornbluth, 
published in 1959. It was serialized in Galaxy in 1957, with illustrations by Wally
 Wood. In his review column for F&SF, Damon Knight selected the novel as one of the 
10 best genre books of 1959.
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (174, 'Voodoo Planet', 3.70, 1959, 'English', 28, 35,
 'Voodoo Planet is a science fiction novel by American writer Andre Norton, first 
published in 1959 by Ace Books. This is a short novel that was usually published in
 a double-novel format. It is part of the Solar Queen series of novels.
 The story involves two witch doctors who conjure up ghosts and demons against each 
other. Norton based the wizards’ magic on the use of mildly hallucinogenic drugs, 
psychological manipulation, and latent telepathy, which place the story within the 
realm of science fiction.
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (175, 'The Moon Pool', 3.35, 1918, 'English', 60, 37,
 'The Moon Pool is a fantasy novel by American writer Abraham Merritt. It originally
 appeared as two short stories in All-Story Weekly: "The Moon Pool" (1918) and its 
sequel, "Conquest of the Moon Pool" (1919). These were then reworked into a novel 
released in 1919. The protagonist, Dr. Goodwin, would later appear in Merritt''s 
second novel The Metal Monster (1920).
 Although Merritt did not invent the "lost world" novel—he followed in the footsteps
 of Bulwer-Lytton, Conan Doyle, Edgar Rice Burroughs, and others—this work extended 
the tradition.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (176, 'Storm Over Warlock', 3.87, 1960, 'English', 
28, 34, 'Storm Over Warlock is a science fiction novel written by Andre Norton and 
published in 1960 by the World Publishing Company. The story combines science 
fiction with fantasy, technology with witchcraft, in a way typical of Norton’s 
works. The sequel is Ordeal in Otherwhere.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (177, 'The Sensitive Man', 4.02, 1954, 'English', 30,
 NULL, '"The Sensitive Man" is a science fiction novella by American writer Poul 
Anderson, first published in the January 1954 issue of Fantastic Universe and 
reprinted in the 1981 collection The Psychotechnic League. The story is a component
 of the Psychotechnic League future history, and takes place in the year 2009, 
between "Un-Man" and "The Big Rain".');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (179, 'The Pirates of Ersatz', 3.63, 1959, 'English',
 61, 44, 'The Pirates of Zan is a science fiction novel by Murray Leinster, 
originally serialized in Astounding Science Fiction in 1959 as "The Pirates of 
Ersatz". It was nominated for the 1960 Hugo Award for Best Novel. It first appeared
 in book form in 1959 as one component of an Ace Double, bound with Leinster''s The 
Mutant Weapon; this edition was reissued in 1971. A German translation was issued 
in hardcover in 1962, an Italian translation appeared in 1968, and a Dutch 
translation was published in 1972. Bart Books published a stand-alone American 
paperback edition in 1989. and Baen Books included Pirates in a Leinster omnibus, A
 Logic Named Joe, in 2005.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (182, 'Queen of the Black Coast', 3.95, 1934, 
'English', 22, 33, 'Queen of the Black Coast is a 1978 collection of two fantasy 
short stories written by Robert E. Howard featuring his sword and sorcery hero 
Conan the Barbarian. The book was published in 1978 by Donald M. Grant, Publisher, 
Inc. as volume VII of their deluxe Conan set. The title story originally appeared 
in the magazine Weird Tales. "The Vale of Lost Women" first appeared in The 
Magazine of Horror.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (190, 'The Metal Monster', 3.13, 1920, 'English', 60,
 37, 'The Metal Monster is a Fantasy novel by American writer Abraham Merritt. It 
was first serialized in Argosy All-Story Weekly in 1920 and features the return of 
Dr. Goodwin who first appeared in The Moon Pool.
 The epic adventure starts with a foreword where Merritt is assigned the duty to 
relay Dr. Walter T. Goodwin''s incredible tale of his encounter in the Trans
Himalayan mountains to the world, to let everyone know the terrible fate Goodwin''s
 group barely escaped and the possibility of other such monsters out there.');
INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (197, 'Gladiator', 4.03, 1930, 'English', 65, NULL, 
'Gladiator is an American science fiction novel first published in 1930 and written
 by Philip Wylie. The story concerns a scientist who invents an "alkaline free
radical" serum to "improve" humankind by granting the proportionate strength of an 
ant and the leaping ability of the grasshopper. The scientist injects his pregnant 
wife with the serum and his son Hugo Danner is born with superhuman strength, 
speed, and bulletproof skin. Hugo spends much of the novel hiding his powers, 
rarely getting a chance to openly use them. The novel is widely assumed to have 
been an inspiration for Superman, though no confirmation exists that Superman 
creators Jerry Siegel and Joe Shuster were influenced by it.
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (199, 'A Journey in Other Worlds: A Romance of the 
Future', 3.00, 1894, 'English', 66, NULL, 'A Journey in Other Worlds: A Romance of 
the Future is a science fiction novel by John Jacob Astor IV, published in 1894.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (201, 'The Stolen Bacillus and Other Incidents', 
3.69, 1895, 'English', 1, 38, 'The Stolen Bacillus and Other Incidents is a 
collection of fifteen fantasy and science fiction short stories written by the 
English author H. G. Wells between 1893 and 1895. It was first published by Methuen
 & Co. in 1895 and was Wells''s first book of short stories. All of the stories had 
first been published in various weekly and monthly periodicals.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (202, 'He Walked Around the Horses', 3.74, 1948, 
'English', 19, 44, '"He Walked Around the Horses" is a science fiction short story 
by American writer H. Beam Piper. It is initially based on the true story of 
diplomat Benjamin Bathurst, who mysteriously disappeared in 1809. It was first 
published in the April 1948 issue of Astounding Science Fiction magazine (now 
Analog). The story is told in epistolary style, as a series of reports, statements 
and memoranda by various government, army and police officials, and inn servants, 
stating what they know of the matter.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (204, 'Invaders from the Infinite', 3.25, 1961, 
'English', 41, 48, 'Invaders from the Infinite is a science fiction novel by 
American writer John W. Campbell, Jr.. It was simultaneously published in 1961 by 
Gnome Press in an edition of 4,000 copies and by Fantasy Press in an edition of 100
 copies. The book was originally intended to be published by Fantasy Press, but was 
handed over to Gnome Press when Fantasy Press folded. Lloyd Eshbach, of Fantasy 
Press, who was responsible for the printing of both editions, printed the extra 
copies for his longtime customers. The Fantasy Press edition was issued without a 
dust-jacket. Eshbach eventually did produce a jacket in 1990 at the urging of 
George Zebrowski. The novel is an expansion of stories that originally appeared in 
the magazine Amazing Stories Quarterly.
 E. F. Bleiler described the novel as "the early John W. Campbell story par 
excellence: weak novelistic skills combined with very strong speculative, 
imaginative theoretical physics. While one may be bored with [the] interminable 
lectures and rendered drowsy by the repeated space battles, but one must also 
admire Campbell''s ingenuity in creating novel artifacts".');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (209, 'Starman''s Quest', 3.58, 1958, 'English', 50, 
48, 'Starman''s Quest is a science fiction novel by American writer Robert 
Silverberg. It was published in 1958 by Gnome Press in an edition of 5,000 copies, 
of which only 3,000 were bound. It was reprinted as a second edition in hardcover 
by Meredith Press in 1969.
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (211, 'Plague of Pythons', 3.56, 1965, 'English', 40,
 NULL, 'A Plague of Pythons is a science fiction novel by American writer Frederik 
Pohl. It was originally published in 1965, and an updated version was published in 
1984 under the title Demon in the Skull. The title derives from the words "Domina 
Pythonis" used as part of an exorcism ritual performed in the first chapter to 
scare away the "demons" that seem to possess people in the novel.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (214, 'Last Enemy', 3.74, 1950, 'English', 19, 44, 
'"Last Enemy" is a science fiction short story written by H. Beam Piper, and is a 
part of his Paratime series. The title is a reference to 1 Corinthians 15:26, “The 
last enemy that shall be destroyed is death.” (KJV)
 It made its first appearance in August 1950, in Astounding Science Fiction magazine
 (now Analog).');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (225, 'The Sky Is Falling', 3.54, 1954, 'English', 
73, 39, 'The Sky Is Falling is a short novel by Lester del Rey.
 The first and shortest version was published in Beyond Fantasy Fiction in July 1954
 under the title "No More Stars" with the pseudonym Charles Satterfield. It first 
appeared in book form in 1963 with Badge of Infamy as "Two Complete Novels" in a 
Galaxy paperback original. The first book-length version was published in 1973 by 
Ace Books.
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (246, 'The Forgotten Planet', 3.56, 1954, 'English', 
61, 48, 'The Forgotten Planet is a science fiction novel by American writer Murray 
Leinster. It was released in 1954 by Gnome Press in an edition of 5,000 copies. The
 novel is a fix-up from three short stories, "The Mad Planet" and "The Red Dust", 
both of which had originally appeared in the magazine Argosy in 1920 and 1921, and 
"Nightmare Planet", which had been published in Science Fiction Plus in 1953.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (295, 'Space Tug', 3.22, 1953, 'English', 61, 40, 
'Space Tug is a young adult science fiction novel by author Murray Leinster. It was
 published in 1953 by Shasta Publishers in an edition of 5,000 copies. It is the 
second novel in the author''s Joe Kenmore series. Groff Conklin gave it a mixed 
review in Galaxy, noting that it held "plenty of excitement though not much 
maturity." Boucher and McComas preferred it to the series''s initial volume, but 
still found it "quite a notch below ; ; ; Leinster''s adult work." P. Schuyler 
Miller reported the novel was marked by "the fastest kind of action" and "the 
feeling of technical authenticity."');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (301, 'The Secret of the Ninth Planet', 3.18, 1959, 
'English', 97, 41, 'The Secret of the Ninth Planet is a science-fiction novel 
written by Donald A. Wollheim and first published in the United States in 1959 by 
the John C. Winston Co. Wollheim takes his heroes on a grand tour of the solar 
system as that team struggles to prevent an alien force from blowing up the sun. 
This is the last of three juvenile novels that Wollheim wrote for Winston, the 
other two being The Secret of Saturn''s Rings and The Secret of the Martian Moons.
 This is one of the thirty-five juvenile novels that comprise the Winston Science 
Fiction set, which novels were published in the 1950s for a readership of teen-aged
 boys. The typical protagonist in these books was a boy in his late teens who was 
proficient in the art of electronics, a hobby that was easily available to the 
readers.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (305, 'A Martian Odyssey', 3.81, 1934, 'English', 62,
 42, '"A Martian Odyssey" is a science fiction short story by American writer 
Stanley G. Weinbaum originally published in the July 1934 issue of Wonder Stories. 
It was Weinbaum''s second published story (in 1933 he had sold a romantic novel, 
The Lady Dances, to King Features Syndicate under the pseudonym Marge Stanley), and
remains his best known. It was followed four months later by a sequel, "Valley of 
Dreams". These are the only stories by Weinbaum set on Mars.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (306, 'The Radio Man', 3.97, 1924, 'English', 99, 43,
 'The Radio Man is a science fiction novel by American writer Ralph Milne Farley. It
 is the first book in Farley''s Radio Man series. It was first published in book 
form in 1948 by Fantasy Publishing Company, Inc. in an edition of 1,000 copies. The
 novel was originally serialized in the magazine Argosy.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (313, 'The Wailing Asteroid', 3.50, 1960, 'English', 
61, 31, 'The Wailing Asteroid is a science-fiction novel written by Murray Leinster
 (William Fitzgerald Jenkins) and first published in 1960 by Avon Books. It presents
 the theme of the lone inventor who saves Earth from cosmic danger and introduces 
Humanity to an unknown civilization. The novel was adapted for film as The 
Terrornauts in 1967.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (328, 'Atlantida', 4.40, 1919, 'English', 107, NULL, 
'Atlantida (French: L''Atlantide) is a French novel by Pierre Benoit published in 
February 1919. It was translated into English in 1920 as Atlantida. L''Atlantide 
was Benoit''s second novel, following Koenigsmark, and it won the Grand Prize of 
the French Academy. The English translation of Atlantida was first published in the
 United States as a serial in Adventure magazine.
 The story inspired many films.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (339, 'The Return', 4.51, 1954, 'English', 48, 44, 
'"The Return" is a science fiction short story by American writer H. Beam Piper and
 John J. McGuire. It is not a part of either Piper’s Terro-Human Future History 
series or his Paratime series.
 It made its first appearance in the January 1954 issue of Astounding Science 
Fiction. The story was later edited and expanded for its appearance in the 1960 
book The Science Fictional Sherlock Holmes. The differences between the two 
editions of the story are minor, mostly taking the form of added dialogue.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (340, 'The Moon-Voyage', 3.59, 1877, 'English', 6, 7,
 'Around the Moon (French: Autour de la Lune, 1870), Jules Verne''s sequel to From 
the Earth to the Moon, is a science fiction novel which continues the trip to the 
moon which was only partially described in the previous novel. It was later 
combined with From the Earth to the Moon to create A Trip to the Moon and Around 
It. From the Earth to the Moon and Around the Moon served as the basis for the film
 A Trip to the Moon.
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (345, 'The Keeper', 4.06, 1957, 'English', 19, NULL, 
'"The Keeper" is a science fiction short story by American writer H. Beam Piper. It
 is the last story in Piper’s Terro-Human Future History series, being set in the 
301st Century A.E. (Atomic Era).
 It made its first appearance in the July 1957 issue of Venture Science Fiction.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (361, 'The Marching Morons', 3.63, 1959, 'English', 
51, 45, 'For the Kornbluth short story collection, see The Marching Morons 
(collection)
 "The Marching Morons" is a science fiction story by American writer Cyril M. 
Kornbluth, originally published in Galaxy in April 1951. It was included in The 
Science Fiction Hall of Fame, Volume Two after being voted one of the best novellas
 up to 1965.
 The story is set hundreds of years in the future: the date is 7-B-936. John Barlow,
 a man from the past put into suspended animation by a freak accident involving a 
dental drill and anesthesia, is revived in this future. The world seems mad to 
Barlow until Tinny-Peete explains the Problem of Population: due to a combination 
of intelligent people not having children and excessive breeding by less 
intelligent people (see Fertility and intelligence), the world is full of morons, 
with the exception of an elite few who work slavishly to keep order. Barlow, who 
was a shrewd real estate con man in his day, has a solution to sell to the elite, 
in exchange for being made World Dictator.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (389, 'Coming Attraction', 4.46, 1950, 'English', 32,
 45, '"Coming Attraction" is a science fiction short story by American writer Fritz 
Leiber, originally published in the second issue (November 1950) of Galaxy Science 
Fiction with illustrations by Paul Callï¿½. The story was nominated for a Retro 
Hugo Award in 2001.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (405, 'Edison''s Conquest of Mars', 0.00, 1898, 
'English', 90, 46, 'Edison''s Conquest of Mars is an 1898 science fiction novel by 
American astronomer and writer Garrett P. Serviss. It was written as a sequel to 
Fighters from Mars, an unauthorized and heavily altered version of H. G. Wells''s 
The War of the Worlds. It has a place in the history of science fiction for its 
early employment of themes and motifs that later became staples of the genre.
 The book features Thomas Edison as the primary character, though neither Edison nor
 H. G. Wells were involved in its creation. Set after the devastating Martian attack
 in the previous story, the novel depicts Edison leading a group of scientists to 
develop ships and weapons, including a disintegration ray, for the defence of 
Earth. Edison and company fight the aliens in space and on Mars, eventually causing
 a flood that defeats the enemy and forces an end to hostilities. Serviss wrote 
himself into the story as a professor whom Edison consults; also appearing are 
scientists such as Edward Emerson Barnard, Lord Kelvin, Wilhelm Rï¿½ntgen, and 
Silvanus P. Thompson, and heads of state such as Queen Victoria, U.S. President 
William McKinley, Kaiser Wilhelm II, and Emperor Mutsuhito.
 Serviss'' first attempt at fiction, the book was published serially in the New York
 Journal. Serviss went on to write other science fiction stories, arguably making 
him the first American to write science fiction professionally. An early example of
 what would later be called space opera, Edison''s Conquest of Mars was also a 
particularly literal "Edisonade". The book contains some notable "firsts" in 
science fiction: alien abductions, spacesuits (called "air-tight suits": see 
Spacesuits in fiction), aliens building the Pyramids, space battles, oxygen pills, 
asteroid mining and disintegrator rays.
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (411, 'The World with a Thousand Moons', 3.71, 1942, 
'English', 83, 47, 'The Haunted Stars is a science-fiction novel written by Edmond 
Hamilton. It tells the story of an expedition from Earth (which is in the throes of
 an arms race) to a planet of the star Altair — a planet called Ryn, inhabited by 
humans like those on Earth. Against the wishes of Ryn''s inhabitants, the team from
 Earth seek information about weapons technology used in an ancient space war. Their
 unsuccessful search ends in dramatic contact with another species, the ancient 
enemy of Ryn.
 The novel was first published in 1960 by Torquil Books and belongs to a class of 
novels which add a darker tone to the popular tradition of space opera. It has been
 published in English, German, Italian, and Portuguese.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (424, 'Address: Centauri', 3.50, 1955, 'English', 
138, 48, 'Address: Centauri is a science fiction novel by author F. L. Wallace. It 
was published in 1955 by Gnome Press in an edition of 4,000 copies. The novel is an
 expansion of Wallace''s story "Accidental Flight" which first appeared in the 
magazine Galaxy Science Fiction in 1952.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (428, 'Operation: Outer Space', 3.37, 1954, 
'English', 61, 49, 'Operation: Outer Space is a science fiction novel by American 
writer Murray Leinster. It was first published in 1954 by Fantasy Press in an 
edition of 2,042 copies.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (429, 'The Great Nebraska Sea', 2.00, 1963, 
'English', 143, 45, 'The Great Nebraska Sea is a science fiction short story by 
author Allan Danzig. It was first published in 1963 in the magazine Galaxy Science 
Fiction. The story has been extensively collected for anthologies, most recently in
 1999 for the collection Armageddons, edited by Jack Dann and Gardner Dozois.
 The story was originally written as a spoof history or possibly a future history. 
The narrator is a historian writing in the year 2073 about events taking place in 
1973, 10 years from the story''s actual publication date. From the point of view of
 21st century readers it is sometimes thought of as an alternate history.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (462, 'The Runaway Skyscraper', 3.08, 1919, 
'English', 61, NULL, '"The Runaway Skyscraper" is a science fiction short story by 
American writer Murray Leinster, first appeared in the February 22, 1919 issue of 
Argosy magazine. Although Leinster had been appearing regularly in The Smart Set 
and pulp magazines such as Argosy and Short Stories for three years, "The Runaway 
Skyscraper" was his first published science fiction story (or more accurately, 
scientific romance, since Hugo Gernsback had yet to coin the phrase "science 
fiction"). Gernsback would reprint the story in the third issue of his science 
fiction pulp magazine Amazing Stories in June 1926.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (483, 'Someone Comes to Town, Someone Leaves Town', 
3.51, 2005, 'English', 33, 50, 'Someone Comes to Town, Someone Leaves Town is a 
contemporary fantasy novel by Canadian author Cory Doctorow. It was published in 
June 2005, concurrently released on the Internet under a Creative Commons license, 
free for download in several formats including ASCII and PDF. It is Doctorow''s 
third novel.
 The novel was chosen to launch the Sci Fi Channel''s book club, Sci Fi Essentials 
(now defunct).
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (484, 'Equality', 3.83, 1897, 'English', 21, 51, 
'Equality is a utopian novel by Edward Bellamy, and the sequel to Looking Backward:
 2000–1887. It was first published in 1897. The book contains a minimal amount of 
plot; Bellamy primarily used Equality to expand on the theories he first explored 
in Looking Backward.
 The text is now in the public domain and available for free.
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (489, 'Traders Risk', 3.18, 1958, 'English', 162, 
NULL, 'The Final Key is a science fiction novel in the Saga of the Skolian Empire, 
a series of books by American writer Catherine Asaro. As the direct sequel to 
Schism, it tells the story of a major Eubian assault against the Skolian government
 and Eldrinson''s rise from a rustic farmer to a member of the powerful imperial 
Triad.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (491, 'Old Rambling House', 3.23, 1958, 'English', 
63, 45, '"Old Rambling House" is a short story by American science fiction author 
Frank Herbert which first appeared in Galaxy magazine in 1958 and later in 
Herbert''s 1985 short story collection The Worlds of Frank Herbert. It features a 
dystopian multiverse in which no hope of freedom is left, which is atypical for 
Herbert''s works.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (502, 'Alien Minds', 4.53, 1955, 'English', 38, 49, 
'Alien Minds is a science fiction novel by author E. Everett Evans. It was first 
published in 1955 by Fantasy Press in an edition of 1,417 copies. The book is a 
sequel to Man of Many Minds');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (523, 'Mizora: A Prophecy', 5.00, 1890, 'English', 
173, NULL, 'Mizora is an utopian novel by Mary E. Bradley Lane, first published in 
1880–81, when it was serialized in the Cincinnati Commercial newspaper. It appeared
 in book form in 1890. Mizora is "the first portrait of an all-female, self
sufficient society," and "the first feminist technological Utopia."
 The book''s full title is Mizora: A Prophecy: A Mss. Found Among the Private Papers
 of Princess Vera Zarovitch: Being a True and Faithful Account of her Journey to the
 Interior of the Earth, with a Careful Description of the Country and its 
Inhabitants, their Customs, Manners, and Government.
 Mizora is one element in the wave of utopian and dystopian fiction that 
distinguished the later decades of the nineteenth century.
 The novel is "the second known feminist utopian novel written by a woman," after 
Man''s Rights (1870) by Annie Denton Cridge. The concept of an all-female society 
dates back at least to the Amazons of ancient Greek mythology — though the Amazons 
still needed men for procreation. In Lane''s Mizora, reproduction is by 
parthenogenesis.
 The book depicts an all-female "utopia" existing within the Earth. The Mizorans 
practice eugenics; all of them are blonde "Aryans," who disdain people of darker 
skin. (In modern terms their society is deliberately racist. That term is perhaps 
applicable to the book as well.) In its ancient history, the land was ruled by a 
military general elected president (a version of Ulysses Grant). When the general 
ran for a third term (as Grant was urged to do in 1880), the society of Mizora 
descended into chaos. Eventually a new all-female social order arose in Mizora. The
 last men were "eliminated" — though it is not clear whether they were overtly 
killed or left to die out. It is said that men are more forgotten than hated.
 The novel also refers to political repression in contemporary Russia, and the 
suppression of the Polish revolt of 1863. The first-person narrator, Vera 
Zarovitch, is a young wife and mother, but she has fallen foul of the Czarist 
regime and has been sentenced to exile in Siberia. She escapes northward into the 
Arctic, where her kayak is swept over a vast waterfall to Mizora. She spends 
fifteen years there, learning the ways of the culture; at the end of that time she 
longs to return to her husband and child, and teach her own society what she has 
learned.
 As a utopian novel, the book devotes some time to the futuristic technology such as
 "videophones." The Mizorans can make rain by discharging electricity into the air. 
Though Mizora has no domestic animals, its women eat chemically-prepared artificial
 meat — an innovation that is only under development in the early twenty-first 
century.
 Lane plays with the customs and conventions of her own society, as utopian writers 
normally do. In Mizora, a narrow waist is considered a "disgusting deformity" — 
reversing the preference of Lane''s own time for tightly-corseted women.
 Lane''s book anticipates some of the features of Charlotte Perkins Gilman''s famous
 Herland by three decades. It was closely followed by other feminist utopian works, 
Mrs. George Corbett''s New Amazonia: A Foretaste of the Future (1889), and 
Unveiling a Parallel (1893) by collaborators Alice Ilgenfritz Jones and Ella 
Merchant. Simultaneously, some male utopian writers published works that involve 
feminist issues and questions of gender roles; Charles Bellamy''s An Experiment in 
Marriage (1889) and Linn Boyd Porter''s Speaking of Ellen (1890) are examples.
 Mizora also belongs to the curious class of hollow Earth literature.
 The second edition of Mizora appeared in 1975, and it was re-released in 1999 by 
the University of Nebraska Press. Little is known of the author; Mrs. Lane did not 
want her husband to find out she was writing about the world being better off 
without men.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (535, 'Cat and Mouse', 3.96, 1959, 'English', 176, 
52, '"Cat and Mouse" is a science fiction novelette by Ralph Williams. Originally 
published in the June 1959 issue of Astounding Science Fiction, it was nominated 
for, but did not win, the 1960 Hugo Award for Best Short Fiction.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (547, 'The Saracen: Land of the Infidel', 4.05, 1989,
 'English', 154, 53, 'The Saracen is a two-part novel written by Robert Shea. The 
two separate portions, The Land of the Infidel and The Holy War are a continuous 
tale.
 Basically ignored during its publication - and subsequently out of print, although 
still enjoying strong reviews and a cult following by those who have read it - the 
novel is the portrayal of an English-born man named David, who is captured as a 
very young child and sold into slavery to Baibars, a Mamluk officer. He becomes a 
devout believer in Islam and takes the Arabic form of his name and the surname of a
 convert, Daoud ibn Abdullah. He develops into a gifted warrior and assassin. He is 
sent to the Papal Court in Orvieto in the 13th century as a spy, in order to foil 
an alliance between the Christian West and the Mongolian descendants of Genghis 
Khan to exterminate the Muslim faith and capture the Holy Land.
 Daoud was also trained by the Hashishyya, a heretical Islamic order. One of the 
many spellings of their name, Hashshashin, is where we derive the modern word 
"assassin". Shea spends considerable time discussing their techniques and 
philosophy, and it is a major theme of the book.
 Many of the characters in the novel, such as Thomas Aquinas, Baibars, King Manfred 
of Sicily, Louis IX, and Charles of Anjou are historical figures, woven into the 
fictional canvas Shea invented. Some historians believe that an alliance was 
attempted by the Papal Court (with Louis IX''s backing) with the Mongols against 
the Muslim world, which ultimately failed. Shea has created a fictional scenario to
 explain this failure, and his firmly historical figures (such as Aquinas) are set 
side-by-side with wholly fictional characters and semi-legendary figures such as 
the Italian poet Sordello, who appears in Dante''s Purgatorio and with whom Shea 
has also taken considerable poetic license.
 Other major fictional characters include Sophia, a Byzantine woman who is a member 
of Manfred''s court (and Manfred''s former concubine) who accompanies Daoud on his 
mission, and Simon de Gobingnon, a French knight assigned to protect the Mongol 
ambassadors. He is Daoud''s chief nemesis and the son of the major characters in 
Shea''s All Things Are Lights. While Daoud is unquestionably the hero of the novel,
 those who have read All Things Are Lights and are familiar with Simon''s background
 will find themselves often sympathizing with the young Simon''s attempts to live up
 to his birthright.
 Ostensibly an adventure tale, the novel is also a thinly veiled look into secret 
societies such as the Hashishin and the Templar Knights. These are subjects which 
Shea has tackled in many books, most famously his Illuminatus! Trilogy, co-written 
with Robert Anton Wilson. While many of Shea''s books after Illuminatus!, such as 
Shike and All Things Are Lights, deal with the secret societies he clearly had 
interest in, few of his other books interweave his scholarly investigations of 
these societies into as compelling a story.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (556, 'The Dark Other', 3.63, 1950, 'English', 62, 
49, 'The Dark Other is a horror novel by Stanley G. Weinbaum. It was first 
published in 1950 by Fantasy Publishing Company, Inc. in an edition of 700 copies. 
The manuscript, written in the 1920s, was originally titled The Mad Brain. With 
permission of his widow Forrest J Ackerman edited it, modernising, removing some of
 the "anachronisms" of the 20s.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (572, 'Highways in Hiding', 3.72, 1956, 'English', 
95, 48, 'Highways in Hiding is a science fiction novel by American writer George O.
 Smith. It was published in 1956 by Gnome Press in an edition of 4,000 copies. The 
novel was originally serialized in the magazine Imagination in 1955. An abridged 
version was published by Avon Books in 1957 under the title Space Plague.');
INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (573, 'The Blind Spot', 3.49, 1951, 'English', 190, 
54, 'The Blind Spot is a science fiction novel by American writers Austin Hall and 
Homer Eon Flint. The novel was originally serialized in six parts in the magazine 
Argosy beginning in May 1921. It was first published in book form in 1951 by Prime 
Press in an edition of 1,500 copies, though fewer than 800 were bound and the 
remainder are assumed lost. The sequel, The Spot of Life, was written by Hall 
alone.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (591, 'Oneness', 4.34, 1963, 'English', 136, 55, 'The
 Witches of Karres is a space opera novel by James H. Schmitz. It deals with a young
 space ship captain who finds himself increasingly embroiled in wild adventures 
involving interdimensional alien invaders, space pirates, and magic power. The 
story is unrelated to the "Hub" series of stories by Schmitz.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (595, 'The Rat Race', 3.92, 1950, 'English', 199, 49,
 'The Rat Race is a science fiction novel by Jay Franklin. It was first published in
 book form in 1950 by Fantasy Publishing Company, Inc. in an edition of 1,500 copies
 of which 1,200 were hardcover. The novel originally appeared in the magazine 
Collier''s Weekly in 1947.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (596, 'The Syndic', 3.42, 1953, 'English', 51, 56, 
'The Syndic is a 1953 science fiction novel by Cyril M. Kornbluth.
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (629, 'The Angel of the Revolution: A Tale of the 
Coming Terror', 3.19, 1893, 'English', 119, NULL, 'The Angel of the Revolution: A 
Tale of the Coming Terror (1893) is a science fiction novel by the English writer 
George Griffith. It was his first published novel and remains his most famous work.
 It was first published in Pearson''s Weekly and was prompted by the success of "The
 Great War of 1892" in Black and White magazine, which was itself inspired by The 
Battle of Dorking.
 A lurid mix of Jules Verne''s futuristic air warfare fantasies, the utopian visions
 of News from Nowhere and the future war invasion literature of Chesney and his 
imitators, it told the tale of a group of self-styled ''terrorists'' who conquer 
the world through airship warfare. Led by a crippled, brilliant Russian Jew and his
 daughter, the ''angel'' Natasha, ''The Brotherhood of Freedom'' establish a ''pax 
aeronautica'' over the earth after a young inventor masters the technology of 
flight in 1903. The hero falls in love with Natasha and joins in her war against 
established society in general and the Russian Czar in particular [1].
 It is characterised by what Michael Moorcock called its "controlled imaginative 
flight", essentially socialist message and a strongly romantic air. Griffith''s 
"pro nihilist" stance was examined in a piece entitled "Terrorism in the Late 
Victorian Novel" by Barbara Arnett Melchiori which appeared in the The Modern 
Language Review. A sequel, The Syren of the Skies appeared in Pearson''s Weekly and
 was published in book form as Olga Romanoff in 1894.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (659, 'De la Terre à la Lune', 3.85, 1865, 'French', 
6, 7, 'From the Earth to the Moon (French: De la terre ï¿½ la lune) is an 1865 
novel by Jules Verne. It tells the story of the Baltimore Gun Club, a post-American
 Civil War society of weapons enthusiasts, and their attempts to build an enormous 
Columbiad space gun and launch three people—the Gun Club''s president, his 
Philadelphian armor-making rival, and a French poet—in a projectile with the goal 
of a moon landing.
 The story is also notable in that Verne attempted to do some rough calculations as 
to the requirements for the cannon and, considering the comparative lack of any 
data on the subject at the time, some of his figures are surprisingly close to 
reality. However, his scenario turned out to be impractical for safe manned space 
travel since a much longer muzzle would have been required to reach escape velocity
 while limiting acceleration to survivable limits for the passengers.
 The character of Michel Ardan, the French member of the party in the novel, was 
inspired by the real-life photographer Fï¿½lix Nadar.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (660, 'Rip Foster Rides the Gray Planet', 0.00, 1952,
 'English', 216, 57, 'Rip Foster Rides the Gray Planet is a young adult science 
fiction novel written by Harold L. Goodwin under the pseudonym Blake Savage. The 
novel was originally published by Whitman in hardcover in 1952 and reprinted in the
 United Kingdom later in the same year as Rip Foster Rides the Grey Planet (note the
 spelling of "gray/grey"). There were two subsequent American reprints under 
different titles: another hardcover edition as Assignment in Space with Rip Foster 
in 1958 and a paperback edition as Rip Foster in Ride the Gray Planet, in 1969. 
Under all titles combined, there were approximately 100,000 copies of the novel 
printed. The first edition was illustrated by E. Deane Cate and the 1958 edition by
 Denny McMains. Goodwin is better known for other children''s books he wrote, 
including the Rick Brant Science Adventure Series for Boys. According to Project 
Gutenberg [1], this novel is in the Public Domain in the United States.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (707, 'Of All Possible Worlds', 3.60, 1955, 
'English', 98, NULL, 'Of All Possible Worlds is the first collection of science 
fiction stories by William Tenn. It was published in hardcover by Ballantine Books 
in 1955, with a cover by Richard Powers. Ballantine issued paperback editions in 
1955, 1960, and 1968; a British hardcover appeared in 1956 with a paperback 
following in 1963.
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (715, 'The Saracen: The Holy War', 3.94, 1989, 
'English', 154, 53, '.The Saracen is a two-part novel written by Robert Shea. The 
two separate portions, The Land of the Infidel and The Holy War are a continuous 
tale.
 Basically ignored during its publication - and subsequently out of print, although 
still enjoying strong reviews and a cult following by those who have read it - the 
novel is the portrayal of an English-born man named David, who is captured as a 
very young child and sold into slavery to Baibars, a Mamluk officer. He becomes a 
devout believer in Islam and takes the Arabic form of his name and the surname of a
 convert, Daoud ibn Abdullah. He develops into a gifted warrior and assassin. He is 
sent to the Papal Court in Orvieto in the 13th century as a spy, in order to foil 
an alliance between the Christian West and the Mongolian descendants of Genghis 
Khan to exterminate the Muslim faith and capture the Holy Land.
 Daoud was also trained by the Hashishyya, a heretical Islamic order. One of the 
many spellings of their name, Hashshashin, is where we derive the modern word 
"assassin". Shea spends considerable time discussing their techniques and 
philosophy, and it is a major theme of the book.
 Many of the characters in the novel, such as Thomas Aquinas, Baibars, King Manfred 
of Sicily, Louis IX, and Charles of Anjou are historical figures, woven into the 
fictional canvas Shea invented. Some historians believe that an alliance was 
attempted by the Papal Court (with Louis IX''s backing) with the Mongols against 
the Muslim world, which ultimately failed. Shea has created a fictional scenario to
 explain this failure, and his firmly historical figures (such as Aquinas) are set 
side-by-side with wholly fictional characters and semi-legendary figures such as 
the Italian poet Sordello, who appears in Dante''s Purgatorio and with whom Shea 
has also taken considerable poetic license.
 Other major fictional characters include Sophia, a Byzantine woman who is a member 
of Manfred''s court (and Manfred''s former concubine) who accompanies Daoud on his 
mission, and Simon de Gobingnon, a French knight assigned to protect the Mongol 
ambassadors. He is Daoud''s chief nemesis and the son of the major characters in 
Shea''s All Things Are Lights. While Daoud is unquestionably the hero of the novel,
those who have read All Things Are Lights and are familiar with Simon''s background
 will find themselves often sympathizing with the young Simon''s attempts to live up
 to his birthright.
 Ostensibly an adventure tale, the novel is also a thinly veiled look into secret 
societies such as the Hashishin and the Templar Knights. These are subjects which 
Shea has tackled in many books, most famously his Illuminatus! Trilogy, co-written 
with Robert Anton Wilson. While many of Shea''s books after Illuminatus!, such as 
Shike and All Things Are Lights, deal with the secret societies he clearly had 
interest in, few of his other books interweave his scholarly investigations of 
these societies into as compelling a story.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (725, 'Eastern Standard Tribe', 3.49, 2004, 
'English', 33, 50, 'Eastern Standard Tribe is a 2004 novel by Cory Doctorow. Like 
Doctorow''s first two books, the entire text was released under a Creative Commons 
license on Doctorow''s website, allowing the whole text of the book to be read for 
free and distributed without the publisher''s permission.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (751, 'Man of Many Minds', 3.73, 1953, 'English', 38,
 49, 'Man of Many Minds is a science fiction novel by author E. Everett Evans. It 
was first published in 1953 by Fantasy Press in an edition of 3,558 copies. The 
book includes an introduction by E. E. Smith.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (836, 'A Place so Foreign', 3.71, 2000, 'English', 
33, 58, 'A Place So Foreign and Eight More is a collection of short stories by 
Canadian-British writer Cory Doctorow. Six of these stories were released 
electronically under a Creative Commons license. A paperback edition was issued in 
New York by publisher Four Walls Eight Windows in 2003 with ISBN 1-56858-286-2. The
 collection features an introduction by Bruce Sterling, and includes "0wnz0red", 
which was nominated for the 2003 Nebula Award for Best Novelette.
 ');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (849, 'Soldier Boy', 4.59, 1953, 'English', 243, 
NULL, '"Soldier Boy" (also known as "X Minus One #71: 56-10-17 Soldier Boy") is a 
1953 science fiction short story by American author Michael Shaara, about a soldier
 who, when sent on a routine patrol to a colonized world, saves the planet from an 
alien and its robot attack devices. Despite an ingrained contempt for the military 
that arose as part of conditioning to avoid war, the human colonists gradually 
assist the soldier when strange occurrences suggest they are not alone on the 
planet and may be, like several other colony planets, under threat of extermination
 by outside forces. It was originally published in the July 1953 issue of Galaxy 
Science Fiction. It is also the title of a 1982 collection of Shaara''s short 
stories');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (875, 'The Players', 4.31, 1955, 'English', 224, 48, 
'The Philosophical Corps is science fiction novel by author Everett B. Cole. It was
 published in 1962 by Gnome Press in an edition of 4,000 copies. The novel is a fix
up of stories that originally appeared in the magazine Astounding.');
 INSERT INTO public.books (id, title, avg_rating, year, language, author_id, 
publisher_id, summary) VALUES (896, 'The Fantasy Fan September 1933', 4.67, 1933, 
'English', 17, 59, 'The Fantasy Fan was the first fan magazine in the weird fiction
 field and therefore holds an important place in the history of the American fantasy
 and horror fiction pulp magazine. Issued monthly, it was first published in 
September 1933, and discontinued 18 issues later in February 1935. The magazine was
 edited by Charles D. Hornig (25 May 1916 - 11 October 1999).');---- TOC entry 4846 (class 0 OID 19614)
-- Dependencies: 215-- Data for Name: publishers; Type: TABLE DATA; Schema: public; Owner: --
INSERT INTO public.publishers (id, name, year, country) VALUES (1, 'Simon & 
Schuster', 1924, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (2, 'Harper', 1817, 
'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (3, 'A. C. McClurg',
 1844, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (4, 'John Raymond', 
1952, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (5, 'Wildside 
Press', 1989, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (6, 'Cassell ', 
1848, 'UK');
 INSERT INTO public.publishers (id, name, year, country) VALUES (7, 'Pierre-Jules 
Hetzel', 1837, 'France');
 INSERT INTO public.publishers (id, name, year, country) VALUES (8, 'Hodder & 
Stoughton', 1868, 'UK');
 INSERT INTO public.publishers (id, name, year, country) VALUES (9, 'William 
Heinemann', 1890, 'UK');
 INSERT INTO public.publishers (id, name, year, country) VALUES (10, 'Arkham House',
 1939, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (11, 'King-Size 
Publications', 1953, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (12, 'Rural 
Publishing Corporation', 1922, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (13, 'Seeley & Co.',
 1744, 'UK');
 INSERT INTO public.publishers (id, name, year, country) VALUES (14, 'Chapman & 
Hall', 1834, 'UK');
 INSERT INTO public.publishers (id, name, year, country) VALUES (15, 'Eveleigh Nash 
Company Limited', 1902, 'UK');
 INSERT INTO public.publishers (id, name, year, country) VALUES (16, 'A.C. McClurg &
 Co.', 1844, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (17, 'Knopf 
Publishing Group', 1915, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (18, 'Fiction 
House', 1921, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (19, 'Clark 
Publishing Company', 1949, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (20, 'Macmillan', 
1843, 'UK');
 INSERT INTO public.publishers (id, name, year, country) VALUES (21, 'Forum 
Publishing Company', 1885, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (22, 'Ziff Davis', 
1927, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (23, 'Doubleday 
Publishing', 1897, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (24, 'Thomas Nelson 
and Sons', 1798, 'Scotland');
 INSERT INTO public.publishers (id, name, year, country) VALUES (25, 'Experimenter 
Publishing', 1915, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (26, 'Ticknor and 
Fields', 1832, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (27, 'The bufflo 
Book C0', 1945, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (28, 'Bantam Books',
1945, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (29, 'Methuen 
Publishing', 1889, 'UK');
 INSERT INTO public.publishers (id, name, year, country) VALUES (30, 'Stanley Paul',
 1906, 'UK');
 INSERT INTO public.publishers (id, name, year, country) VALUES (31, 'Avon Books', 
1941, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (32, 'McCall 
Corporation', 1913, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (33, 'Donald M. 
Grant, Publisher', 1964, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (34, 'World 
Publishing Company', 1902, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (35, 'Ace Books', 
1952, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (36, 'Canaveral 
Press', 1962, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (37, 'All-Story 
Weekly', 1914, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (38, 'Methuen & Co. 
', 1889, 'UK');
 INSERT INTO public.publishers (id, name, year, country) VALUES (39, 'Beyond Fantasy
 Fiction', 1953, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (40, 'Shasta 
Publishers', 1947, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (41, 'Winston 
Science Fiction', 1952, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (42, 'Wonder 
Stories', 1929, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (43, 'Fantasy 
Publishing Company, Inc', 1946, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (44, 'Astounding 
Science Fiction', 1930, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (45, 'Galaxy Science
 Fiction', 1950, 'France');
 INSERT INTO public.publishers (id, name, year, country) VALUES (46, 'Carcosa 
House', 1973, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (47, 'Dodd, Mead & 
Co', 1960, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (48, 'Gnome Press', 
1948, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (49, 'Fantasy 
Press', 1946, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (50, 'Tor Books', 
1980, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (51, 'D. Appleton & 
Company', 1825, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (52, 'Street & 
Smith', 1855, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (53, 'Ballantine 
Books', 1952, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (54, 'Prime Press', 
1947, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (55, 'Chilton 
Books', 1904, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (56, 'Doubleday', 
1897, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (57, 'Whitman 
Publishing', 1915, 'USA');
INSERT INTO public.publishers (id, name, year, country) VALUES (58, 'Four Walls 
Eight Windows', 1987, 'USA');
 INSERT INTO public.publishers (id, name, year, country) VALUES (59, 'Charles 
Hornig', 1933, 'USA');---- TOC entry 4698 (class 2606 OID 19625)-- Name: authors auth_pk; Type: CONSTRAINT; Schema: public; Owner: --
ALTER TABLE ONLY public.authors
    ADD CONSTRAINT auth_pk PRIMARY KEY (id);---- TOC entry 4700 (class 2606 OID 19635)-- Name: books book_pk; Type: CONSTRAINT; Schema: public; Owner: --
ALTER TABLE ONLY public.books
    ADD CONSTRAINT book_pk PRIMARY KEY (id);---- TOC entry 4696 (class 2606 OID 19618)-- Name: publishers pub_pk; Type: CONSTRAINT; Schema: public; Owner: --
ALTER TABLE ONLY public.publishers
    ADD CONSTRAINT pub_pk PRIMARY KEY (id);---- TOC entry 4701 (class 2606 OID 19636)-- Name: books books_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: --
ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_author_id_fkey FOREIGN KEY (author_id) REFERENCES 
public.authors(id) ON DELETE CASCADE;---- TOC entry 4702 (class 2606 OID 19641)-- Name: books books_publisher_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner:--
ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_publisher_id_fkey FOREIGN KEY (publisher_id) REFERENCES 
public.publishers(id) ON DELETE CASCADE;-- Completed on 2023-12-08 20:00:35---- PostgreSQL database dump complete-