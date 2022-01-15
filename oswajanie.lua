oswajanie = {
  alias = {},
  trigger = {},
  core = {},
  config = {},
  feeding_date = 0,
  timer = nil,
  version = "0.62"
}

oswajanie.config.recovery_time = 20 -- in min
oswajanie.config.feeding_time = 120 -- in hours

local warzywa = {
    ["glowka kapusty"] = {narzednik = "glowka"},
    ["pomidor"] = {narzednik = "pomidorem"},
    ["ziemniak"] = {narzednik = "ziemniakiem"},
    --[""] = {narzednik = ""},   
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
    ["agrest"] = {narzednik = "agrestem"},
    ["cytryna"] = {narzednik = "cytryna"},
    ["czeresnia"] = {narzednik = "czeresnia"},
    ["daktyl"] = {narzednik = "daktylem"},
    ["figa"] = {narzednik = "figa"},
    ["gruszka"] = {narzednik = "gruszka"},
    ["jablko"] = {narzednik = "jablkiem"},
    ["jagoda"] = {narzednik = "jagoda"},
    ["kisc"] = {narzednik = "kiscia"},   
    ["malina"] = {narzednik = "malina"},
    ["mandarynka"] = {narzednik = "mandarynka"},
    ["mango"] = {narzednik = "mango"},
    ["melon"] = {narzednik = "melonem"},
    ["oliwka"] = {narzednik = "oliwka"},
    ["orzech"] = {narzednik = "orzechem"},
    ["owoc"] = {narzednik = "owocem"},
    ["papaja"] = {narzednik = "papaja"},
    ["pomarancz"] = {narzednik = "pomarancza"},
    ["sliwka"] = {narzednik = "sliwka"},
    ["truskawka"] = {narzednik = "truskawka"},
    ["wisnia"] = {narzednik = "wisnia"},
}
local przymiotniki = {
    ["barwna"]              = {"barwne","barwnych"},
    ["blekitnawa"]          = {"blekitnawe","blekitnawa"},
    ["blekitnawozielona"]   = {"blekitnawozielone","blekitnawozielona"},
    ["brazowa"]             = {"brazowe","brazowa"},
    ["brazowawa"]           = {"brazowawe","brazowawa"},
    ["brazowoczerwona"]     = {"brazowoczerwone","brazowoczerwona"},
    ["brazowoszara"]        = {"brazowoszare","brazowoszara"},
    ["brazowozielona"]      = {"brazowozielone","brazowozielona"},
    ["ciemnobrazowa"]       = {"ciemnobrazowe","ciemnobrazowa"},
    ["ciemnoczerwona"]      = {"ciemnoczerwone","ciemnoczerwona"},
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
    ["jasnopomaranczowa"]   = {"jasnopomaranczowe","jasnopomaranczowa"},
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
    ["stalowoblekitna"]     = {"stalowoblekitne","stalowoblekitna"},
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
    ["zielonkawobrazowa"]   = {"zielonkawobrazowe","zielonkawobrazowa"},
    ["zielonkawoszara"]     = {"zielonkawoszare","zielonkawoszara"},
    ["zielonobrunatna"]     = {"zielonobrunatne","zielonobrunatna"},
    ["zielononiebieska"]    = {"zielononiebieskie","zielononiebieska"},
    ["zlocistobrazowa"]     = {"zlocistobrazowe","zlocistobrazowa"},
    ["zoltawa"]             = {"zoltawe","zoltawa"},
    ["zoltobrazowa"]        = {"zoltobrazowe","zoltobrazowa"},
    ["nieznany"] = {"nieznane","nieznana"}
}
local ryby = {
    ["amarel"]      = {narzednik = "amarelem",      short = "zlocistobrazowa", },
    ["amur"]        = {narzednik = "amurem",        short = "ciemnozielona", },
    ["antias"]      = {narzednik = "antiasem",      short = "czerwonawa", },
    ["apogon"]      = {narzednik = "apogonem",      short = "jasnopomaranczowa", opis= "Ryba ta posiada krepe, wygrzbiecone cialo z duza, masywna glowa i ogromnymi oczami. Ubarwiona jest na jasnopomaranczowy kolor, przechodzacy miejscami w krwista czerwien, a na tulowiu znajduje sie kilka niewielkich, czarnych punktow."},
    ["ateryna"]     = {narzednik = "ateryna",       short = "zielonkawa", },
    ["barrakuda"]   = {narzednik = "barrakuda",     short = "zielonkawobrazowa", },
    ["barwena"]     = {narzednik = "barwena",       short = "brazowoczerwona", },
    ["belona"]      = {narzednik = "belona",        short = "ciemnoniebieska", },
    ["beryks"]      = {narzednik = "beryksem",      short = "ciemnoczerwona", },
    ["bielmik"]     = {narzednik = "bielmikiem",    short = "jasnomiedziana", },
    ["bolen"]       = {narzednik = "bolenem",       short = "blekitnawa", },
    ["brama"]       = {narzednik = "brama",         short = "zielonkawobrazowa", },
    ["bulawik"]     = {narzednik = "bulawikiem",    short = "czarna", },
    ["certa"]       = {narzednik = "certa",         short = "srebrzysta", },
    ["chelon"]      = {narzednik = "chelonem",      short = "zielonkawoszara", },
    ["chromis"]     = {narzednik = "chromisem",     short = "brazowa", },
    ["czarniak"]    = {narzednik = "czarniakem",    short = "mosieznozlota", },
    ["dorada"]      = {narzednik = "dorada",        short = "metaliczna", },
    ["dorsz"]       = {narzednik = "dorszem",       short = "jasnoszara", },
    ["drum"]        = {narzednik = "drumem",        short = "pasiasta", },
    ["dubiel"]      = {narzednik = "dubielem",      short = "srebrzystoszara", },
    ["glowacica"]   = {narzednik = "glowacica",     short = "zielonkawoszara", },
    ["glowacz"]     = {narzednik = "glowaczem",     short = "szara", },
    ["granik"]      = {narzednik = "granikiem",     short = "plamiasta", },
    ["gromadnik"]   = {narzednik = "gromadnikiem",  short = "czarnoniebieska", },
    ["iglik"]       = {narzednik = "iglikiem",      short = "brazowawa", },
    ["jaskron"]     = {narzednik = "jaskronem",     short = "czerwonobrazowa", opis = "Ryba ma podluzne, owalne cialo o malej glowie i krotkim pysku. Jej grzbiet jest czerwonobrazowy, boki zoltobrazowe zas strona brzuszna srebrzyscie lsniaca."},
    ["jazgarz"]     = {narzednik = "jazgarzem",     short = "oliwkowozielona", },
    ["jelec"]       = {narzednik = "jelcem",        short = "stalowoszara", },
    ["jesiotr"]     = {narzednik = "jesiotrem",     short = "brazowoszara", },
    ["kabryl"]      = {narzednik = "kabrylem",      short = "purpurowa", },
    ["kantar"]      = {narzednik = "kantarem",      short = "okraglawa", opis = "Ryba ma wygrzbiecone, bocznie splaszczone cialo. Ubarwiona jest na ciemnoniebieski, wpadajacy prawie w czern kolor, a na jej bokach widnieje po siedem jasniejszych opasek."},
    ["kaprosz"]     = {narzednik = "kaproszem",     short = "czerwonobrazowa", },
    ["karas"]       = {narzednik = "karasiem",      short = "brazowawa", },
    ["karp"]        = {narzednik = "karpiem",       short = "szarobrazowa", },
    ["karpienczyk"] = {narzednik = "karpienczykiem",short = "czerwonozlota", },
    ["kielb"]       = {narzednik = "kielbem",       short = "niebieskawobrazowa", },
    ["kielec"]      = {narzednik = "kielecem",       short = "srebrzysta", opis = "Cialo ryby jest owalne, bocznie splaszczone o duzej i masywnej glowie. Grzbiet ma ubarwiony srebrzyscie, na bokach widnieje piec niewyraznych, ciemnych poprzecznych preg. Strona brzuszna srebrzyscie lsniaca."},
    ["kolen"]       = {narzednik = "kolenem",       short = "zoltawa", },
    ["konger"]      = {narzednik = "kongerem",      short = "wezowata", },
    ["koryfena"]    = {narzednik = "koryfena",      short = "blekitnawozielona", },
    ["kosogon"]     = {narzednik = "kosogonem",     short = "niebieskoszara", },
    ["kulbin"]      = {narzednik = "kulbinem",      short = "srebrzystoszara", },
    ["labraks"]     = {narzednik = "labraksem",     short = "srebrzysta", },
    ["lamna"]       = {narzednik = "lamna",         short = "ciemnoszara", },
    ["leszcz"]      = {narzednik = "leszczem",      short = "srebrnobrunatna",  },
    ["lin"]         = {narzednik = "linem",         short = "zielonobrunatna", },
    ["lipien"]      = {narzednik = "lipieniem",     short = "srebrzystobiala", },
    ["losos"]       = {narzednik = "lososiem",      short = "oliwkowosrebrzysta", opis = "Nachodzace na siebie, okraglawe luski tej ryby posiadaja odcien oliwkowosrebrzysty, zas pomiedzy pletwami grzbietowa i brzuszna oraz ogonowa dostrzegasz pojedyncza, nieparzysta."},
    ["makrela"]     = {narzednik = "makrela",       short = "plaska", },
    ["makrelosz"]   = {narzednik = "makreloszem",   short = {"zielonkawobrazowa", "oliwkowosrebrzysta"}, },
    ["mauryk"]      = {narzednik = "maurykiem",     short = "prazkowana", },
    ["mietus"]      = {narzednik = "mietusem",      short = "brazowawa", },
    ["morlesz"]     = {narzednik = "morleszem",     short = "rozowawa", },
    ["mostelka"]    = {narzednik = "mostelka",      short = "czerwonobrazowa", },
    ["murena"]      = {narzednik = "murena",        short = "zoltawa", opis = "Ryba ma silne, wezowate cialo a jej pletwa grzebietowa, ogonowa i odbytowa sa razem zrosniete tworzac rodzaj falbany. Ubarwiona jest na zoltawy, marmurkowany kolor. Wzor ten z przodu jest nieregularny, ku tylowi coraz bardziej uporzadkowany, lecz rownoczesnie coraz rzadszy. Otwor skrzelowy otoczony czarna plama."},
    ["nawaga"]      = {narzednik = "nawaga",        short = "plamiasta", opis = "Ryba ma wydluzone cialo, zakonczone nieduza glowa z wysunieta dolna szczeka i wasikiem na podbrodku. Ubarwiona jest na szary kolor z ciemnymi plamami na grzbiecie, natomiast glowa jest biala, srebrzyscie lsniaca."},
    ["oblada"]      = {narzednik = "oblada",        short = "szarosrebrzysta", },
    ["ogak"]        = {narzednik = "ogakiem",       short = "marmurkowana", },
    ["okon"]        = {narzednik = "okoniem",       short = "pregowana", },
    ["ostrobok"]    = {narzednik = "ostrobokiem",   short = "zielononiebieska", },
    ["ostrosz"]     = {narzednik = "ostroszem",     short = "zoltobrazowa", },
    ["pagrus"]      = {narzednik = "pagrusem",      short = "szarosrebrzysta", opis = "Cialo ryby jest owalne, bocznie splaszczone i pokryte duzymi luskami. Ubarwiona jest na szarosrebrzysty kolor, pletwy zas maja rdzawy odcien."},
    ["pilczyk"]     = {narzednik = "pilczykiem",    short = "zoltobrazowa", },
    ["piotrosz"]    = {narzednik = "piotroszem",    short = "zoltawa", },
    ["piskorz"]     = {narzednik = "piskorzem",     short = "ciemnobrazowa", },
    ["plotka"]      = {narzednik = "plotka",        short = "niebieskozielona", },
    ["pstrag"]      = {narzednik = "pstragiem",     short = "nakrapiana", },
    ["rdzawiec"]    = {narzednik = "rdzawiecem",    short = "brazowawa", },
    ["sajka"]       = {narzednik = "sajka",         short = "brazowa", },
    ["salpa"]       = {narzednik = "salpa",         short = "srebrzysta", opis = "Ryba ma owalne, bocznie sciesnione cialo, pokryte niewielkimi luskami. Jej ubarwienie jest szarosrebrzyste z dziesiecioma zlocistymi, dlugimi paskami wzdluz bokow."},
    ["sandacz"]     = {narzednik = "sandaczem",     short = "ciemnozielona", opis = "Ryba ta ma mocno wydluzone cialo o spiczasnym pysku z szerokim, koncowym otworem gebowym. W szczekach procz drobnych zebow posiada rowniez duze, chwytne kly. Jej grzbiet pokryty jest ciemnozielonymi, momentami przechodzacymi w szare, drobnymi luskami, boki ma nieco jasniejsze a brzuch bialawy. Dwie oddzielone od siebie, zblizonej dlugosci pletwy grzbietowe oraz pletwa ogonowa naznaczone sa rzedami ciemnych punktow."},
    ["sardynka"]    = {narzednik = "sardynka",      short = "srebrnoluska", },
    ["seriola"]     = {narzednik = "seriola",       short = "niebieskosrebrzysta", },
    ["sieja"]       = {narzednik = "sieja",         short = "srebrzysta", },
    ["sierpnik"]    = {narzednik = "sierpnikiem",   short = "niebieskawa", },
    ["skalnik"]     = {narzednik = "skalnikiem",    short = "czerwonawa", },
    ["sledz"]       = {narzednik = "sledziem",      short = "srebrzystozielona", },
    ["sola"]        = {narzednik = "sola",          short = "wylupiastooka", },
    ["strojnik"]    = {narzednik = "strojnikem",    short = "fioletowoniebieska", opis = "Ryba ta ma wysokie, bocznie splaszczone cialo z malymi luskami. Jej grzbiet ma fioletowe zabarwienie, boki sa niebieskawe. Strona brzuszna rozowa."},
    ["strzepiel"]   = {narzednik = "strzepielem",   short = "wzorzysta", },
    ["sum"]         = {narzednik = "sumem",         short = "wasata", },
    ["szczupak"]    = {narzednik = "szczupakiem",   short = "ciemnozielona", },
    ["szprot"]      = {narzednik = "szprotem",      short = "niebieskawa", },
    ["tasergal"]    = {narzednik = "tasergalem",    short = "nieznany", },
    ["tolpyga"]     = {narzednik = "tolpyga",       short = "olowianoszara", },
    ["topornik"]    = {narzednik = "topornikem",    short = "czarna", },
    ["tunczyk"]     = {narzednik = "tunczykiem",    short = "stalowoblekitna", },
    ["ukleja"]      = {narzednik = "ukleja",        short = {"szarozielona", "szarosrebrzysta"}, },
    ["wegorz"]      = {narzednik = "wegorzem",      short = "wezowata", },
    ["wezyna"]      = {narzednik = "wezyna",        short = "zoltobrazowa", },
    ["widlak"]      = {narzednik = "widlakiem",     short = "barwna", },
    ["wzdrega"]     = {narzednik = "wzdrega",       short = "brazowozielona", },
}

