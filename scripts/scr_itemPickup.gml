for (i = 0; i < 4; i++){
    for (j = 0; j < 4; j++){
        if (global.inventory[i,j] == -1){ //empty
            //move the object out of sight
            argument0.x = -10;
            argument0.y = -10;
            global.inventory[i,j] = argument0;
            return(1);
        }
    }
}
return(0);
