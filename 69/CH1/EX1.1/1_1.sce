clear; clc; close;

t = 273 + 27;    //in kelvin
t_new = 273 +100;
k = 1.38*10^(-23);//in J/K
q = 1.6*10^(-19);//C

Vt = k*t/q;
format(10);
disp(Vt,'Thermal voltage for 27''C(in V): ');

Vt = k*t_new/q;
disp(Vt,'Thermal voltage for 100''C(in V): ');

