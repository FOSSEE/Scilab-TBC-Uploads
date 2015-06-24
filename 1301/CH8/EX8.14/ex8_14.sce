clc;
v=100*0.134;      //volume in ft cube
w1=50;           //weight in lb
dg=42;           //density in lb/ft cube
dgw=64;          //density in lb/ft cube
w=w1+(dg*v);     //calculating weight
disp(w,"Weight in lb = "); //displaying result
F=dgw*v;     //calculating force
disp(F,"Maximumforce in lb = ");    //displaying result