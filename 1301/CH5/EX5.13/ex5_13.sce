clc;
v=15;       //velocity in ft/sec
w=128;      //weight in lb
g=32;       //g in ft/sec square
m=w/g;      //calculating m in slugs
KE=(1/2)*(m*v*v);  //calculating KE in ft.lb
disp(KE,"Kinetic Energy in ft.lb = ");  //displaying result