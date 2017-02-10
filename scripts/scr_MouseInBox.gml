//params (x,y,dimension)

inX = false;
inY = false;

xx = argument0;
yy = argument1;
dimension = argument2;

if(abs(mouse_x - xx < dimension / 2)){
    inX = true;
}

if(abs(mouse_y - yy < dimension / 2)){
    inY = true;
}

return inX * inY;
