clc;
w=40000;    //weight in lb
t=3600;     //time in sec
g=32;       //gravitational constant in ft/sec square
v1=2500;    //initial velocity in m/sec
v2=400;     //final velocity in m/sec
W=(w/(2*g))*((v1*v1)-(v2*v2));  //calculating Work done in ft.lb using work done=difference in Kinetic Energy
p=W/(t*550);      //calculating Power using P=W/t since 1hp=550 ft.lb/sec;
disp(p,"Power Ouput in hp = ");      //displaying result