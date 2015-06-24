clc;
gp=200;      //gauge pressure in lb/in square
atmp=15;     //atmospheric pressure in lb/in square
p1=gp+atmp;   //pressure in lb/in square
v1=3;         //volume in ft cube
p2=15;         //pressure at sea-level in lb/in square
v2=(p1*v1)/p2;   //calculating pressure in ft cube using Boyle's law  ie. p1*v1=p2*v2 at constant temperature
disp(v2,"Volume occupied in ft cube = ");     //displaying result.