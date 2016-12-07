if b != "null"{

if b = 1 class = "fighter"
if b = 2 class = "mage"
if b = 3 class = "bard"
if b = 4 class = "archer"
if b = 5 class = "rogue"

var a = irandom_range(1,3) 

if class = "fighter"{
    if a = 1 weapon = "sword"
    if a = 2 weapon = "axe"
    if a = 3 weapon = "javalin"
    hp += 2
    mp += 0
    str += 2
    int += 0
    acc += -2
    dex += -2
    
    }

if class = "mage"{
    if a = 1 weapon = "staff"
    if a = 2 weapon = "wand"
    if a = 3 weapon = "tomb"
    hp += -2
    mp += 2
    str += -2
    int += 0
    acc += 0
    dex += 2
    }

if class = "bard"{
    if a = 1 weapon = "harp"
    if a = 2 weapon = "flute"
    if a = 3 weapon = "ukelele"
    hp += -2
    mp += 2
    str += 0
    int += 2
    acc += 0
    dex += -2
    }

if class = "archer"{
    if a = 1 weapon = "longbow"
    if a = 2 weapon = "shortbow"
    if a = 3 weapon = "crossbow"
    hp += 0
    mp += 0
    str += 2
    int += -2
    acc += 2
    dex += -2
    }

if class = "rogue"{
    if a = 1 weapon = "daggers"
    if a = 2 weapon = "bostaff"
    if a = 3 weapon = "nunchucks"
    hp += -2
    mp += 0
    str += -2
    int += 0
    acc += 2
    dex += 2
    }
}
