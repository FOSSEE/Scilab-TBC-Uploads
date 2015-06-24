clc;
dg=0.08;     //weight density of air in lb/ft cube
v=12*12*10;  //calculating volume using v=l*b*h in ft cube
w=dg*v; //calculating weight in lb using weight=weight density*volume
disp(w,"Weight of the air in lb = ");  //displaying result.