clc;
w=3;   //weight in lb
v=15;  //velocity in ft/sec
g=32;  //g in ft/sec square
s=(1/24); //s in ft
F=(w*v*v)/(2*g*s);  //calculating force exerted in lb
disp(F,"Force exerted in lb = "); //displaying result