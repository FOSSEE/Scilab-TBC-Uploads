clc;
p=4;      //atm
v=40;      //volume in litres
t=773;      //Kelvin
R=0.0821;     //constant in atm-l/mole-K
n=(p*v)/(R*t);  //calculating n
disp(n,"n = ");  //displaying result
u=238.03;   //mass of U
f=19.00;  //mass of F
m=u+(6*f);  //cal mass
disp(m*2.52,"Mass = ");  //displaying result
