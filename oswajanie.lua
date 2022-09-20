oswajanie = {
    alias = {},
    trigger = {},
    core = {},
    config = {},
    feeding_date = 0,
    timer = nil,
    level_min = "plochliwe",
    level_max = "calkowicie oddane",
    cl_ok = "<reset>",
    cl_maybe = "<yellow>",
    cl_soon = "<DarkGreen>",
    cl_not = "<red>",
}

oswajanie.config.recovery_time = 20 -- in min
oswajanie.config.feeding_time = 120 -- in hours

local warzywa = {
    ["burak"] = {narzednik = "burakiem", r = "burak(|i|ow)"},
    ["cebula"] = {narzednik = "cebula", r = "cebul(a|e|)"},
    ["dynia"] = {narzednik = "dynia", r = "dyn(ia|ie|)"},
    ["glowka kapusty"] = {narzednik = "glowka", r = "kapust(a|y|)"},
    ["kalafior"] = {narzednik = "kalafiorem", r = "kalafior(|y|ow)"},
    ["kalarepa"] = {narzednik = "kalarepa", r = "kalarep(a|y|)"},
    ["marchew"] = {narzednik = "marchwia", r = "march(ew|wie|)"},
    ["ogorek"] = {narzednik = "ogorkiem", r = "ogor(ek|ki|kow)"},
    ["pietruszka"] = {narzednik = "pietruszka", r = "pietrusz(ka|ki|ek)"},
    ["pomidor"] = {narzednik = "pomidorem", r = "pomidor(|y|ow)"},
    ["salata"] = {narzednik = "salata", r = "salat(a|y|)"},
    ["ziemniak"] = {narzednik = "ziemniakiem", r = "ziemniak(|i|ow)"},
}

local szczatki = {
    ["gruczol"] = {narzednik = "gruczolem"},
    ["grzebien"] = {narzednik = "grzebieniem"},
    ["jajko"] = {narzednik = "jajkiem"},
    ["jajo"] = {narzednik = "jajem"},
    ["jezor"] = {narzednik = "jezorem"},
    ["jezyk"] = {narzednik = "jezykiem"},
    ["kiel"] = {narzednik = "klem"},
    ["macka"] = {narzednik = "macka"},
    ["nerka"] = {narzednik = "nerka"},
    ["noga"] = {narzednik = "noga"},
    ["nos"] = {narzednik = "nosem"},
    ["odnoze"] = {narzednik = "odnozem"},
    ["oko"] = {narzednik = "okiem"},
    ["paznokiec"] = {narzednik = "paznokciem"},
    ["pazur"] = {narzednik = "pazurem"},
    ["pecherz"] = {narzednik = "pecherzem"},
    ["zuchwa"] = {narzednik = "zuchwa"},
    ["serce"] = {narzednik = "sercem"},
    ["skalp"] = {narzednik = "skalpem"},
    ["skrzydlo"] = {narzednik = "skrzydlem"},
    ["szczekonoze"] = {narzednik = "szczekonozem"},
    ["szpon"] = {narzednik = "szponem"},
    ["ucho"] = {narzednik = "uchem"},
    ["watroba"] = {narzednik = "watroba"},
    ["wij"] = {narzednik = "wijem"},
    ["woreczek"] = {narzednik = "woreczkiem"},
}

local owoce = {
    ["agrest"] = {narzednik = "agrestem", r = "agrest(|y|ow)"},
    ["cytryna"] = {narzednik = "cytryna", r = "(?(?=zoltych)zoltych cytryn|cytryn(e|y|))"},
    ["czeresnia"] = {narzednik = "czeresnia", r = "czeresni(|e)"},
    ["daktyl"] = {narzednik = "daktylem", r = "daktyl(|e|i)"},
    ["figa"] = {narzednik = "figa", r = "fig(e|i|)"},
    ["gruszka"] = {narzednik = "gruszka", r = "grusz(ke|ki|ek)"},
    ["jablko"] = {narzednik = "jablkiem", r = "jabl(ko|ka|ek)"},
    ["jagoda"] = {narzednik = "jagoda", r = "jagod(|a)"}, --fioletowych jagod
    ["jezyna"] = {narzednik = "jezyna", r = "jezyn"},
    ["kisc"] = {narzednik = "kiscia", removed = true},
    ["malina"] = {narzednik = "malina", r = "malin(|y)"},
    ["mandarynka"] = {narzednik = "mandarynka", r = "mandaryn(ek|ke|ki)"},
    ["mango"] = {narzednik = "mango", r = "mango"},
    ["morela"] = {narzednik = "morela", r = "morel(e|i)"},
    ["melon"] = {narzednik = "melonem", r = "melon(|y)"},
    ["oliwka"] = {narzednik = "oliwka", r = "oliw(ek|ke|ki)"},
    ["orzech"] = {narzednik = "orzechem", r = "(orzech(|y|ow)|(orzech\w+? laskowy\w+?))"},
    ["owoc"] = {narzednik = "owocem"},
    ["papaja"] = {narzednik = "papaja", r = "papa(i|je)"},
    ["pomarancz"] = {narzednik = "pomarancza", r = "pomarancz(e|y)"},
    ["sliwka"] = {narzednik = "sliwka", r = "sliw(ke|ek|ki)"},
    ["truskawka"] = {narzednik = "truskawka", r = "truskaw(ek|ke|ki)"},
    ["winogrono"] = {narzednik = "winogronami", r = "winogron"},
    ["wisnia"] = {narzednik = "wisnia", r = "wisni(|e)"},
}
local inne = {
    ["bulka"] = {narzednik = "bulka"},
    ["chleb"] = {narzednik = "chlebem"},
}
local przymiotniki = {
    ["barwna"]              = {"barwne","barwnych"},
    ["blekitnawa"]          = {"blekitnawe","blekitnawa"},
    ["blekitnawozielona"]   = {"blekitnawozielone","blekitnawozielona"},
    ["brazowa"]             = {"brazowe","brazowa", "brazowych"},
    ["brazowawa"]           = {"brazowawe","brazowawych", "brazowawych"},
    ["brazowoczerwona"]     = {"brazowoczerwone","brazowoczerwona"},
    ["brazowoszara"]        = {"brazowoszare","brazowoszara"},
    ["brazowozielona"]      = {"brazowozielone","brazowozielona"},
    ["ciemnobrazowa"]       = {"ciemnobrazowe","ciemnobrazowa"},
    ["ciemnoczerwona"]      = {"ciemnoczerwone","ciemnoczerwona", "ciemnoczerwonych"},
    ["ciemnoniebieska"]     = {"ciemnoniebieskie","ciemnoniebieska"},
    ["ciemnoszara"]         = {"ciemnoszare","ciemnoszara"},
    ["ciemnozielona"]       = {"ciemnozielone","ciemnozielona"},
    ["czarna"]              = {"czarne","czarna"},
    ["czarnoniebieska"]     = {"czarnoniebieskie","czarnoniebieska"},
    ["czerwonawa"]          = {"czerwonawe","czerwonawa"},
    ["czerwonobrazowa"]     = {"czerwonobrazowe","czerwonobrazowa"},
    ["czerwonozlota"]       = {"czerwonozlote","czerwonozlota"},
    ["fioletowoniebieska"]  = {"fioletowoniebieskie","fioletowoniebieska"},
    ["jasnomiedziana"]      = {"jasnomiedziane","jasnomiedziana"},
    ["jasnopomaranczowa"]   = {"jasnopomaranczowe","jasnopomaranczowa", "jasnopomaranczowych"},
    ["jasnoszara"]          = {"jasnoszare","jasnoszara"},
    ["marmurkowana"]        = {"marmurkowane","marmurkowana"},
    ["metaliczna"]          = {"metaliczne","metaliczna"},
    ["mosieznozlota"]       = {"mosieznozlote","mosieznozlota"},
    ["nakrapiana"]          = {"nakrapiane","nakrapiana"},
    ["niebieskawa"]         = {"niebieskawe","niebieskawa"},
    ["niebieskawobrazowa"]  = {"niebieskawobrazowe","niebieskawobrazowa"},
    ["niebieskosrebrzysta"] = {"niebieskosrebrzyste","niebieskosrebrzysta"},
    ["niebieskoszara"]      = {"niebieskoszare","niebieskoszara"},
    ["niebieskozielona"]    = {"niebieskozielone","niebieskozielona"},
    ["okraglawa"]           = {"okraglawe","okraglawa"},
    ["oliwkowosrebrzysta"]  = {"oliwkowosrebrzyste","oliwkowosrebrzysta"},
    ["oliwkowozielona"]     = {"oliwkowozielone","oliwkowozielona"},
    ["olowianoszara"]       = {"olowianoszare","olowianoszara"},
    ["pasiasta"]            = {"pasiaste","pasiasta"},
    ["plamiasta"]           = {"plamiaste","plamiasta"},
    ["plaska"]              = {"plaskie","plaska"},
    ["prazkowana"]          = {"prazkowane","prazkowana"},
    ["pregowana"]           = {"pregowane","pregowana"},
    ["purpurowa"]           = {"purpurowe","purpurowa"},
    ["rozowawa"]            = {"rozowawe","rozowawa"},
    ["srebrnobrunatna"]     = {"srebrnobrunatne","srebrnobrunatna"},
    ["srebrnoluska"]        = {"srebrnoluskie","srebrnoluska"},
    ["srebrzysta"]          = {"srebrzyste","srebrzysta"},
    ["srebrzystobiala"]     = {"srebrzystobiale","srebrzystobiala"},
    ["srebrzystoszara"]     = {"srebrzystoszare","srebrzystoszara"},
    ["srebrzystozielona"]   = {"srebrzystozielone","srebrzystozielona"},
    ["stalowoblekitna"]     = {"stalowoblekitne","stalowoblekitna", "stalowoblekitnych"},
    ["stalowoszara"]        = {"stalowoszare","stalowoszara"},
    ["szara"]               = {"szare","szara"},
    ["szarobrazowa"]        = {"szarobrazowe","szarobrazowa"},
    ["szarosrebrzysta"]     = {"szarosrebrzyste","szarosrebrzysta"},
    ["szarozielona"]        = {"szarozielone","szarozielona"},
    ["wasata"]              = {"wasate","wasata"},
    ["wezowata"]            = {"wezowate","wezowata"},
    ["wylupiastooka"]       = {"wylupiastookie","wylupiastooka"},
    ["wzorzysta"]           = {"wzorzyste","wzorzysta"},
    ["zielonkawa"]          = {"zielonkawe","zielonkawa"},
    ["zielonkawobrazowa"]   = {"zielonkawobrazowe","zielonkawobrazowa", "zielonkawobrazowych"},
    ["zielonkawoszara"]     = {"zielonkawoszare","zielonkawoszara"},
    ["zielonobrunatna"]     = {"zielonobrunatne","zielonobrunatna"},
    ["zielononiebieska"]    = {"zielononiebieskie","zielononiebieska"},
    ["zlocistobrazowa"]     = {"zlocistobrazowe","zlocistobrazowa"},
    ["zoltawa"]             = {"zoltawe","zoltawa"},
    ["zoltobrazowa"]        = {"zoltobrazowe","zoltobrazowa", "zoltobrazowych"},
    ["nieznany"] = {"nieznane","nieznana"}
}

