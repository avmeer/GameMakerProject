//params (x,y,dimension)
//Script used to check if mouse cursor is within a box
//(x and y are the center of box and dimension is width/height, square is assumed)

inX = false;
inY = false;

xx = argument0;
yy = argument1;
dimension = argument2;

//made these global
//m_x = mouse_x - view_xview[0];
//m_y = mouse_y - view_yview[0]

if(abs(m_x - xx) < dimension / 2){
    inX = true;
}

if(abs(m_y - yy) < dimension / 2){
    inY = true;
}

return inX && inY;
