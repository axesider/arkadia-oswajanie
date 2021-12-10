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
local ryby = {
    ["amarel"] = {short = "zlocistobrazowa", narzednik = "amarelem"},
    ["amur"] = {short = "ciemnozielona", narzednik = "amurem"},
    ["antias"] = {short = "czerwonawa", narzednik = "antiasem"},
    ["apogon"] = {short = "jasnopomaranczowa", narzednik = "apogonem"},
    ["ateryna"] = {short = "zielonkawa", narzednik = "ateryna"},
    ["barrakuda"] = {short = "zielonkawobrazowa", narzednik = "barrakuda"},
    ["barwena"] = {short = "brazowoczerwona", narzednik = "barwena"},
    ["belona"] = {short = "ciemnoniebieska", narzednik = "belona"},
    ["beryks"] = {short = "ciemnoczerwona", narzednik = "beryksem"},
    ["bielmik"] = {short = "jasnomiedziana", narzednik = "bielmikiem"},
    ["bolen"] = {short = "blekitnawa", narzednik = "bolenem"},
    ["brama"] = {short = "zielonkawobrazowa", narzednik = "brama"},
    ["bulawik"] = {short = "czarna", narzednik = "bulawikiem"},
    ["certa"] = {short = "srebrzysta", narzednik = "certa"},
    ["chelon"] = {short = "zielonkawoszara", narzednik = "chelonem"},
    ["chromis"] = {short = "brazowa", narzednik = "chromisem"},
    ["czarniak"] = {short = "mosieznozlota", narzednik = "czarniakem"},
    ["dorada"] = {short = "metaliczna", narzednik = "dorada"},
    ["dorsz"] = {short = "jasnoszara", narzednik = "dorszem"},
    ["drum"] = {short = "pasiasta", narzednik = "drumem"},
    ["dubiel"] = {short = "srebrzystoszara", narzednik = "dubielem"},
    ["glowacica"] = {short = "zielonkawoszara", narzednik = "glowacica"},
    ["glowacz"] = {short = "szara", narzednik = "glowaczem"},
    ["granik"] = {short = "plamiasta", narzednik = "granikiem"},
    ["gromadnik"] = {short = "czarnoniebieska", narzednik = "gromadnikiem"},
    ["iglik"] = {short = "brazowawa", narzednik = "iglikiem"},
    ["jaskron"] = {short = "czerwonobrazowa", narzednik = "jaskronem"},
    ["jazgarz"] = {short = "oliwkowozielona", narzednik = "jazgarzem"},
    ["jelec"] = {short = "stalowoszara", narzednik = "jelcem"},
    ["jesiotr"] = {short = "brazowoszara", narzednik = "jesiotrem"},
    ["kabryl"] = {short = "purpurowa", narzednik = "kabrylem"},
    ["kantar"] = {short = "okraglawa", narzednik = "kantarem"},
    ["kaprosz"] = {short = "czerwonobrazowa", narzednik = "kaproszem"},
    ["karas"] = {short = "brazowawa", narzednik = "karasiem"},
    ["karp"] = {short = "szarobrazowa", narzednik = "karpiem"},
    ["karpienczyk"] = {short = "czerwonozlota", narzednik = "karpienczykiem"},
    ["kielb"] = {short = "niebieskawobrazowa", narzednik = "kielbem"},
    ["kielec"] = {short = "srebrzysta", narzednik = "kielcem"},
    ["kolen"] = {short = "zoltawa", narzednik = "kolenem"},
    ["konger"] = {short = "wezowata", narzednik = "kongerem"},
    ["koryfena"] = {short = "blekitnawozielona", narzednik = "koryfena"},
    ["kosogon"] = {short = "niebieskoszara", narzednik = "kosogonem"},
    ["kulbin"] = {short = "srebrzystoszara", narzednik = "kulbinem"},
    ["labraks"] = {short = "srebrzysta", narzednik = "labraksem"},
    ["lamna"] = {short = "ciemnoszara", narzednik = "lamna"},
    ["leszcz"] = {short = "srebrnobrunatna", narzednik = "leszczem" },
    ["lin"] = {short = "zielonnobrunatna", narzednik = "linem"},
    ["lipien"] = {short = "srebrzystobiala", narzednik = "lipieniem"},
    ["losos"] = {short = "oliwkowosrebrzysta", narzednik = "lososiem"},
    ["makrela"] = {short = "plaska", narzednik = "makrela"},
    ["makrelosz"] = {short = {"zielonkawobrazowa", "oliwkowosrebrzysta"}, narzednik = "makreloszem"},
    ["mauryk"] = {short = "prazkowana", narzednik = "maurykiem"},
    ["mietus"] = {short = "brazowawa", narzednik = "mietusem"},
    ["morlesz"] = {short = "rozowawa", narzednik = "morleszem"},
    ["mostelka"] = {short = "czerwonobrazowa", narzednik = "mostelka"},
    ["murena"] = {short = "zoltawa", narzednik = "murena"},
    ["nawaga"] = {short = "plamiasta", narzednik = "nawaga"},
    ["oblada"] = {short = "szarosrebrzysta", narzednik = "oblada"},
    ["ogak"] = {short = "marmurkowana", narzednik = "ogakiem"},
    ["okon"] = {short = "pregowana", narzednik = "okoniem"},
    ["ostrobok"] = {short = "zielononiebieska", narzednik = "ostrobokiem"},
    ["ostrosz"] = {short = "zoltobrazowa", narzednik = "ostroszem"},
    ["pagrus"] = {short = "szarosrebrzysta", narzednik = "pagrusem"},
    ["pilczyk"] = {short = "zoltobrazowa", narzednik = "pilczykiem"},
    ["piotrosz"] = {short = "zoltawa", narzednik = "piotroszem"},
    ["piskorz"] = {short = "ciemnobrazowa", narzednik = "piskorzem"},
    ["plotka"] = {short = "niebieskozielona", narzednik = "plotka"},
    ["pstrag"] = {short = "nakrapiana", narzednik = "pstragiem"},
    ["rdzawiec"] = {short = "brazowawa", narzednik = "rdzawiecem"},
    ["sajka"] = {short = "brazowa", narzednik = "sajka"},
    ["salpa"] = {short = "srebrzysta", narzednik = "salpa"},
    ["sandacz"] = {short = "ciemnozielona", narzednik = "sandaczem"},
    ["sardynka"] = {short = "srebrnoluska", narzednik = "sardynka"},
    ["seriola"] = {short = "niebieskosrebrzysta", narzednik = "seriola"},
    ["sieja"] = {short = "srebrzysta", narzednik = "sieja"},
    ["sierpnik"] = {short = "niebieskawa", narzednik = "sierpnikiem"},
    ["skalnik"] = {short = "czerwonawa", narzednik = "skalnikiem"},
    ["sledz"] = {short = "srebrzystozielona", narzednik = "sledziem"},
    ["sola"] = {short = "wylupiastooka", narzednik = "sola"},
    ["strojnik"] = {short = "fioletowoniebieska", narzednik = "strojnikem"},
    ["strzepiel"] = {short = "wzorzysta", narzednik = "strzepielem"},
    ["sum"] = {short = "wasata", narzednik = "sumem"},
    ["szczupak"] = {short = "ciemnozielona", narzednik = "szczupakiem"},
    ["szprot"] = {short = "niebieskawa", narzednik = "szprotem"},
    ["tolpyga"] = {short = "olowianoszara", narzednik = "tolpyga"},
    ["topornik"] = {short = "czarna", narzednik = "topornikem"},
    ["tunczyk"] = {short = "stalowoblekitna", narzednik = "tunczykiem"},
    ["ukleja"] = {short = {"szarozielona", "szarosrebrzysta"}, narzednik = "ukleja"},
    ["wegorz"] = {short = "wezowata", narzednik = "wegorzem"},
    ["wezyna"] = {short = "zoltobrazowa", narzednik = "wezyna"},
    ["widlak"] = {short = "barwna", narzednik = "widlakiem"},
    ["wzdrega"] = {short = "brazowozielona", narzednik = "wzdrega"},
    ["?2"] = {short = "zielonobrunatna", narzednik = ""},
}

