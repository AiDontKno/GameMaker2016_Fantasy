//
if (file_exists("Save.sa"))
{
    ini_open("Save.sa");
    
    
    
    
    //global.Variable = ini_read_string("Section","Name","Default");
    var RoomID = ini_read_real("GameData","Room", asset_get_index(room_get_name(room)));
        //var PlayerPosx = ini_read_real("GameData","PlayerPosx",objPlayerRPG.x);
        //var PlayerPosy = ini_read_real("GameData","PlayerPosy",objPlayerRPG.y);
    ini_read_real("GameData","PlayerPosx",objPlayer.x);//set defaults
    ini_read_real("GameData","PlayerPosy",objPlayer.y);
    ini_read_string("GameData","PlayerClass",objPlayer.class);
    ini_read_real("GameData","Playerlevel",objPlayer.level);
    ini_read_real("GameData","Playerxp",objPlayer.xp);
    ini_read_real("GameData","Playerlevel",objPlayer.level);
    ini_read_real("GameData","Playerxp",objPlayer.xp);
    ini_read_real("GameData","TA1level",objTavernAlly1.level);
    ini_read_real("GameData","TA1xp",objTavernAlly1.xp);
    ini_read_real("GameData","TA2level",objTavernAlly2.level);
    ini_read_real("GameData","TA2xp",objTavernAlly2.xp);
    ini_read_real("GameData","TA3level",objTavernAlly3.level);
    ini_read_real("GameData","TA3xp",objTavernAlly3.xp);
    ini_read_real("GameData","TA4level",objTavernAlly4.level);
    ini_read_real("GameData","TA4xp",objTavernAlly4.xp);
    ini_read_real("GameData","TA5level",objTavernAlly5.level);
    ini_read_real("GameData","TA5xp",objTavernAlly5.xp);
    ini_read_string("GameData","A1Class",objAlly1.class);
    ini_read_real("GameData","A1level",objAlly1.level);
    ini_read_real("GameData","A1xp",objAlly1.xp);
    ini_read_string("GameData","A2Class",objAlly2.class);
    ini_read_real("GameData","A2level",objAlly2.level);
    ini_read_real("GameData","A2xp",objAlly2.xp);

    ini_close();
    room_goto(RoomID)
    if asset_get_index(room_get_name(room)) = RoomID room_restart()
        //objPlayerRPG.x = PlayerPosx
        //objPlayerRPG.y = PlayerPosy
}else
{
    show_message("No save file was found!")
}
