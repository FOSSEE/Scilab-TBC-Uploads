clc;
w=2500;        //weight in lb
v=40;          //velocity in mi/hr
g = 32.2;
m=w/g;         //calculating mass in slugs
v=40*1.47;     //converting velocity in ft/sec
KE=(1/2)*(m*v*v);  //calculating Kinetic energy in ft.lb
disp(KE,"Kinetic Energy in ft.lb = ");  //displaying result