function oswajanie.db.load()
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
end

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

function oswajanie.trigger.animal_desc(str)
  local size = table.size(oswajanie.tmp.animal)
  if ( str ~= nil ) then
    if ( size < 2 ) then
      size = size + 1
      table.insert(oswajanie.tmp.animal, size, str)
    end
    if ( size == 2 ) then
      local level = string.match(oswajanie.tmp.animal[2], "Sadzac po zachowaniu zwierze jest (.+)%.") or string.match(oswajanie.tmp.animal[1], "Sadzac po zachowaniu zwierze jest (.+)%.")
      local zwierzak = string.match(oswajanie.tmp.animal[1], "Ogladasz dokladnie (.+)%.") or string.match(oswajanie.tmp.animal[2], "Ogladasz dokladnie (.+)%.")
      oswajanie.tmp.animal = {}
      if level == nil then
        display(oswajanie.tmp.animal)
        return
      end
      if zwierzak == nil then
        display(oswajanie.tmp.animal)
        return
      end
      oswajanie.core.insert_animal_level(zwierzak, level)
    end
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
                text = text .. " [".. opis .. "]"
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

function oswajanie.alias.print_table_by_animal(animal)
  local q = "select f.food, strftime('%Y-%m-%d %H:%M',f.changed, 'localtime') as datetime, strftime('%s',f.changed) as count from feeding as f where f.animal = '"..animal.."' order by count desc"
  local r = db:fetch_sql(mydb_oswajanie.feeding, q)

  local max_food_len = 0
  for key, val in pairs(r) do
    local t = string.len(val["food"])
    if ( t > max_food_len ) then
      max_food_len = t
    end
  end
  
  local col1_len = 5  --- trzycyfrowa liczba + brzegi
  local col2_len = 18 --- 2021-09-26 10:14 + brzegi
  local col3_len = 18 --- 2021-09-26 10:14 + brzegi
  local col4_len = string.len("calkowicie oddane") + 2
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
  cecho(oswajanie.core.ccstr("<green>", "Oswajane zwierze", "-", sum_line_len))
  cecho("\n  <white>"..animal.."<grey>")
  cecho("\n"..string.rep("-",sum_line_len))
  oswajanie.core.print_line("<light_slate_blue>", "ile", col1_len, "ostatnio", col2_len, "nastepne", col3_len, "poziom oswojenia", col4_len, "pokarmem", col5_len)

  --- content  
  local tmp, a = {}
  local s,n,nt
  local shortest_feeding_time_in_sec = oswajanie.config.feeding_time * 60 * 60 -- 432000 s
  
  for k, v in pairs(r) do
    if ( tmp[v['food']] == nil ) then
      tmp[v['food']] = 1
      a = oswajanie.core.getfoods_by_animal(animal, v['food'])
      cecho("\n"..string.rep("-",sum_line_len))
      for k1, v1 in pairs(a) do
        if ( k1 == 1 ) then
          s = getEpoch() - v1["count"]
          n = shortest_feeding_time_in_sec - s
          if ( s <= shortest_feeding_time_in_sec ) then
            nt = os.date('%Y-%m-%d %H:%M', getEpoch()+n)
            oswajanie.core.print_line("<red>", table.size(a), col1_len, v1["datetime"], col2_len, nt, col3_len, oswajanie.core.getlevel_by_animal(animal, v1["count"]), col4_len, v1["food"], col5_len)
          else
            oswajanie.core.print_line("<yellow>", table.size(a), col1_len, v1["datetime"], col2_len, "odrazu", col3_len, oswajanie.core.getlevel_by_animal(animal, v1["count"]), col4_len, v1["food"], col5_len)
          end
        else
          oswajanie.core.print_line("<green>", "", col1_len, v1["datetime"], col2_len, "", col3_len, oswajanie.core.getlevel_by_animal(animal, v1["count"]), col4_len, "", col5_len)
        end
      end
    end
  end
 cecho("\n"..string.rep("-",sum_line_len))
 cecho("\n")
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
      cechoLink("\n <light_slate_blue>/o_pokaz "..r[1]['animal'], [[expandAlias("/o_pokaz ]]..r[1]['animal']..[[")]], "/o_pokaz "..r[1]['animal'], true)
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
    cecho("           wczeniejsze wpisy aby zsynchronisowac historie.\n")
    cecho(" ")
    
    cecho("\n <yellow>Aliasy administracyjne:<grey>\n\n")
    cecho(" <light_slate_blue>/lpo<grey> - recznie ladowanie pluginu 'arkadia-oswajanie'.\n")
    cecho("\n")
