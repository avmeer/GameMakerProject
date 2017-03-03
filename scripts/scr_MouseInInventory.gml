//params (x,y,dimension)
//Script used to check if mouse cursor is within a box
//(x and y are the center of box and dimension is width/height, square is assumed)

inX = false;
inY = false;

xx = argument0;
yy = argument1;
xDimension = argument2;
yDimension = argument3;

if(abs(mouse_x - xx) < xDimension){
    inX = true;
}

if(abs(mouse_y - yy) < yDimension){
    inY = true;
}

return inX && inY;
