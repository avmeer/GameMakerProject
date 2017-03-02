arr = argument0;
grenId = argument1;

var i;
for(i = 0; i < array_length_1d(arr); i++) {
    if(arr[i] == grenId)
        return true;
}
return false;