end

function oswajanie.alias.disable(animal)
  local q = "select animal from feeding where animal = '"..animal.."' group by animal"
  local r = db:fetch_sql(mydb_oswajanie.feeding, q)
  if ( table.size(r) > 0 ) then
    local query = "update feeding set active = 0 where animal = '"..animal.."'"
    cecho("\n <green>Deaktywuje " .. animal.." w bazie.\n\n")
    db:fetch_sql(mydb_oswajanie.feeding, query)
  end
end

function oswajanie.alias.rename(animal, new_name)
  if( string.len(animal) > 0 and string.len(new_name) > 0 ) then
    local q = "select _row_id from feeding where animal = '"..animal.."'"
    local r = db:fetch_sql(mydb_oswajanie.feeding, q)
    if ( table.size(r) > 0 ) then
      local a1 = db:fetch(mydb_oswajanie.feeding, db:eq(mydb_oswajanie.feeding.animal, animal))
      for k, v in pairs(a1) do
        a1[k]["animal"] = new_name
        db:update(mydb_oswajanie.feeding, a1[k])
      end
    end
    local q1 = "select animal from animals where animal = '"..animal.."'"
    local r1 = db:fetch_sql(mydb_oswajanie.animals, q1)
    if ( table.size(r1) > 0 ) then
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


