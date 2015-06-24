clc;
pa=14.7;   //atm pressure in lb/in square
dg=62;   //density in lb/ft cube
h=6/144;   //in ft cube/in square
p=pa+(dg*h);       //calculating pressure
disp(p,"Pressure in lb/in square = ");     //displaying result