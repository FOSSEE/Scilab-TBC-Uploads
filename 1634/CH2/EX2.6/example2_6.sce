

//exapple 2.6 
clc; funcprot(0);
// Initialization of Variable
h=500;//elevaton of point
f=20/100;//focal length
v=8.65/100;//vertical distance of photograph
ho=2000;//horizontal distance of photograph
R=v/ho;//representative fraction
H=h+f/R;
disp(H,"height above sea level in (m):");
h=800;
S=(H-h)/f/100;//scale of photograph
disp(S,"1cm in photograph represents metres:")
clear