local ryby = {
    ["amarel"]      = {narzednik = "amarelem",      short = "zlocistobrazowa", opis = "Ryba ma owalne, bocznie sciesnione cialo, pokryte grzebykowatymi luskami. Jej grzbiet ma barwe zlocistobrazowa, brzuch mieni sie srebrzyscie. Na bokach ma kilkanascie zlocistych, podluznych pasow, zas na glowie i nasadzie ogona widnieja dwie czarne plamy."},
    ["amur"]        = {narzednik = "amurem",        short = "ciemnozielona", opis = "Ryba ta ma wydluzone, wrzecionowate, bardzo slabo bocznie splaszczone cialo o dosc duzej glowie z tepym pyskiem i poldolnym otworem gebowym. Jej cialo pokrywaja duze luski o ciemnych krawedziach, tworzace siatkowaty rysunek. Na grzbiecie ciemnozielone, po bokach sa jasniejsze, zielonkawe, przechodza w bialawy brzuch. Jej zeby gardlowe sa dwuszeregowe o skosnie scietych, gleboko bruzdowanych krawedziach."},
    ["antias"]      = {narzednik = "antiasem",      short = "czerwonawa", opis = "Cialo ryby jest podluznie owalne, bocznie silnie sciesnione i pokryte duzymi luskami. Jej pletwa ogonowa jest duza, gleboko widlasto wcieta, a jej dolny plat jest wiekszy od gornego. Grzbiet i boki maja ladny, czerwony kolor, podbrzusze natomiast delikatny, rozowawy odcien."},
    ["apogon"]      = {narzednik = "apogonem",      short = "jasnopomaranczowa", opis= "Ryba ta posiada krepe, wygrzbiecone cialo z duza, masywna glowa i ogromnymi oczami. Ubarwiona jest na jasnopomaranczowy kolor, przechodzacy miejscami w krwista czerwien, a na tulowiu znajduje sie kilka niewielkich, czarnych punktow."},
    ["ateryna"]     = {narzednik = "ateryna",       short = "zielonkawa", opis = "Ryba ma smukle, wyciagniete cialo z dwiema krotkimi pletwami grzbietowymi. Pokryta jest sredniej wielkosci luskami, na grzbiecie barwy zielonkawej a na brzuchu srebrzyscie lsniacej."},
    ["barrakuda"]   = {narzednik = "barrakuda",     short = "zielonkawobrazowa", opis= "Ryba ta ma wyciagniete, pokryte drobnymi luskami cialo o bardzo dlugiej, spiczasto zakonczonej glowie. Jej grzbiet jest zielonkawy, popadajacy miejscami w braz, podbrzusze zas srebrzyscie lsniace. Otwor gebowy jest szeroki i poziomo usytuowany, siegajacy do przedniej krawedzi duzego oka. Na szczekach i kosciach podniebienia widnieja silne, ostre zeby."},
    ["barwena"]     = {narzednik = "barwena",       short = "brazowoczerwona", opis = "Cialo ryby jest wydluzone, bocznie sciesniowne i pokryte duzymi, ciemno obwiedzionymi luskami. Ubarwiona jest na brazowoczerwony kolor, zas wzdluz boku ciagnie sie jedna dluga, ciemnoczerwona prega oraz kilka zoltych, krotszych. Profil glowy jest wypukly, niezbyt stromo opadajacy a oczy duze, osadzone blisko gornej krawedzi glowy. Z podbrodka zwisaja dwa dlugie, widlasto wyciagniete wasiki."},
    ["belona"]      = {narzednik = "belona",        short = "ciemnoniebieska", opis = "Ryba ma silnie wyciagniete, waskie cialo z dlugimi, cienkimi szczekami. Jej grzbiet ma ciemnoniebieska barwe, boki sa srebrzyscie lsniace a strona brzuszna bialawa z zoltym polyskiem."},
    ["beryks"]      = {narzednik = "beryksem",      short = "ciemnoczerwona", opis = "Ryba ta ma wysokie, podluznie owalne cialo oraz duze oczy. Jej pletwa grzbietowa jest ciemnoczerwona, boki rozjasniajace sie, zoltawo polyskujace, zas strona brzuszna rozowa."},
    ["bielmik"]     = {narzednik = "bielmikiem",    short = "jasnomiedziana", opis = "Cialo tej ryby jest krepe i szerokie, ma jasnomiedziany kolor z piecioma szerokimi, pionowo biegnacymi, ciemnymi pasami. Szczeka gorna jest dluzsza od szczeki dolnej, a na podbrodku znajduje sie jeden duzy was, ktorego dlugosc rowna jest srednicy oka."},
    ["bolen"]       = {narzednik = "bolenem",       short = "blekitnawa", opis = "Ryba posiada wydluzone, nieco bocznie splaszczone cialo o spiczastej glowie i malych oczkach. Otwor gebowy jest szeroki, zuchwa nieco dluzsza z trojkatna wypukloscia, ktora przy zamknieciu pyska wchodzi w zaglebienie szczeki gornej. Jej pokryty malymi, kolistymi luskami grzbiet ma  oliwkowozielona, blekitnie lsniaca barwe, boki sa nieco jasniejsze z zoltawym polyskiem, brzuch srebrzystobialy zas pletwy maja ladna, czerwona barwe."},
    ["brama"]       = {narzednik = "brama",         short = "zielonkawobrazowa", opis = " Jej grzbiet jest zielonkawobrazowy, boki i strona brzuszna srebrzyscie lsniace. Pletwy piersiowe i teczowka oka sa zlociste."},
    ["bulawik"]     = {narzednik = "bulawikiem",    short = "czarna", opis = "Ryba ta ma niezbyt zgrabna sylwetke. Jej glowa jest duza i krotka, zakonczona okraglym pyskiem. Z przodu niezgrabne, ciezkie cialo ku tylowi staje sie dlugie i cienkie. Ubarwiona jest na czarno, jedynie boki sa matowosrebrzyste."},
    ["certa"]       = {narzednik = "certa",         short = "srebrzysta", opis = "Cialo tej ryby jest wydluzone, bocznie splaszczone i zwienczone nosowato wyciagnietym, miesistym pyskiem z dolnym, podkowiasto wygietym otworem gebowym. Pokryta jest niewielkimi luskami, na grzbiecie ciemnymi, na bokach srebrzystymi i bialawymi na brzuchu."},
    ["chelon"]      = {narzednik = "chelonem",      short = "zielonkawoszara", opis = "Ryba ma wydluzone cialo z dwiema krotkimi pletwami grzbietowymi i silnie splaszczona glowa. Jej grzbiet jest ciemnozielonkawoszary, boki jasniejsze, z osmioma waskimi i ciemnymi, podluznymi paskami, zas brzuch srebrzysty."},
    ["chromis"]     = {narzednik = "chromisem",     short = "brazowa", opis = "Ryba ta ma owalne, bocznie splaszczone cialo, pokryte brazowymi, ciemno obramowanymi luskami."},
--[[]]["czarniak"]  = {narzednik = "czarniakem",    short = "mosieznozlota", opis = "Cialo ryby jest oplywowe i wyciagniete. Jej grzbiet jest brazowoczarny, boki mosieznozlote a brzuch bialosrebrzysty."},
    ["dorada"]      = {narzednik = "dorada",        short = "metaliczna", opis = "Cialo ryby jest owalne z malym, nisko osadzonym otworem gebowym, zakonczonym grubymi wargami. Jej grzbiet jest metaliczny, boki srebrzyste a brzuch bialawy."},
    ["dorsz"]       = {narzednik = "dorszem",       short = "jasnoszara", opis = "Jest to ryba o wydluzonym, oplywowym ciale i dlugiej, a jednoczesnie krepej glowie. Srednica oka jest mniejsza od dlugosci pyska, a szczeka gorna jest wysunieta do przodu. Na podbrodku ma duzy wasik, a linia boczna az do polowy drugiej pletwy grzbietowej jest lukowato wygieta, zas dalej ma prosty przebieg. Trzy pletwy grzbietowe o zaokraglonych krawedziach sa usytulowane bezposrednio jedna za druga. Tylna krawedz pletwy ogonowej jest prosta i posiada jasnoszare ubarwienie  z plamistym deseniem. Brzuch ryby jest brudnobialy, a linia boczna jasna i wyraznie zaznaczona. To niewatpliwie piekny okaz dorsza, ryby dorastajacej nawet do dwoch metrow, znanej z tego, ze mlode osobniki maja na ciele wzor szachownicy."},
    ["drum"]        = {narzednik = "drumem",        short = "pasiasta", opis = "Ryba ta ma wydluzone, bocznie splaszczone cialo, konczace sie zaokraglonym pyskiem. Jej grzbiet i boki sa jasnosrebrzyste ze zlocistymi, fioletowobrazowo oblamowanymi, skosnymi paskami. Strona brzuszna jest srebrzyscie lsniaca."},
    ["dubiel"]      = {narzednik = "dubielem",      short = "srebrzystoszara", opis = "Ryba ta ma owalne, bocznie sciesnione cialo o silnie wysklepionym gornym profilu glowy i spiczastym, dlugim pysku. Ubarwiona jest szarosrebrzyscie z dziesiecioma waskimi, ciemnymi, poprzecznymi pregami. Na trzonie ogonowym widnieje duza, czarna plama."},
    ["glowacica"]   = {narzednik = "glowacica",     short = "zielonkawoszara", opis = "Cialo tej ryby ma ksztalt wrzeciona i jest mocno wydluzone, z grzbietobrzusznie splaszczona glowa i gleboko wcietym otworem gebowym. Pokryte w calosci malymi luskami, na grzbiecie przybiera zielonkawoszara barwe. Boki sa jasniejsze, z nielicznymi i nieregularnie rozmieszczonymi, ciemniejszymi plamami, brzuch zas bialawy."},
    ["glowacz"]     = {narzednik = "glowaczem",     short = "szara", opis = "Ryba ta ma kijankowate, pozbawione lusek cialo o szerokiej i plaskiej glowie. Oczy umieszczone sa wysoko zas pokrywe skrzelowa zdobi zakrzywiony, silny kolec. Jej grzbiet i boki sa szarego koloru, zas przesuniete na gardlo pletwy brzuszne jasne, niepregowane. Linia boczna biegnie srodkiem boku ryby i siega nasady pletwy ogonowej, znajduje sie na niej okolo trzydziestu malych plytek kostnych. Pletwy piersiowe sa szerokie, ich dolne promienie dlugie, wystajace z blony pletwowej. Ten gatunek ryby zwany jest glowaczem, wystepuje w zimnych i czystych, dobrze natlenionych wodach srodladowych o piaszczystym i zwirowatym dnie. Nie nalezy on do ryb wielkich, osiagajac dlugosc zaledwie do dwudziestu centymetrow."},
    ["granik"]      = {narzednik = "granikiem",     short = {"plamiasta", "zielonkawobrazowa"}, opis = "Ryba ma podluzne, owalne, bocznie sciesnione cialo pokryte drobnymi, grzebykowatymi luskami. Jej grzbiet jest zielonkawobrazowy, boki jasniejsze zas brzuch zoltawy. Na glowie promieniscie od oczu rozchodza sie zoltozielone wzory i smugi przechodzace na bokach w opaski."},
    ["gromadnik"]   = {narzednik = "gromadnikiem",  short = "czarnoniebieska", opis = "Ryba ta ma wydluzone i smukle, bocznie splaszczone cialo o delikatnych, latwo odpadajacych luskach. Jej grzbiet jest czarnoniebieski, boki jasne, niebiesko lsniace. Strona brzuszna zoltawobiala."},
--[[]]["iglik"]     = {narzednik = "iglikem",       short = "brazowawa", opis = "Ryba ma bardzo mocno wyciagniete, smukle cialo z kilkunastoma kostnymi pierscieniami pomiedzy glowa a pletwa grzbietowa. Ubarwiona jest na lsniacy, brazowawy kolor."},
    ["jaskron"]     = {narzednik = "jaskronem",     short = "czerwonobrazowa", opis = "Ryba ma podluzne, owalne cialo o malej glowie i krotkim pysku. Jej grzbiet jest czerwonobrazowy, boki zoltobrazowe zas strona brzuszna srebrzyscie lsniaca."},
    ["jazgarz"]     = {narzednik = "jazgarzem",     short = "oliwkowozielona", },
    ["jelec"]       = {narzednik = "jelcem",        short = "stalowoszara", opis = "Cialo tej ryby jest wydluzone, niemal okragle w przekroju, o nieduzej glowie z waskim, przesunietym nieco w dolne polozenie otworem gebowym. Pokrywaja ja duze luski, stalowoszare z olowianym polyskiem na grzbiecie, zoltawosrebrzyste na bokach i bialawe na brzuchu."},
    ["jesiotr"]     = {narzednik = "jesiotrem",     short = "brazowoszara", },
    ["kabryl"]      = {narzednik = "kabrylem",      short = "purpurowa", opis = "Ryba ma dlugie, bocznie splaszczone i dosc masywne cialo. Jej ubarwienie jest szare, o tonacji purpurowej z siedmioma ciemnymi opaskami. Przez glowe az do pletwy ogonowej biegna trzy dlugie niebieskawe paski, obok znajduja sie takze nieco wezsze, zolte."},
    ["kantar"]      = {narzednik = "kantarem",      short = "okraglawa", opis = "Ryba ma wygrzbiecone, bocznie splaszczone cialo. Ubarwiona jest na ciemnoniebieski, wpadajacy prawie w czern kolor, a na jej bokach widnieje po siedem jasniejszych opasek."},
    ["kaprosz"]     = {narzednik = "kaproszem",     short = "czerwonobrazowa", opis= "Cialo ryby jest wysokie, bocznie splaszczone i pokryte malymi luskami. Ubarwiona jest na brazowoczerwony kolor, a jej boki naznaczone sa kilkoma zoltymi, poprzecznymi . moze pregami."},
    ["karas"]       = {narzednik = "karasiem",      short = "brazowawa", opis = "Ryba ta ma cialo wygrzbiecone, krepe i bocznie sciesnione. Jej pletwa grzbietowa jest wysoka, o zaokraglonej gornej krawedzi zas na ogonie wystepuje ciemna plama. Luski ma duze, na grzbiecie brazowe z zielonym polyskiem, po bokach jasniejsze - zoltawobrazowe a na brzuchu brudnobiale. Pierwszy luk skrzelowy zaopatrzony jest w kilkadziesiat wyrostkow filtracyjnych a pletwa ogonowa lekko wcieta. Ryba ta zwana jest przez znawcow karasiem i wystepuje glownie w plytkich, mocno zarosnietych stawach, jeziorach i spokojnych odcinkach rzek. Najwieksze okazy osiagaja dlugosc do pol metra i okolo trzech kilogramow wagi."},
    ["karp"]        = {narzednik = "karpiem",       short = "szarobrazowa", },
    ["karpienczyk"] = {narzednik = "karpienczykiem",short = "czerwonozlota", opis = "Ogladasz naprawde malutkich rozmiarow rybe o luskach mieniacych sie na czerwono oraz zloto. Pletwy brzuszna oraz grzbietowa sa sredniej wielkosci w stosunku do reszty ciala, ta druga zas posiada lekko blekitnawy odcien."},
    ["kielb"]       = {narzednik = "kielbem",       short = "niebieskawobrazowa", opis = "Ta niewielka rybka ma wydluzone, prawie oble cialo z krotkim, wysokim trzonem ogonowym. Glowa i oczy sa w porownaniu z reszta ciala duze, pysk zas krotki i tepy, zakonczony dolnym otworem gebowym. Gorna szczeka zaopatrzona jest w krotkie wasiki, ktore skierowane do tylu siegaja najwyzej do srodka oka. Grzbiet ma kolor niebieskawobrazowy i pokryty jest duzymi, polkolistymi luskami. Boki sa jasniejsze, z rzedem fioletowo opalizujacych plam, brzuch zas bialawy. Rowniez nieparzyste pletwy zdobia ciemne punkty."},
    ["kielec"]      = {narzednik = "kielecem",      short = "srebrzysta", opis = "Cialo ryby jest owalne, bocznie splaszczone o duzej i masywnej glowie. Grzbiet ma ubarwiony srebrzyscie, na bokach widnieje piec niewyraznych, ciemnych poprzecznych preg. Strona brzuszna srebrzyscie lsniaca."},
    ["kolen"]       = {narzednik = "kolenem",       short = {"plamiasta", "zoltawa"}, opis = "Ryba ma silnie wyciagniete, smukle cialo. Grzbiet ma ciemnoszary, boki wyraznie jasniejsze. Strona brzuszna jest bialawa, dodatkowo na grzbiecie i bokach znajduja sie nieregularnie rozmieszczone biale plamy."},
    ["konger"]      = {narzednik = "kongerem",      short = "wezowata", opis = "Ryba ta ma silne, wezowate cialo z pletwa grzbietowa, ogonowa i odbytowa zrosnietymi w jedna falbane. Grzbiet jest czerniawy z niebieskawym polyskiem, strona brzuszna bialawa. Jej skora pozbawiona jest lusek a nasada pletwy grzbietowej rozpoczyna sie na wysokosci koncow pletw piersiowych."},
    ["koryfena"]    = {narzednik = "koryfena",      short = "blekitnawozielona", opis = "Ryba ma wydluzone, bocznie splaszczone cialo. Jej grzbiet jest blekitnawozielony, strona brzuszna bialosrebrzysta ze zlocistym polyskiem. Ponadto na ciele widnieja ciemne i zlociste, nieregularne plamy."},
    ["kosogon"]     = {narzednik = "kosogonem",     short = "niebieskoszara", opis = "Ryba ta ma smukle, wyciagniete cialo, zakonczone tepym pyskiem. Gorny plat pletwy ogonowej jest silnie wydluzony, stanowiac charakterystyczna ceche tej ryby. Ubarwiona jest na niebieskoszary kolor z metalicznym polyskiem, zas strona jest brzuszna bialawa z szarym nalotem."},
    ["kulbin"]      = {narzednik = "kulbinem",      short = "srebrzystoszara", },
    ["labraks"]     = {narzednik = "labraksem",     short = "srebrzysta", opis = "Cialo tej ryby jest mocno wydluzone i wygrzbiecone, konczace sie niewielka glowa. Ubarwiona jest srebrzyscie z niebieskawa czescia grzbietowa, ponadto na grzbiecie i bokach widnieja male, czarne plamki."},
    ["lamna"]       = {narzednik = "lamna",         short = "ciemnoszara", opis = "Ryba ma wysokie, wygrzbiecone cialo o stozkowatym pysku. Jej grzbiet jest ciemnoszary a strona brzuszna snieznobiala."},
    ["leszcz"]      = {narzednik = "leszczem",      short = "srebrnobrunatna", opis = "Ryba ta ma mocno splaszczone bocznie cialo o dosc malej glowie i tepym pysku z poldolnym otworem gebowym. Pokryta jest niewielkimi luskami, na grzbiecie olowianej barwy z zielonkawym polyskiem, na bokach jasniejsza, metalicznie polyskujaca. Jej brzuch ma kolor bialawy z perlowym polyskiem."},
    ["lin"]         = {narzednik = "linem",         short = "zielonobrunatna", opis = "Ryba ta posiada walcowate i bardzo masywne, splaszczone bocznie cialo o wysokim trzonie ogonowym. Pokryta jest drobnymi, kolistymi luskami, tkwiacymi gleboko w grubej, sluzowatej skorze. Na grzbiecie maja one zielonobrunatna barwe zas na brzuchu sa wyraznie jasniejsze. Oczy ma male, rowniez maly jest jej otwor gebowy, w ktorego kacikach znajduje sie po jednym, drobnym wasiku."},
    ["lipien"]      = {narzednik = "lipieniem",     short = "srebrzystobiala", },
    ["losos"]       = {narzednik = "lososiem",      short = "oliwkowosrebrzysta", opis = "Nachodzace na siebie, okraglawe luski tej ryby posiadaja odcien oliwkowosrebrzysty, zas pomiedzy pletwami grzbietowa i brzuszna oraz ogonowa dostrzegasz pojedyncza, nieparzysta."},
    ["makrela"]     = {narzednik = "makrela",       short = "plaska", opis = "Ta sredniej wielkosci ryba posiada cialo o dosc splaszczonym ksztalcie, zas jej luski skrza sie srebrzyscie, odbijajac padajace na nie promienie swiatla. Jej ksztalt to zapewne przystosowanie do zycia w morskiej glebi."},
    ["makrelosz"]   = {narzednik = "makreloszem",   short = {"oliwkowosrebrzysta", "zielonkawobrazowa"}, opis = "Ryba ma wydluzone i splaszczone bocznie cialo. Grzbiet ma oliwkowy kolor, zas strona brzuszna jest zlociscie lsniaca. Wzdluz bokow biegnie dluga, srebrzysta wstega."},
    ["mauryk"]      = {narzednik = "maurykiem",     short = "prazkowana", opis = "Ryba ta ma wysmukle, dlugie, pozbawione lusek cialo. Ubarwiona jest na ladny, srebrzysty kolor a jej ciemniejszy nieco grzbiet naznaczony jest 8ciemnobrazowymi, falistymi prazkami."},
    ["mietus"]      = {narzednik = "mietusem",      short = "brazowawa", opis = "Cialo tej ryby jest silnie wydluzone, w przedniej czesci walcowate, w tylnej bocznie splaszczone, pokryte niewielkimi, delikatnymi luskami o kolistym ksztalcie. Szeroka, plaska glowa posiada poldolny otwor gebowy z osadzonymi w szczekach, drobniutkimi zabkami. Pletwy brzuszne przesuniete sa pod gardlo a jej brazowawy grzbiet naznaczony jest ciemniejszym, niezbyt wyraznym marmurkowaniem. Boki sa jasniejsze, zoltawe, a brzuch bialy."},
    ["morlesz"]     = {narzednik = "morleszem",     short = "rozowawa", opis = "Ryba ma owalne, bocznie splaszczone cialo ze spiczastym pyskiem. Ubarwiona jest na szarorozowy kolor a na jej boku widnieje czarna plama."},
    ["mostelka"]    = {narzednik = "mostelka",      short = "czerwonobrazowa", opis = "Cialo ryby jest smukle i mocno wyciagniete. Jej pysk jest maly, ledwie siegajacy tylnej krawedzi oka. Szczeki gorna i dolna krotsze od polowy dlugosci glowy. Ubarwiona jest na czerwonobrazowy kolor, brzuch jest nieznacznie jasniejszy."},
    ["murena"]      = {narzednik = "murena",        short = "zoltawa", opis = "Ryba ma silne, wezowate cialo a jej pletwa grzebietowa, ogonowa i odbytowa sa razem zrosniete tworzac rodzaj falbany. Ubarwiona jest na zoltawy, marmurkowany kolor. Wzor ten z przodu jest nieregularny, ku tylowi coraz bardziej uporzadkowany, lecz rownoczesnie coraz rzadszy. Otwor skrzelowy otoczony czarna plama."},
    ["nawaga"]      = {narzednik = "nawaga",        short = "plamiasta", opis = "Ryba ma wydluzone cialo, zakonczone nieduza glowa z wysunieta dolna szczeka i wasikiem na podbrodku. Ubarwiona jest na szary kolor z ciemnymi plamami na grzbiecie, natomiast glowa jest biala, srebrzyscie lsniaca."},
    ["oblada"]      = {narzednik = "oblada",        short = "szarosrebrzysta", opis = "Ryba ta ma owalne, bocznie splaszczone cialo. Ubarwiona jest szarosrebrzyscie z biegnacymi wzdluz ciala ciemnymi paskami. Na trzonie ogona widnieje duza, rzucajaca sie w oczy czarna plama z szeroka, biala obwodka."},
    ["ogak"]        = {narzednik = "ogakiem",       short = "marmurkowana", opis = "Ryba ma wyciagniete, oplywowe cialo o masywnej glowie. Ubarwiona jest na brazowy, marmurkowany kolor, strona brzuszna natomiast ma bardziej zlocisty odcien."},
    ["okon"]        = {narzednik = "okoniem",       short = "pregowana", opis = "Ryba ta ma nieco wygrzbiecone cialo o tepym pysku z szerokim, koncowym otworem gebowym. Pokrywaja ja drobne luski, na grzbiecie ciemnoszare a na bokach jasniejsze, z kilkoma ciemnymi pregami. Brzuch jest bialy ze srebrzystym polyskiem. Pokrywa skrzelowa jest w tylnej czesci spiczasto wyciagnieta i zakoczona mocnym, nieprzyjemnie wygladajacym kolcem. Ponadto pierwsza pletwa grzbietowa posiada czarna plame na tylnej krawedzi zas pletwy brzuszne i odbytowa sa czerwonawej barwy."},
    ["ostrobok"]    = {narzednik = "ostrobokiem",   short = "zielononiebieska", opis = "Ryba ma dlugie, bocznie splaszczone cialo o waskim trzonie ogonowym i spiczastym pysku. Profil glowy prawie prosty a duze oczy maja przezroczysta, tluszczowa powieke. Pokryta jest bardzo malymi, latwo odpadajacymi luskami a jej grzbiet jest zielononiebieski. Boki srebrzyste, metalicznie lsniace, strona brzuszna bialawa."},
    ["ostrosz"]     = {narzednik = "ostroszem",     short = "zoltobrazowa", },
    ["pagrus"]      = {narzednik = "pagrusem",      short = "szarosrebrzysta", opis = "Cialo ryby jest owalne, bocznie splaszczone i pokryte duzymi luskami. Ubarwiona jest na szarosrebrzysty kolor, pletwy zas maja rdzawy odcien."},
    ["pilczyk"]     = {narzednik = "pilczykiem",    short = "zoltobrazowa", opis = "Ryba ta ma owalne, mocno wygrzbiecone cialo. Ubarwiona jest na zoltobrazowy kolor, z piecioma opaskami na bokach. Podbrodek i strona brzuszna sa bialawe."},
    ["piotrosz"]    = {narzednik = "piotroszem",    short = "zoltawa", opis = "Ryba ta ma bardzo wysokie, bocznie sciesnione cialo, okryte malymi luskami. Ubarwieniona jest na zoltawy kolor, z niewyraznymi, ciemniejszymi plamami."},
    ["piskorz"]     = {narzednik = "piskorzem",     short = "ciemnobrazowa", opis = "Ryba ta ma z przodu cialo niemal idealnie walcowate, z tylu bocznie splaszczone z silnie sluzowata, niezbyt przyjemna w dotyku skora. Pokryta jest malenkimi luskami, na grzbiecie ciemnobrazowymi, na bokach nieco jasniejszymi z szeroka, ciemna smuga posrodku oraz biegnacymi nad i pod nia, podluznymi pasami. Ryba ma niewielki, dolny otwor gebowy, szesc wasikow umieszczonych na gornej szczece oraz cztery na dolnej."},
    ["plotka"]      = {narzednik = "plotka",        short = "niebieskozielona", opis = "Ryba ta ma cialo ksztaltu wrzecionowatego, lekko splaszczone bocznie i pokryte duzymi, kolistymi luskami. Jej grzbiet ma barwe niebieskozielona, boki zas sa srebrzyste o zoltawym polysku. Brzuch bialawy, w okresie godowym opalizujacy na czerwono, u samcow wystepuje rowniez perlowa posypka. Poczatek pletwy grzbietowej znajduje sie nad nasada pletw brzusznych a waski otwor gebowy ustawiony jest prawie pionowo. Wsrod rybakow ryba ta zowie sie plotka, natrafic na nia mozna w wolno plynacych badz stojacych wodach. Przedstawiciele tego gatunku osiagaja zazwyczaj do czterdziestu centymetrow dlugosci, chociaz moga sie trafic i nieco wieksze sztuki."},
    ["pstrag"]      = {narzednik = "pstragiem",     short = "nakrapiana", opis = "Jest to spora, ciemnozlocista ryba. Posiada duza, trojkatna pletwe ogonowa, trzy pary malych pletw brzusznych oraz dwie pletwy grzbietowe, zas jej luski sa nakrapiane. Przypomina troche lososia, jednak zapewne nie jest to przedstawiciel tego gatunku."},
    ["rdzawiec"]    = {narzednik = "rdzawcem",      short = "brazowawa", opis = "Ryba ta ma mocno wydluzone cialo o wyraznie wysunietej, dolnej szczece. Ponadto na dolnej szczece znajduje sie malenki wasik. Linia boczna wygieta jest w kierunku grzbietu ponad pletwami piersiowymi. Grzbiet ubarwiony jest na ciemnobrazowy kolor, ostro przechodzacy w jasne boki i jasny braz glowy. Pletwa ogonowa mieni sie teczowo."},
    ["sajka"]       = {narzednik = "sajka",         short = "brazowa", opis = "Ryba ma wydluzone, bardzo smukle, silnie zwezajace sie ku tylowi cialo. Grzbiet brazowego koloru zas dolna strona ciala jasna, srebrzyscie lsniaca. Szczeka dolna jest lekko wysunieta a na podbrodku widnieje maly wasik. Na grzbiecie znajduja sie trzy, daleko odsuniete od siebie pletwy grzbietowe."},
    ["salpa"]       = {narzednik = "salpa",         short = "srebrzysta", opis = "Ryba ma owalne, bocznie sciesnione cialo, pokryte niewielkimi luskami. Jej ubarwienie jest szarosrebrzyste z dziesiecioma zlocistymi, dlugimi paskami wzdluz bokow."},
    ["sandacz"]     = {narzednik = "sandaczem",     short = "ciemnozielona", opis = "Ryba ta ma mocno wydluzone cialo o spiczasnym pysku z szerokim, koncowym otworem gebowym. W szczekach procz drobnych zebow posiada rowniez duze, chwytne kly. Jej grzbiet pokryty jest ciemnozielonymi, momentami przechodzacymi w szare, drobnymi luskami, boki ma nieco jasniejsze a brzuch bialawy. Dwie oddzielone od siebie, zblizonej dlugosci pletwy grzbietowe oraz pletwa ogonowa naznaczone sa rzedami ciemnych punktow."},
    ["sardynka"]    = {narzednik = "sardynka",      short = "srebrnoluska", opis = "Jest to raczej niewielkich rozmiarow ryba. Jej duze luski lsnia srebrzyscie, natomiast wzdluz linii grzbietowej w przedniej czesci ciala dostrzegasz biegnacy rzad ciemniejszych cetek."},
    ["seriola"]     = {narzednik = "seriola",       short = "niebieskosrebrzysta", opis = "Ryba ma wyciagniete, bocznie splaszczone cialo. Grzbiet jest niebieskosrebrzysty, boki jasniejsze ze zlocistym polyskiem. Strona brzuszna biala, srebrzyscie lsniaca."},
    ["sieja"]       = {narzednik = "sieja",         short = "srebrzysta", },
--[[]]["sierpnik"]  = {narzednik = "sierpnikem",    short = "niebieskawa", opis = "Ryba ma wygrzbiecone, owalne, bocznie splaszczone cialo o krotkim, niskim trzonie ogonowym. Jej grzbiet ma niebieskawy kolor, boki i strona brzuszna sa srebrzyscie lsniace z rozowym odcieniem. Ponadto na bokach widnieje kilka owalnych, szarych plam. Konce drugiej pletwy grzbietowej, ogonowej i odbytowej sa czarne a druga pletwa grzbietowa i pletwa odbytowa maja zoltawy odcien."},
    ["skalnik"]     = {narzednik = "skalnikiem",    short = "czerwonawa", opis = "Ryba ma wydluzone, smukle cialo o dlugiej glowie zakonczonej spiczastym pyskiem. Ubarwiona jest czerwonawo z okolo dziesiecioma utworzonymi przez punkty liniami wzdluz bokow."},
    ["sledz"]       = {narzednik = "sledziem",      short = "srebrzystozielona", opis = "Jest to sredniej wielkosci ryba, jej kolistego ksztaltu luski zachodza na siebie, odbijajac padajace nan swiatlo i polyskujac srebrzysta barwa z lekka domieszka blekitu po stronie brzusznej."},
    ["sola"]        = {narzednik = "sola",          short = "wylupiastooka", opis = "Cialo tej ryby posiada owalny ksztalt, jest przy tym splaszczone bocznie, zas gorna szczeka wydaje sie byc nieco dluzsza od dolnej. Pletwy piersiowe i brzuszne tego gatunku sa stosunkowo niewielkie, ogonowa zas zostala zaokraglona."},
    ["strojnik"]    = {narzednik = "strojnikem",    short = "fioletowoniebieska", opis = "Ryba ta ma wysokie, bocznie splaszczone cialo z malymi luskami. Jej grzbiet ma fioletowe zabarwienie, boki sa niebieskawe. Strona brzuszna rozowa."},
    ["strzepiel"]   = {narzednik = "strzepielem",   short = "wzorzysta", opis = "Ryba ma podluzne, owalne cialo, pokryte drobnymi luskami. Jej grzbiet i boki ubarwione sa na zoltawobrazowy kolor z kilkoma ciemnymi opaskami. Dodatkowo na brzuchu widnieje duza, fioletowa plama a na glowie znajduja sie niebieskie i czerwone, powywijane wzory."},
    ["sum"]         = {narzednik = "sumem",         short = "wasata", },
    ["szczupak"]    = {narzednik = "szczupakiem",   short = "ciemnozielona", opis = "Ryba ta ma silnie wydluzone, splaszczone bocznie cialo z przesunieta daleko ku tylowi pletwa grzbietowa. Dluga glowa ma plaski, podobny do kaczego dzioba pysk ze szczekami najezonymi niewielkimi, ostrymi zabkami. Pokryty drobna luska grzbiet ma barwe ciemnozielona, wpadajaca lekko w braz, boki sa wyraznie jasniejsze z poprzecznymi, ciemnymi pasami i plamami a brzuch bialawy. Rowniez pletwy naznaczone sa nieregularnymi, ciemnymi plamkami a linia boczna jest wielokrotnie przerywana. Doswiadczony rybak na pierwszy rzut oka rozpozna w rybie tej szczupaka. Spotkac go mozna w jeziorach i rzekach terenow o umiarkowanym klimacie a bywa, ze zapedzi sie i do morza. Dorosle osobniki moga osiagac do okolo poltora metra dlugosci."},
    ["szprot"]      = {narzednik = "szprotem",      short = "niebieskawa", opis = "Trzymasz silnie wydluzone, w przekroju poprzecznym owalne cialo ryby z wyraznym kilem na brzuchu, a czesc jej lusek stepkowa jest ostro, dachowkowato zgieta o koncach skierowanych ku tylowi. Pozostale zas sa koliste, duze i cienkie, latwo tez wypadaja. Glowa jest bezluska a pokrywa skrzelowa gladka. Oczy maja male powieki tluszczowe. Brak tez jest linii bocznej. Bez watpienia to przedstawiciel gatunku szprotow."},
    ["tasergal"]    = {narzednik = "tasergalem",    short = "niebieskawa", opis = "Ryba ma wydluzone, bocznie splaszczone cialo o szerokim otworze gebowym. Jej grzbiet jest niebieski, przechodzacy w jasniejsze, srebrzyste boki. Strona brzuszna bialawa a u nasady pletw piersiowych widnieje duza, czarna plama."},
    ["tolpyga"]     = {narzednik = "tolpyga",       short = "olowianoszara", opis = "Ryba ma wydluzone, silnie splaszczone bocznie cialo o szerokiej, zaostrzonej z przodu glowie z gornym, ustawionym prawie pionowo otworem gebowym. Jej oczy sa male i leza ponizej linii srodkowej glowy. Pokrywajace ja luski sa niewielkie, na grzbiecie ciemne a po bokach olowianoszare. Pletwa grzbietowa posiada okolo dziesieciu promieni, z czego jedynie dwa pierwsze sa slabo skostniale."},
    ["topornik"]    = {narzednik = "topornikem",    short = "czarna", opis = "Ryba ma krotkie i wysokie, bocznie splaszczone cialo. Jej grzbiet jest koloru czarnego a boki srebrzyste, lekko polyskujace."},
    ["tunczyk"]     = {narzednik = "tunczykiem",    short = "stalowoblekitna", opis = "Tym, co wyroznia ta dosc znacznych rozmiarow rybe sposrod wielu innych jest kolor jej lusek, przywodzacy ci na mysl mithryl, odbijajac padajace nan promienie swiatla i blyszczac swa stalowoblekitna barwa, nieco ciemniejsza na grzbiecie, niz na brzuchu."},
    ["ukleja"]      = {narzednik = "ukleja",        short = {"szarosrebrzysta", "szarozielona"}, opis = "Niewielka rybka ma smukle, bocznie splaszczone cialo. Pokrywaja ja nieduze, koliste luski, jednak bialawy brzuch jest ich kompletnie pozbawiony. Grzbiet ma barwe szarozielona, boki sa jasniejsze z silnym, srebrzystym polyskiem. Pletwy grzbietowa i ogonowa sa jasnoszare zas plewy parzyste i odbytowa bialawe z ladnymi, pomaranczowymi nasadami."},
    ["wegorz"]      = {narzednik = "wegorzem",      short = "wezowata", opis = "W wezowatym ksztalcie ryby kazdy doswiadczony rybak rozpozna bez trudu wegorza. Pokryte sluzem cialo ma osadzone gleboko, drobne, podluznoowalne luski. Grzbiet ma oliwkowobrazowy kolor zas podbrzusze jest zoltawe i pozbawione pletw brzusznych. Pletwa grzbietowa, ogonowa i odbytowa sa polaczone ze soba, tworzac jeden, ciagly fald pletowy. Samce tej ryby osiagaja okolo pol metra dlugosci, samice sa sporo dluzsze - moga miec nawet do poltora metra. Wegorza spotkac mozna prawie we wszystkich cieplych, obficie porosnietych wodach. Nie wystepuje w zimnych, gorskich rzekach i jeziorach."},
    ["wezyna"]      = {narzednik = "wezyna",        short = "zoltobrazowa", opis = "Ryba ta ma dlugie i cienkie, prawie okragle cialo a jej rurkowaty i dlugi pysk stanowi prawie polowe dlugosci glowy. Ubarwiona jest na zoltawobrazowy kolor, wierzch glowy oraz grzbietu zdobia liczne, drobniutkie, srebrzyste plamki. Boki sa jasnosrebrzyste z ciemnymi, poprzecznymi prazkami. Mala, silnie zredukowana pletwa ogonowa rozpieta jest na szesciu miekkich promieniach."},
    ["widlak"]      = {narzednik = "widlakiem",     short = "barwna", opis = "Ryba ma wyciagniete cialo z dwiema pletwami grzbietowymi. Jej grzbiet i gorna polowa bokow ma kolor czerwonawy, podobnie ubarwione sa tez gorne partie glowy. Dolna czesc glowy, dolne partie bokow i brzuch sa jasnoniebieskie i srebrzyscie lsniace. Wargi sa rozowe. Gorna krawedz drugiej pletwy grzbietowej zolto lamowana a jej zakonczenie, koniec pletw brzusznych i pletwy piersiowej sa czarne."},
    ["wzdrega"]     = {narzednik = "wzdrega",       short = "brazowozielona", opis = "Ryba ta ma wygrzbiecone, bocznie splaszczone cialo i waski, skierowany skosnie ku gorze, polgorny otwor gebowy. Pokryta jest duzymi luskami, na grzbiecie brazowozielonymi, po bokach jasniejszymi z miedzianym polyskiem. Teczowka oka jest pomaranczowoczerwona a przednia krawedz pletwy grzbietowej znajduje sie za nasadami pletw brzusznych."},
}

