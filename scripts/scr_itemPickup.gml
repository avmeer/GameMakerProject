for (i = 0; i < 4; i++){
    for (j = 0; j < 4; j++){
        if (global.inventory[i,j] == -1){ //empty
            global.inventory[i,j] = argument0;
            return(1);
        }
    }
}
return(0);
