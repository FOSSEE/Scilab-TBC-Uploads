//Example 1.30 // velocity of light in medium
clc;
clear;
//given data :
d1=.3;// diameter of ring in cm
d2=.25;//diameter of ring(in cm) after placing in medium
c=3D8;//speed of light in m/s
u=(d2/d1)^2;// refractive index of medium
v=u*c;// velocity of light in fluid
disp(v,"velocity of light in liquid in m/s")
