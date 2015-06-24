

//exapple 2.17 
clc; funcprot(0);
// Initialization of Variable
f=150/1000;//focal length
r=20000;//ratio
Pl=0.6;//longitudinal lap
l=23/100;//length
w=23/100;//width
B=(1-Pl)*l*r;//base length
H=f*r;
h=0;
dh=(H-h)^2/B/f*0.1/1000;
disp(dh,"error in height in (m):")
