

//exapple 2.7 
clc; funcprot(0);
// Initialization of Variable
m=1/50000;//map scale
pd=10.16;//photo distance
md=2.54;//map distance
R=pd/md*m;//representative fraction
f=16/100;
h=200;
H=h+f/R;
disp(H,"height above sea level in (m):");
