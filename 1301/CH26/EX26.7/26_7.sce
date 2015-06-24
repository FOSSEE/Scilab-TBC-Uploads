clc;
p=0.263*10^5;      //Pascal
v=120;      //volume in m cube
t=223;      //Kelvin
R=8.31;     //constant
n=(p*v)/(R*t);  //calculating n
disp(n,"n = ");  //displaying result
m=n*4;      //cal mass of He
disp(m,"Mass of He = ");  //displaying result
