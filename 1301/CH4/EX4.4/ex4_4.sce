clc;
g=32       //gravitational constant in ft/sec square.
w=160        //weight in lb
r=20         //radius in ft
v=10         //velocity in ft/sec
m=w/g        //calculating mass in slugs
F=(m*v*v)/r; //calculating centripetal force in lb
disp(F,"Centripetal Force in lb = "); //displaying result. 