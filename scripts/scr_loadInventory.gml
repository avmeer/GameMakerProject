for (i = 0; i < 4; i++){
    for (j = 0; j < 4; j++){    
        if(global.savedInventory[i,j] != -1){
            tempObj = instance_create(global.savedInventory[i,j].x, global.savedInventory[i,j].y, global.savedInventory[i,j]);
            tempObj.damage = global.savedInventory[i,j].damage;
            with(global.savedInventory[i,j]){
                instance_destroy();
            }
            global.inventory[i,j] = tempObj;
        }
    }   
}