mydb_oswajanie = db:create("feeding", {
    feeding = {
      animal = "",
      animal_type = "",
      active = 1,
      food = "",
      count = 0,
      datetime = "",
      changed = db:Timestamp("CURRENT_TIMESTAMP"),
      _index = { "animal", "food" }
    },

    animals = {
      animal = "",
      active = 1,
      level = "",
      datetime = "",
      changed = db:Timestamp("CURRENT_TIMESTAMP"),
      _index = { "animal", "level" }
    }
  })

function oswajanie.alias.insert_feeding_entry(zwierzak, pokarm)
    db:add(mydb_oswajanie.feeding, { animal = zwierzak, food = pokarm })
end

function oswajanie.core.insert_animal_level(zwierzak, poziom)
    local q = "select animal from animals where animal='"..zwierzak.."' and level='"..poziom.."' "
    local r = db:fetch_sql(mydb_oswajanie.feeding, q)
    if r == nil or table.size(r) == 0 then
        db:add(mydb_oswajanie.animals, { animal = zwierzak, level = poziom })
    end
end

function oswajanie.core.lcstr(color, str, fill_char, to_len)
    str = " "..str.." "
    local l = to_len - string.len(str)
    local l_l = 0
    local l_r = l - l_l
    local s = "<grey>"..string.rep(fill_char, l_l)..color..str.."<grey>"..string.rep(fill_char, l_r)
    return s
