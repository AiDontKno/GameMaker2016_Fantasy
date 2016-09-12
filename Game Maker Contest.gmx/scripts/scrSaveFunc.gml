//
if (file_exists("Save.sa")) file_delete("Save.sa");
ini_open("Save.sa");
ini_write_real("GameData","Room",asset_get_index(room_get_name(room)));
    //ini_write_real("GameData","PlayerPosx",objPlayerRPG.x);
    //ini_write_real("GameData","PlayerPosy",objPlayerRPG.y);
//ini_write_string("Section","Name",global.Variable);




ini_close();
