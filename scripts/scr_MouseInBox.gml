//params (x,y,dimension)
//Script used to check if mouse cursor is within a box (x and y are the center of box and dimension is width/height, square is assumed)

inX = false;
inY = false;

xx = argument0;
yy = argument1;
dimension = argument2;

if(abs(mouse_x - xx) < dimension / 2){
    inX = true;
}

if(abs(mouse_y - yy) < dimension / 2){
    inY = true;
}

return inX && inY;
