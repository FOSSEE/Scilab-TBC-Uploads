//Example 4.5: 
clc;
clear;
close;
//given data :
Vcc=15;// in V
Vce=6;// in V
Rc=3*10^3;// in ohm
Beta=50;
Ic=(Vcc-Vce)/Rc;
Ib=Ic/Beta;
Rb=((Vcc/Ib)-(Beta*Rc))*10^-3;
format('v',5)
disp(Rb,"The value of resistoe,Rb(k-ohm) = ")