mydb_oswajanie = db:create("feeding", {
    feeding = {
      animal = "",
      animal_type = "",
      active = 1,
      food = "",
      food_type = "",
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
  if( r == nil or table.size(r) == 0 ) then
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

function oswajanie.core.ccstr(color, str, fill_char, to_len)
  str = " "..str.." "
  local l = to_len - string.len(str)
  local l_l = math.floor(l / 2)
  local l_r = l - l_l
  local s = "<grey>"..string.rep(fill_char, l_l)..color..str.."<grey>"..string.rep(fill_char, l_r)
  return s
end

function oswajanie.core.print_line(color, col1, col1_len, col2, col2_len, col3, col3_len, col4, col4_len, col5, col5_len)
  cecho("\n"..oswajanie.core.lcstr(color, col1, " ", col1_len))
  cecho("<grey>|"..oswajanie.core.lcstr(color, col2, " ", col2_len))
  cecho("<grey>|"..oswajanie.core.lcstr(color, col3, " ", col3_len))
  cecho("<grey>|"..oswajanie.core.lcstr(color, col4, " ", col4_len))
  cecho("<grey>|")
  if( string.len(col5) > 0 ) then
    local text = col5
    local czym = col5
    local symbol = (text=="pokarmem" and "" ) or "?"
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
            symbol = "🐟"
            break
        end
    end
    for k,v in pairs(owoce) do
        if v.narzednik == text then
            symbol = "🍎"
            break
        end
    end
    
    for k,v in pairs(warzywa) do
        if v.narzednik == text then
            symbol = "🥔"
            break
        end
    end
    for k,v in pairs(szczatki) do
        if v.narzednik == text then
            symbol = "☣"
            break
        end
    end
     
    local prefix = "miesem"
    if text:find(prefix, 1, #prefix) then
        symbol = "🥩"
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
    local col4_len = string.len("calkowicie oddane") + 2
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
                local cl = "<green>"
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
                        cl = (n < shortest - s and "<yellow>") or (n < 60*60*24 and "<orange>") or "<red>"
                    else
                        cl ="<yellow>"
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
  local prev_level = "plochliwe"
  local next_feeding_time = 0
  local next_level_time = 0
  local prev_level_time = 0

  local q_prev_level = "select level,strftime('%s',changed) as datetime from animals where strftime('%s',changed) < '"..time.."'  and animal = '"..animal.."' order by changed desc limit 1"
  local r2 = db:fetch_sql(mydb_oswajanie.animals, q_prev_level)
  
  if( table.size(r2) > 0 ) then
    prev_level_time = tonumber(r2[1]['datetime'])
    prev_level = r2[1]['level']
  end
    
  local q_next_level = "select level,strftime('%s',changed) as datetime from animals where strftime('%s',changed) > '"..time.."' and animal = '"..animal.."' order by changed limit 1"
  local r1 = db:fetch_sql(mydb_oswajanie.animals, q_next_level)
  if( table.size(r1) > 0 ) then
    next_level_time = tonumber(r1[1]['datetime'])
    next_level = r1[1]['level']
  end
  
  local q_next_feeding_time = "select strftime('%s',changed) as count from feeding where strftime('%s',changed) > '"..time.."'  and animal = '"..animal.."' order by changed limit 1"
  local r3 = db:fetch_sql(mydb_oswajanie.feeding, q_next_feeding_time)
  
  if( table.size(r3) > 0 ) then
    next_feeding_time = r3[1]['count']
  end
  
  if ( next_feeding_time == 0 and string.len(next_level) > 0 ) then
    return next_level
  end
  
  if ( next_feeding_time == 0 and string.len(prev_level) > 0 ) then
    return prev_level
  end
  
  if ( next_level_time == 0 ) then
    return prev_level
  end
  
  if ( prev_level_time == 0 ) then
    return "plochliwe"
  end

  if ( next_level_time > next_feeding_time ) then
    return prev_level
  end
  
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

  local a = "nieaktywne"
  local command = nil
  local tip = ""
  
  for k, v in pairs(r) do
    if ( v["active"] == 1 ) then
      a = "aktywne"
      command = [[expandAlias("/o_wylacz ]].. v["animal"] .. [[")]]
      tip = "/o_wylacz ".. v["animal"]
    else
      a = "nieaktywne"
      command = [[expandAlias("/o_wlacz ]].. v["animal"] .. [[")]]
      tip = "/o_wlacz ".. v["animal"]    
    end
    cecho("\n  - <yellow>")
    cechoLink("<yellow>"..v["animal"], [[expandAlias("/o_pokaz ]].. v["animal"] .. [[")]], "/o_pokaz ".. v["animal"], true)
    cechoLink("<grey> (<red>"..a.."<grey>)", command, tip, true)
    cecho(" sprawdz czego nie jadl:")
    cechoLink("<light_slate_blue> szczatki", [[zryby:brakujace_szczatki("]] ..v["animal"].. [[")]], "pokaz szcztki", true)
    cechoLink("<light_slate_blue> owoce", [[zryby:brakujace_owoce("]] ..v["animal"].. [[")]], "pokaz szcztki", true)
  end
  cecho("\n\n")
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
    if ( t > max_food_len ) then
      max_food_len = t
    end
    local t2 = string.len(val["animal"])
    if ( t2 > max_animal_len ) then
      max_animal_len = t2
    end
    local t3 = string.len(oswajanie.core.getlevel_by_animal(val["animal"], val["animal_type"]))
    if ( t3 > max_level_len ) then
      max_level_len = t3
    end    
  end
  
  local col1_len = 5  --- trzycyfrowa liczba + brzegi
  local col2_len = max_animal_len + 2
  local col3_len = 21 --- 2021-09-26 10:14:12 + brzegi
  local col4_len = 0
  if( string.len("poziom oswojenia") > max_level_len ) then
    col4_len = string.len("poziom oswojenia") + 2
  else
    col4_len = max_level_len + 2
  end 
  local col5_len = 0
  if( string.len("pokarmem") > max_food_len ) then
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
    cecho("\n <green>Arkadia oswajanie, ver " .. string.sub(oswajanie.version .. "   ", 0, 5) .. "\n")
    cecho("\n")
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
    if( table.size(r) > 0 ) then
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
  if( string.len(animal) > 0 and string.len(new_name) > 0 ) then
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

function oswajanie.core.print_start_message()
    scripts:print_log("Uzywasz pluginu arkadia-oswajanie, ver. " .. oswajanie.version .. ". Pomoc dostepna w '/o_pomoc'")
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
    if table.size(r) > 0 and r[1]["count"] then
        local s = getEpoch() - r[1]["count"]
        local shortest_feeding_time_in_sec = oswajanie.config.feeding_time * 60 * 60 -- 432000 s
        if s > shortest_feeding_time_in_sec then
            return "<green>" .. ryba .. "<reset>"
        else
            return ryba
        end
    else
        return "<green>" .. ryba .. "<reset>"
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
    echo(opis)
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
    oswajanie.tmp_animal = matches[2]
    self:enableTrigger()
    tempTimer(1, function() self:disableTrigger() end)
end

function zryby:zwierzejest()
    local zwierzak = oswajanie.tmp_animal
    local level = matches[2]
    oswajanie.core.insert_animal_level(zwierzak, level)
    self:disableTrigger()
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
    
    if table.size(arr) == 2 then
        -- karmienie nazwanego zwierzaka jedzeniem lub ryba
        oswajanie.alias.insert_feeding_entry(arr[1], arr[2])
    elseif table.size(arr) == 3 then
        -- karmienie nazwanego zwierzaka miesem
        oswajanie.alias.insert_feeding_entry(arr[1], arr[2].." "..arr[3])
    elseif table.size(arr) == 4 then
        -- karmienie nienazwanego zwierzaka jedzeniem lub ryba
        oswajanie.alias.insert_feeding_entry(arr[1].." "..arr[2].." "..arr[3], arr[4])
    elseif table.size(arr) == 5 then
        -- karmienie nienazwanego zwierzaka miesem lub sokola jedzeniem/ryba
        if( arr[4] == 'miesem' ) then
            oswajanie.alias.insert_feeding_entry(arr[1].." "..arr[2].." "..arr[3], arr[4].." "..arr[5])
        else
            oswajanie.alias.insert_feeding_entry(arr[1].." "..arr[2].." "..arr[3].." "..arr[4], arr[5])
        end
    elseif table.size(arr) == 6 then
        -- karmienie nienazwanego sokola miesem
        oswajanie.alias.insert_feeding_entry(arr[1].." "..arr[2].." "..arr[3].." "..arr[4], arr[5].." "..arr[6])
    else
        display("trigger do karmiania nic nie rozpoznal")
    end
    oswajanie.trigger.feed_alert(oswajanie.config.recovery_time*60)
    oswajanie.feeding_date = getEpoch()
    scripts.utils.bind_functional("ocen zwierze", false, false)
end

function zryby:init()
    scripts:print_log("Laduje plugin arkadia-oswajanie")

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
        local opisy = k .. "|"..przymiotniki[k][1].."|"..przymiotniki[k][2]
        table.insert(self.ryby_trigger, tempRegexTrigger("[Ss]urow[ae] ("..opisy..") ryb[ey]", function() self:ryba(v) end))
    end

    if self.ogladasz_trigger then killTrigger(self.ogladasz_trigger) end
    self.ogladasz_trigger = tempRegexTrigger("^Ogladasz dokladnie (.*)\\.$", function() self:ogladasz() end)
    
    if self.oswajasz_trigger then killTrigger(self.oswajasz_trigger) end
    self.oswajasz_trigger = tempRegexTrigger("^Karmiac (.+) (?>zachecasz|oswajasz) .*", function() self:oswajasz() end)
    
    local dodaj_owoce = true
    local dodaj_ryby = true
    for k,v in pairs(scripts.inv.pretty_containers.group_definitions) do
            if v.name == "ryby"  then dodaj_ryby = false
        elseif v.name == "owoce" then dodaj_owoce = false end
    end
    if dodaj_ryby then
        local ryby = { "surow[ae] (\\w+) ryb[ey]" }
        table.insert(scripts.inv.pretty_containers.group_definitions, {name ="ryby", filter = scripts.inv.pretty_containers:create_regexp_filter(ryby) })
    end
    if dodaj_owoce then
        local owoce = { "agrest(|ow|y)","(?(?=zoltych)zoltych cytryn|cytryn(e|y))", "czeresni(|e)","daktyl","fig(|e|i)","grusz(ke|ki|ek)","jabl(ek|ko|ka)","malin(|e|y)","mandaryn(ek|ke|ki)","mango","melon(|y)","oliw(ek|ke|ki)","orzech(|y)","papaje","pomarancz(e|y)","sliw(ke|ek|ki)","winogron","wisni(|e)","truskaw(ek|ke|ki)"}
        table.insert(scripts.inv.pretty_containers.group_definitions, {name ="owoce", filter = scripts.inv.pretty_containers:create_regexp_filter(owoce) })
    end
    
    tempTimer(5, [[ oswajanie.core.print_start_message() ]])
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
    for k,v in pairs(tablica) do
        local found = false
        for key, val in pairs(r) do
            if v.narzednik == val["food"] then
                found = true
                break
            end
        end
        if found == false then
            cechoLink("<light_slate_blue> "..v.narzednik, [[send("oswajaj zwierze ]] ..v.narzednik.. [[")]], "oswajaj zwierze "..v.narzednik, true)
        end
    end
    echo("\n")
end

zryby:init()
