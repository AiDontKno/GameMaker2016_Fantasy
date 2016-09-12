//
if (file_exists("Save.sa"))
{
    ini_open("Save.sa");
    
    
    
    
    //global.Variable = ini_read_string("Section","Name","Default");
    var RoomID = ini_read_real("GameData","Room", asset_get_index(room_get_name(room)));
        //var PlayerPosx = ini_read_real("GameData","PlayerPosx",objPlayerRPG.x);
        //var PlayerPosy = ini_read_real("GameData","PlayerPosy",objPlayerRPG.y);
    
    ini_close();
    room_goto(RoomID)
    if asset_get_index(room_get_name(room)) = RoomID room_restart()
        //objPlayerRPG.x = PlayerPosx
        //objPlayerRPG.y = PlayerPosy
}else
{
    show_message("No save file was found!")
}