function oswajanie.alias.enable(animal)
  local q = "select animal from feeding where animal = '"..animal.."' group by animal"
  local r = db:fetch_sql(mydb_oswajanie.feeding, q)
  if ( table.size(r) > 0 ) then
    local query = "update feeding set active = 1 where animal = '"..animal.."'"
    cecho("\n <green>Aktywuje " .. animal.." w bazie.\n\n")
    db:fetch_sql(mydb_oswajanie.feeding, query)
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

function oswajanie.trigger.feed_alert()
  if ( oswajanie.config.recovery_time > 0 ) then
    tempTimer(oswajanie.config.recovery_time*60, function() 
      scripts.ui.notification_center:add_notification("Mozesz oswajac zwierze.")
      scripts.ui:info_action_update("Oswajanie")
    end)
  end
end

zryby = zryby or {
    ryby_trigger = {}
}

function zryby:ryba(nazwa)
    local opis = matches[2]
    local ryba = " (" .. nazwa..")"
    
    selectString(matches[1], 1)
    replace(matches[1] .. ryba, true)
    resetFormat()
end

function zryby:init()
    for _,v in pairs(self.ryby_trigger) do
        killTrigger(v)
    end

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
        table.insert(self.ryby_trigger, tempRegexTrigger("[Ss]urowa ("..k..") rybe", function() self:ryba(v) end))
    end

end

zryby:init()