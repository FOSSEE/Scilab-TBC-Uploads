close();
clear;
clc;
k = 1.38*10^(-23);
T = 25+273; //K
q = 1.6*10^(-19);
Vt = k*T/q;
//error will be less than 1 % if
//e^(vd/Vt) > 101
vd = Vt*log(101);
mprintf("(7.1) can be approximated as id*Io*e^(vd/Vt) for vd > %0.4f V",vd);