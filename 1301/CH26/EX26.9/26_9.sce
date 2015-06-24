clc;
p=5;      //atm
v=1;      //volume in litres
t=293;      //Kelvin
R=0.0821;     //constant in atm-l/mole-K
n=(p*v)/(R*t);  //calculating n
disp(n,"n = ");  //displaying result
m=n*32;  //moles of O2
disp(m,"Moles of O2 = "); //displaying result
d=m/v;    //cal density
disp(d,"Density in g/litre = ");  //displaying result