end

function oswajanie.core.rcstr(color, str, fill_char, to_len)
    str = " "..str.." "
    local l = to_len - string.len(str)
    local l_r = 0
    local l_l = l - l_r
    local s = "<grey>"..string.rep(fill_char, l_l)..color..str.."<grey>"..string.rep(fill_char, l_r)
    return s
end

function oswajanie.core.ccstr(color, str, fill_char, to_len)
    str = " "..str.." "
    local l = to_len - string.len(str)
    local l_l = math.floor(l / 2)
    local l_r = l - l_l
    local s = "<grey>"..string.rep(fill_char, l_l)..color..str.."<grey>"..string.rep(fill_char, l_r)
    return s
end

function oswajanie.core.get_symbol(text)
    for k,v in pairs(ryby) do
        if v.narzednik == text then
            local opis = ""
            if type(v.short) == "table" then
                for p,s in pairs(v.short) do
                    opis = opis .." " .. s
                end
            else
                opis = v.short
            end
            text = text .. " [".. opis .. "]"
            return "🐟"
        end
    end
    for k,v in pairs(owoce) do
        if v.narzednik == text then
            return "🍎"
        end
    end
    for k,v in pairs(warzywa) do
        if v.narzednik == text then
            return "🥔"
        end
    end
    for k,v in pairs(szczatki) do
        if v.narzednik == text then
            return "👁️"
        end
    end
    for k,v in pairs(inne) do
        if v.narzednik == text then
            return "🍽️"
        end
    end
    local prefix = "miesem"
    if text:find(prefix, 1, #prefix) then
        return "🥩"
    end
    return "?"
end

function oswajanie.core.print_line(color, col1, col1_len, col2, col2_len, col3, col3_len, col4, col4_len, col5, col5_len)
    cecho("\n"..oswajanie.core.rcstr(color, col1, " ", col1_len))
    cecho("<grey>|"..oswajanie.core.lcstr(color, col2, " ", col2_len))
    cecho("<grey>|"..oswajanie.core.lcstr(color, col3, " ", col3_len))
    cecho("<grey>|"..oswajanie.core.lcstr(color, col4, " ", col4_len))
    cecho("<grey>|")
    if string.len(col5) > 0 then
        local text = col5
        local czym = col5
        local symbol = (text=="pokarmem" and "" ) or oswajanie.core.get_symbol(text)
        if symbol == "🐟" then
            for k,v in pairs(ryby) do
                if v.narzednik == text then
                    local opis = ""
                    if type(v.short) == "table" then
                        for p,s in pairs(v.short) do
                            opis = opis .." " .. s
                        end
                    else
                        opis = v.short
                    end
                    text = text .. " [".. opis .. "]"
                break
            end
        end
    end
        
    echo(symbol)
    cechoLink("<light_slate_blue> "..text, [[send("oswajaj zwierze ]] ..czym.. [[")]], "oswajaj zwierze "..col5, true)
  end
end

function oswajanie.alias.print_table_by_animal(animal, compact)
    local q = "select f.food, strftime('%Y-%m-%d %H:%M',f.changed, 'localtime') as datetime, strftime('%s',f.changed) as count from feeding as f where f.animal = '"..animal.."' order by count desc"
    local r = db:fetch_sql(mydb_oswajanie.feeding, q)

    local max_food_len = 0
    for key, val in pairs(r) do
        local t = string.len(val["food"])
        if t > max_food_len then
            max_food_len = t
        end
    end

    local col1_len = 5  --- trzycyfrowa liczba + brzegi
    local col2_len = 18 --- 2021-09-26 10:14 + brzegi
    local col3_len = 18 --- 2021-09-26 10:14 + brzegi
    local col4_len = string.len(oswajanie.level_max) + 2
    local col5_len = 0
    if string.len("pokarmem") > max_food_len then
        col5_len = string.len("pokarmem") + 2
    else
        col5_len = max_food_len + 2
    end
    local sum_line_len = col1_len + 1 + col2_len + 1 + col3_len + 1 + col4_len + 1 + col5_len
    --- 3  | 2021-09-28 20:30 | 2021-10-03 20:30 | lojalne | mango

    --- title
    cecho("\n")
    cecho(oswajanie.core.ccstr("<green>", "Oswajane zwierze", "-", sum_line_len))
    cecho("\n  <white>"..animal.."<grey>")
    cecho("\n"..string.rep("-",sum_line_len))
    oswajanie.core.print_line("<light_slate_blue>", "ile", col1_len, "ostatnio", col2_len, "nastepne", col3_len, "poziom oswojenia", col4_len, "pokarmem", col5_len)

    local tmp = {}
    local shortest_feeding_time_in_sec = oswajanie.config.feeding_time * 60 * 60 -- 432000 s
    local theshortest = shortest_feeding_time_in_sec
    compact = compact or false
    for k, v in pairs(r) do
        if tmp[v['food']] == nil then
            tmp[v['food']] = 1
            local a = oswajanie.core.getfoods_by_animal(animal, v['food'])
            if not compact then  cecho("\n"..string.rep("-", sum_line_len)) end
            local prev_epoch = 0
            local shortest = shortest_feeding_time_in_sec
            for k1, v1 in pairs(a) do
                if k1 > 1 then
                    local diff = prev_epoch - v1["count"]
                    if diff < shortest then shortest = diff end
                end
                prev_epoch = v1["count"]
            end
            theshortest = (shortest < theshortest and shortest) or theshortest
            for k1, v1 in pairs(a) do
                local cl = oswajanie.cl_ok
                local col1 = ""
                local nt = ""
                local food = ""
                if k1 == 1 then
                    food = v1["food"]
                    local s = getEpoch() - v1["count"]
                    local n = shortest_feeding_time_in_sec - s
                    col1 = table.size(a)
                    if s <= shortest_feeding_time_in_sec then
                        nt = os.date('%Y-%m-%d %H:%M', getEpoch()+n)
                        cl = (n < shortest - s and oswajanie.cl_maybe) or (n < 60*60*24 and oswajanie.cl_soon) or oswajanie.cl_not
                    else
                        nt = "odrazu"
                    end
                end
                oswajanie.core.print_line(cl, col1, col1_len, v1["datetime"], col2_len, nt, col3_len, oswajanie.core.getlevel_by_animal(animal, v1["count"]), col4_len, food, col5_len)
                if compact and k1 == 1 then
                    break
                end
            end
        end
    end
    cecho("\n"..string.rep("-",sum_line_len))
    cecho((theshortest/60/60).."\n")
end

function oswajanie.core.getlevel_by_animal(animal, time)
    time = tonumber(time)
    local next_level = ""
    local prev_level = oswajanie.level_min
    local next_feeding_time = 0
    local next_level_time = 0
    local prev_level_time = 0

    local q_prev_level = "select level,strftime('%s',changed) as datetime from animals where strftime('%s',changed) < '"..time.."'  and animal = '"..animal.."' order by changed desc limit 1"
    local r2 = db:fetch_sql(mydb_oswajanie.animals, q_prev_level)

    if table.size(r2) > 0 then
        prev_level_time = tonumber(r2[1]['datetime'])
        prev_level = r2[1]['level']
    end

    local q_next_level = "select level,strftime('%s',changed) as datetime from animals where strftime('%s',changed) > '"..time.."' and animal = '"..animal.."' order by changed limit 1"
    local r1 = db:fetch_sql(mydb_oswajanie.animals, q_next_level)
    if table.size(r1) > 0 then
        next_level_time = tonumber(r1[1]['datetime'])
        next_level = r1[1]['level']
    end
    
    local q_next_feeding_time = "select strftime('%s',changed) as count from feeding where strftime('%s',changed) > '"..time.."'  and animal = '"..animal.."' order by changed limit 1"
    local r3 = db:fetch_sql(mydb_oswajanie.feeding, q_next_feeding_time)
    
    if table.size(r3) > 0 then next_feeding_time = r3[1]['count'] end
    
    if next_feeding_time == 0 and string.len(next_level) > 0 then return next_level end
    if next_feeding_time == 0 and string.len(prev_level) > 0 then return prev_level end
    if next_level_time == 0 then return prev_level end
    if prev_level_time == 0 then return oswajanie.level_min end
    if next_level_time > next_feeding_time then return prev_level end
    
    return next_level
end

function oswajanie.core.getfoods_by_animal(animal, food)
    local q = "select f.food, strftime('%Y-%m-%d %H:%M',f.changed, 'localtime') as datetime, strftime('%s',f.changed) as count from feeding as f where f.animal = '"..animal.."' and f.food = '"..food.."' order by count desc"
    local r3 = db:fetch_sql(mydb_oswajanie.feeding, q)
    return r3
end

function oswajanie.alias.print_animals()
    local q = "select animal,active from feeding group by animal order by animal"
    local r = db:fetch_sql(mydb_oswajanie.feeding, q)

    cecho("\n")
    cecho("  <light_slate_blue>Oswajane zwierzeta:")
    cecho("\n")

    local command = nil
    local tip = ""
    local maxlen = 0
    for k, v in pairs(r) do
        local length = string.len(v["animal"])
        if length > maxlen then maxlen = length end
  end
  for k, v in pairs(r) do
    local a = "(<red>nieaktywne<grey>)"
    if v["active"] == 1 then
        a = " (<green>aktywne<grey>)  "
        command = [[expandAlias("/o_wylacz ]].. v["animal"] .. [[")]]
        tip = "/o_wylacz ".. v["animal"]
    else
        command = [[expandAlias("/o_wlacz ]].. v["animal"] .. [[")]]
        tip = "/o_wlacz ".. v["animal"]    
    end
    cecho("\n  - <yellow>")
    cechoLink("<yellow>"..v["animal"], [[expandAlias("/o_pokaz ]].. v["animal"] .. [[")]], "/o_pokaz ".. v["animal"], true)
    echo(string.rep(" ", 1 + maxlen - string.len(v["animal"])))
    cechoLink(a, command, tip, true)
    cecho(" sprawdz czego nie jadl:")
    cechoLink("<light_slate_blue> szczatki", [[zryby:brakujace_szczatki("]] ..v["animal"].. [[")]], "pokaz szczatki", true)
    cechoLink("<light_slate_blue> owoce", [[zryby:brakujace_owoce("]] ..v["animal"].. [[")]], "pokaz owoce", true)
  end
  cecho("\n")
end

function oswajanie.alias.print_table_by_animal_all()
    local q = "select food,datetime(changed,'localtime') as datetime, strftime('%s',changed) as animal_type, animal from feeding where active = 1 order by animal_type desc"
    local r = db:fetch_sql(mydb_oswajanie.feeding, q)
    local s = table.size(r)

    local max_food_len = 0
    local max_animal_len = 0
    local max_level_len = 0

    for key, val in pairs(r) do
        local t = string.len(val["food"])
        if t > max_food_len then max_food_len = t end
        local t2 = string.len(val["animal"])
        if t2 > max_animal_len then max_animal_len = t2 end
        local t3 = string.len(oswajanie.core.getlevel_by_animal(val["animal"], val["animal_type"]))
        if t3 > max_level_len then max_level_len = t3 end    
    end
  
    local col1_len = 5  --- trzycyfrowa liczba + brzegi
    local col2_len = max_animal_len + 2
    local col3_len = 21 --- 2021-09-26 10:14:12 + brzegi
    local col4_len = 0
    if string.len("poziom oswojenia") > max_level_len  then
        col4_len = string.len("poziom oswojenia") + 2
    else
        col4_len = max_level_len + 2
    end 
    local col5_len = 0
    if string.len("pokarmem") > max_food_len then
        col5_len = string.len("pokarmem") + 2
    else
        col5_len = max_food_len + 2
    end
    
    local sum_line_len = col1_len + 1 + col2_len + 1 + col3_len + 1 + col4_len + 1 + col5_len
    --- 3  | 2021-09-28 20:30 | 2021-10-03 20:30 | lojalne | mango

    --- title
    cecho("\n")
    cecho(oswajanie.core.ccstr("<green>", "Oswajano zwierzeta", "-", sum_line_len))
    oswajanie.core.print_line("<light_slate_blue>", "nr", col1_len, "zwierze", col2_len, "data", col3_len, "poziom oswojenia", col4_len, "pokarmem", col5_len)
    cecho("\n"..string.rep("-",sum_line_len))

    --- content
    for k1, v1 in pairs(r) do
        local level = oswajanie.core.getlevel_by_animal(v1["animal"], v1["animal_type"])
        oswajanie.core.print_line("<green>", s, col1_len, v1["animal"], col2_len, v1["datetime"], col3_len, level, col4_len, v1["food"], col5_len)
        s = s - 1
    end
    cecho ("\n"..string.rep("-",sum_line_len).."\n")
end

function oswajanie.core.getlastanimal()
    local q = "select animal from feeding where active = 1 order by changed desc limit 1"
    local r = db:fetch_sql(mydb_oswajanie.feeding, q)
    if table.size(r) > 0 then
        return r[1]['animal']
    end
    return ""
end

function oswajanie.alias.print_help()
    local q = "select animal from feeding where active = 1 order by changed desc limit 1"
    local r = db:fetch_sql(mydb_oswajanie.feeding, q)
    cecho(" Ogolnie informacje: Baza oswajania zaczyna sie budowac po pierwszym oswajaniu zwierzecia.\n")
    cecho(" Dopiero wtedy dostepne aliasy wyswietlaja pomocne informacje.\n")
    cecho(" Po oswojeniu nalezy ")
    cechoLink("<light_slate_blue>ocenic zwierze", [[send("ocen zwierze")]], "ocen zwierze", true)
    cecho(" <grey>aby zapisal sie poziom oswojenia zwierzecia.\n\n")

    cecho(" <yellow>Dostepne aliasy uzytkowe:<grey>\n")
    cecho("\n")
    cecho(" <light_slate_blue>/o_pomoc<grey> - pokazuje pomoc, ktora czytasz\n")
    cecho(" ")
    cechoLink("<light_slate_blue>/o_pokaz", [[expandAlias("/o_pokaz")]], "/o_pokaz", true)
    cecho("<grey> - pokazuje liste oswajanych zwierzat, mozna kliknac na nazwe zwierzecia \n")
    cecho("           wywola /o_pokaz <zwierze>, klikniecie na status zmieni go w bazie \n")
    cecho(" <light_slate_blue>/o_pokaz <zwierze><grey> - pokazuje spis oswajan <zwierzecia>\n")
    cecho("           Klikniecie na wybrane pozywienie wywola probe oswajania tym pokarmem.\n")
    if table.size(r) > 0 then
        cechoLink("\n <light_slate_blue>/o_pokaz "..r[1]['animal'], [[oswajanie.alias.print_table_by_animal("]]..r[1]['animal']..[[", true)]], "/o_pokaz "..r[1]['animal'], true)
      cecho("<grey> - ostatnio oswajane zwierze\n\n")
    end
    cechoLink(" <light_slate_blue>/o_historia", [[expandAlias("/o_historia")]], "/o_historia", true)
    cecho("<grey> - Wyswietla wszystkie oswajania <white>aktywnych<grey> zwierzat dostepnych w bazie.\n")
    cecho("\n")

    cecho(" <yellow>Aliasy zwiazane z obsluga bazy:<grey>\n\n")
    cecho(" <light_slate_blue>/o_wylacz <zwierze><grey> - deaktywuje <zwierze> w bazie.\n")
    cecho("           Alias w praktyce przydaje sie tylko przy komendzie '/o_historia' jesli\n")
    cecho("           chcemy aby _nie_ pokazywalo historii karmienia konkretnego zwierzecia.\n")
    cecho(" <light_slate_blue>/o_wlacz <zwierze><grey> - aktywuje <zwierze> w bazie.\n")
    cecho("           Alias w praktyce przydaje sie tylko przy komendzie '/o_historia' jesli\n")
    cecho("           chcemy aby pokazywalo historie karmienia konkretnego zwierzecia.\n")
    cecho(" <light_slate_blue>/o_przemianuj <zwierze> na <Imie><grey> - zmienia opis <zwierzecia> w bazie na <imie>.\n")
    cecho("           Alias przydaje sie gdy w trakcie karmienia nazwiemy zwierze i chcemy zaktualizowac \n")
    cecho("           wczeniejsze wpisy aby zsynchronizowac historie.\n")
    cecho(" ")
end

function oswajanie.alias.enable(animal)
    oswajanie.aktywacja(animal, 1)
end

function oswajanie.alias.disable(animal)
    oswajanie.aktywacja(animal, 0)
end

function oswajanie.aktywacja(animal, status)
    local q = "select animal from feeding where animal = '"..animal.."' group by animal"
    local r = db:fetch_sql(mydb_oswajanie.feeding, q)
    if table.size(r) > 0 then
        local bob = db:fetch(mydb_oswajanie.feeding, db:eq(mydb_oswajanie.feeding.animal, animal))[1]
        bob.active = status
        db:update(mydb_oswajanie.feeding, bob)
    end
end

function oswajanie.alias.rename(animal, new_name)
  if string.len(animal) > 0 and string.len(new_name) > 0 then
        local q = "select _row_id from feeding where animal = '"..animal.."'"
        local r = db:fetch_sql(mydb_oswajanie.feeding, q)
        if table.size(r) > 0 then
            local a1 = db:fetch(mydb_oswajanie.feeding, db:eq(mydb_oswajanie.feeding.animal, animal))
            for k, v in pairs(a1) do
                a1[k]["animal"] = new_name
                db:update(mydb_oswajanie.feeding, a1[k])
            end
        end
        local q1 = "select animal from animals where animal = '"..animal.."'"
        local r1 = db:fetch_sql(mydb_oswajanie.animals, q1)
        if table.size(r1) > 0 then
            local a2 = db:fetch(mydb_oswajanie.animals, db:eq(mydb_oswajanie.animals.animal, animal))
            for k, v in pairs(a2) do
                a2[k]["animal"] = new_name
                db:update(mydb_oswajanie.animals, a2[k])
            end
        end
        cecho("\n <green>Zmieniam " .. animal.." w bazie zwierzat na "..new_name..".\n\n")
    else
        cecho("\n <light_slate_blue>/o_przemianuj <zwierze> na <Kogo?><grey>\n\n")
        cecho(" Przyklad: <yellow>/o_przemianuj ostrodzioba podstarzala sojke na Darniaka<grey>\n\n")
    end
end

function oswajanie.core.full_string(str, len)
    local l1 = string.len(str)
    local l2 = len - l1
    return str..string.rep(" ",l2)
end

function oswajanie.trigger.feed_alert(czas)
    if oswajanie.timer then killTimer(oswajanie.timer) end
    oswajanie.timer = tempTimer(czas,
        function()
            scripts.ui.notification_center:add_notification("Mozesz oswajac zwierze.")
            scripts.ui:info_action_update("Oswajanie")
        end
    )
end

zryby = zryby or {
    ryby_trigger = {},
    ogladasz_trigger = nil,
    oswajasz_trigger = nil,
    oswojenie_trigger = nil,
    zmeczenie_trigger = nil,
}

function zryby:get_nazwe_ryby(ryba, narzednik, animal)
    local q = "select food, max(strftime('%s',changed)) as count from feeding where animal='"..animal.."' and food='"..narzednik.."'"
    local r = db:fetch_sql(mydb_oswajanie.feeding, q)
    local result = (ryby[ryba].opis and "" or "<u>")
    if table.size(r) > 0 and r[1]["count"] then
        local s = getEpoch() - r[1]["count"]
        local shortest_feeding_time_in_sec = oswajanie.config.feeding_time * 60 * 60 -- 432000 s
        if s > shortest_feeding_time_in_sec then
            return  result .. oswajanie.cl_ok .. ryba .. "<reset>"
        elseif  s > shortest_feeding_time_in_sec - 60*60*24 then
            return result .. oswajanie.cl_maybe .. ryba .. "<reset>"
        else
            return result .. oswajanie.cl_not .. ryba
        end
    else
        return result .. oswajanie.cl_ok .. ryba .. "<reset>"
    end
    
end

function zryby:czy_opis(short, opis)
    if short == opis then return true end
    for k,v in pairs(przymiotniki[short]) do
        if v == opis then return true end
    end
    return false
end

function trigger_func_oswajanie_ryby_opis(opis)
    cecho("<green>"..opis.."<reset>")
end

function zryby:ryba(nazwa)
    local opis = matches[2]
    
    local animal = oswajanie.core.getlastanimal()

    if animal ~= "" then
        nazwa = ""
        for k,v in pairs(ryby) do
            if type(v.short) == "table" then
                for p,s in pairs(v.short) do
                    if self:czy_opis(s, opis) then
                        nazwa = nazwa ..(nazwa=="" and "" or "|").. self:get_nazwe_ryby(k, v.narzednik, animal)
                        break
                    end
                end
            else
                if self:czy_opis(v.short, opis) then 
                    nazwa = nazwa ..(nazwa=="" and "" or "|").. self:get_nazwe_ryby(k, v.narzednik, animal)
                end
            end
        end
       
    end

    local ryba = " (" .. nazwa..")"
    
    selectString(matches[1], 1)
    creplace(matches[1] .. ryba)
    resetFormat()
end

function zryby:ogladasz()
    local animal = matches[2]
    oswajanie.tmp_animal = animal
    
    self:enableTrigger()
    tempTimer(1, function() self:disableTrigger() end)
end

function zryby:zwierzejest()
    local zwierzak = oswajanie.tmp_animal
    local level = matches[2]
    oswajanie.core.insert_animal_level(zwierzak, level)

    self:disableTrigger()
    
    if selectString(level, 1) > -1 then
        local q = "select count(*)as count from feeding as F where animal = '".. zwierzak .. "' and changed > (select A.changed from animals as A where A.level = '".. level .. "' and A.animal = F.animal)"
        local result = db:fetch_sql(mydb_oswajanie.feeding, q)
              
        local add_text = " <light_slate_blue>" .. misc.animal_levels[level]
        if level ~= oswajanie.level_max then
            local Q = "select avg(cnt)as count from ( select count(*)as cnt from animals as A inner join feeding as F on A.animal = F.animal where A.animal = '".. zwierzak .. "' and F.changed > A.changed and F.changed < (select min(changed) from animals as AA where AA.changed > A.changed) group by A.level )"
            local Result = db:fetch_sql(mydb_oswajanie.feeding, Q)
            add_text = add_text .. "<reset>, <light_slate_blue>karmione<reset> " .. result[1]['count'] .. " razy<reset>"
            if table.size(Result[1]) > 0 then
                local avg = math.floor(Result[1]['count'] + .5)
                add_text = add_text .. " z ".. avg
            end
        end
        creplace(level .. add_text)
        
        if selectString("karmione", 1) > -1 then
            setLink(function() oswajanie.alias.print_table_by_animal(zwierzak, true)end, "/o_pokaz " .. zwierzak)
        end
    end    
end

function zryby:zwierze_zmeczenie()
    local zm = matches[2]
    local lv = misc.lvl_calc["val_to_next_to_number"][zm]
    if selectString(zm, 1) > -1 then
        local max_czas = (5 - lv) * (oswajanie.config.recovery_time * 60)/5
        local dt = getEpoch() - oswajanie.feeding_date
        local czas = oswajanie.config.recovery_time * 60 - dt
        if czas < 0 then
            oswajanie.feeding_date = getEpoch() + max_czas - oswajanie.config.recovery_time * 60
            czas = max_czas
            oswajanie.trigger.feed_alert(czas)
        end
        creplace(zm .. " ["..lv.."/5 "..string.format("%d", czas).."s]")
        resetFormat()
    end
end

function zryby:enableTrigger()
    if self.oswojenie_trigger == nil then self.oswojenie_trigger = tempRegexTrigger("^Sadzac po zachowaniu zwierze jest (.*)\\.$", function() self:zwierzejest() end) end
    if self.zmeczenie_trigger == nil then self.zmeczenie_trigger = tempRegexTrigger("^Jest calkowicie wykonczon[ay] i bedzie potrzebowac jeszcze (.+) czasu do pelnej regeneracji sil\\.$", function() self:zwierze_zmeczenie() end) end
end

function zryby:disableTrigger()
    if self.oswojenie_trigger then killTrigger(self.oswojenie_trigger) self.oswojenie_trigger = nil end
    if self.zmeczenie_trigger then killTrigger(self.zmeczenie_trigger) self.zmeczenie_trigger = nil end
end

function zryby:oswajasz()
    local raw = matches[2]
    local arr = string.split(raw, " ")
    local pokarm
    if table.size(arr) == 2 then
        -- karmienie nazwanego zwierzaka jedzeniem lub ryba
        pokarm = arr[2]
        oswajanie.alias.insert_feeding_entry(arr[1], pokarm)
    elseif table.size(arr) == 3 then
        -- karmienie nazwanego zwierzaka miesem
        pokarm = arr[2].." "..arr[3]
        oswajanie.alias.insert_feeding_entry(arr[1], pokarm)
    elseif table.size(arr) == 4 then
        -- karmienie nienazwanego zwierzaka jedzeniem lub ryba
        pokarm = arr[4]
        oswajanie.alias.insert_feeding_entry(arr[1].." "..arr[2].." "..arr[3], pokarm)
    elseif table.size(arr) == 5 then
        -- karmienie nienazwanego zwierzaka miesem lub sokola jedzeniem/ryba
        if( arr[4] == 'miesem' ) then
            pokarm = arr[4].." "..arr[5]
            oswajanie.alias.insert_feeding_entry(arr[1].." "..arr[2].." "..arr[3], pokarm)
        else
            pokarm = arr[5]
            oswajanie.alias.insert_feeding_entry(arr[1].." "..arr[2].." "..arr[3].." "..arr[4], pokarm)
        end
    elseif table.size(arr) == 6 then
        -- karmienie nienazwanego sokola miesem
        pokarm = arr[5].." "..arr[6]
        oswajanie.alias.insert_feeding_entry(arr[1].." "..arr[2].." "..arr[3].." "..arr[4], pokarm)
    else
        display("trigger do karmiania nic nie rozpoznal")
    end
    if selectString(pokarm, 1) > -1 then
        creplace(pokarm .. "("..oswajanie.core.get_symbol(pokarm)..")")
        resetFormat()
    end
    oswajanie.trigger.feed_alert(oswajanie.config.recovery_time*60)
    oswajanie.feeding_date = getEpoch()
    scripts.utils.bind_functional("ocen zwierze", false, false)
end

function zryby:init()
    scripts:print_log("Laduje plugin arkadia-oswajanie")

    disableTrigger("poziomy-zwierzat")

    for _,v in pairs(self.ryby_trigger) do
        killTrigger(v)
    end
    self.ryby_trigger = {}

    local shorty = {}
    for k,v in pairs(ryby) do
        if type(v.short) == "table" then
            for p,s in pairs(v.short) do
                if shorty[s] == nil then
                    shorty[s] = k
                else
                    shorty[s] = shorty[s] .. "|"..k
                end
            end
        else
            if shorty[v.short] == nil then
                shorty[v.short] = k
            else
                shorty[v.short] = shorty[v.short] .. "|"..k
            end
        end
    end
    for k,v in pairs(shorty) do
        local opisy = k .. "|" .. przymiotniki[k][1] .. "|" .. przymiotniki[k][2]
        if przymiotniki[k][3] then opisy = opisy .. "|" .. przymiotniki[k][3] end
        table.insert(self.ryby_trigger, tempRegexTrigger("[Ss]urow(?>a|e|ych) ("..opisy..") ryb(a|e|y|)", function() self:ryba(v) end))
    end

    if self.ogladasz_trigger then killTrigger(self.ogladasz_trigger) end
    self.ogladasz_trigger = tempRegexTrigger("^Ogladasz dokladnie (.*)\\.$", function() self:ogladasz() end)
    
    if self.oswajasz_trigger then killTrigger(self.oswajasz_trigger) end
    self.oswajasz_trigger = tempRegexTrigger("^Karmiac (.+?) (?>zachecasz|oswajasz) .*", function() self:oswajasz() end)
    
    local definitions ={
        ["ryby"] = { "surow(a|e|ych) (\\w+) ryb(|a|e|y)" },
        ["owoce"] = {},
        ["warzywa"] = {}
    }
    for k,v in pairs(warzywa) do if v.r then table.insert(definitions["warzywa"], v.r) end end
    for k,v in pairs(owoce) do if v.r then table.insert(definitions["owoce"], v.r) end end
    
    for k,v in pairs(definitions) do
        if scripts.inv.pretty_containers.group_definitions[k] ~= nil then
            scripts.inv.pretty_containers.group_definitions[k] = nil
        end        
        table.insert(scripts.inv.pretty_containers.group_definitions, {name = k, filter = scripts.inv.pretty_containers:create_regexp_filter(definitions[k]) })
    end
   
    scripts.plugins_update_check:github_check_version("arkadia-oswajanie", "axesider")
end

function zryby:brakujace_szczatki(animal)
    animal = animal or oswajanie.core.getlastanimal()
    cecho("Brakujace szczatki <yellow>" .. animal .. "<reset>:")
    zryby:brakujace(szczatki, animal)
end

function zryby:brakujace_owoce(animal)
    animal = animal or oswajanie.core.getlastanimal()
    cecho("Brakujace owoce <yellow>" .. animal .. "<reset>:")
    zryby:brakujace(owoce, animal)
end

function zryby:brakujace(tablica, animal)
    local q = "select distinct food from feeding where animal = '".. animal.."'"
    local r = db:fetch_sql(mydb_oswajanie.feeding, q)
    
    local missing = {}

    for k,v in pairs(tablica) do
        local found = false
        for key, val in pairs(r) do
            if v.narzednik == val["food"] then
                found = true
                break
            end
        end
        if found == false and (v.removed ~= true)   then
            table.insert(missing, v.narzednik)
        end
    end
    table.sort(missing, function(a, b) return a < b end)
    for i, food in pairs(missing) do
        cechoLink("<light_slate_blue> "..food, [[send("oswajaj zwierze ]] ..food.. [[")]], "oswajaj zwierze "..food, true)
    end
    echo("\n")
end

zryby:init()
