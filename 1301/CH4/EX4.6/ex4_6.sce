clc;
g=32     //gravitational constant in ft/sec square.
w=3200   //weight in lb
F=2000   //Maximum Force in lb
r=320    //radius in ft
m=w/g;   //calculating mass in slugs
v=sqrt((F*r)/m);  //calculating velocity in ft/sec
disp(v*0.682,"Velocity in min/hr = ");   //displaying velocity in min/hr.