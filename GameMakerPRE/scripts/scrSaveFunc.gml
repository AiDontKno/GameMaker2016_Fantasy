//
if (file_exists("Save.sa")) file_delete("Save.sa");
ini_open("Save.sa");
ini_write_real("GameData","Room",asset_get_index(room_get_name(room)));
    ini_write_real("GameData","PlayerPosx",objPlayer.x);
    ini_write_real("GameData","PlayerPosy",objPlayer.y);
    ini_write_string("GameData","PlayerClass",objPlayer.class);
    ini_write_real("GameData","Playerlevel",objPlayer.level);
    ini_write_real("GameData","Playerxp",objPlayer.xp);
    ini_write_real("GameData","Playerlevel",objPlayer.level);
    ini_write_real("GameData","Playerxp",objPlayer.xp);
    ini_write_real("GameData","TA1level",objTavernAlly1.level);
    ini_write_real("GameData","TA1xp",objTavernAlly1.xp);
    ini_write_real("GameData","TA2level",objTavernAlly2.level);
    ini_write_real("GameData","TA2xp",objTavernAlly2.xp);
    ini_write_real("GameData","TA3level",objTavernAlly3.level);
    ini_write_real("GameData","TA3xp",objTavernAlly3.xp);
    ini_write_real("GameData","TA4level",objTavernAlly4.level);
    ini_write_real("GameData","TA4xp",objTavernAlly4.xp);
    ini_write_real("GameData","TA5level",objTavernAlly5.level);
    ini_write_real("GameData","TA5xp",objTavernAlly5.xp);
    ini_write_string("GameData","A1Class",objAlly1.class);
    ini_write_real("GameData","A1level",objAlly1.level);
    ini_write_real("GameData","A1xp",objAlly1.xp);
    ini_write_string("GameData","A2Class",objAlly2.class);
    ini_write_real("GameData","A2level",objAlly2.level);
    ini_write_real("GameData","A2xp",objAlly2.xp);

ini_close();