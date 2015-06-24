//Example 5_8
clc;
clear;
close;
format('v',4);
//given data : 
e=1.6*10^-19;//C/electron
NA=2.5*10^20;//atoms/m^3
epsilon=16/(36*%pi*10^9);//F/m(For Ge)
Vd=0.2;//V//Barrier height
//Part(a)
V0=10;//V(reverse bias)
W=sqrt((V0+Vd)*2*epsilon/e/NA)*10^6;//micro m
disp(W,"(a) Width of depletion layer(micro m)");
format('v',5);
//Part(b)
V0=0.1;//V(reverse bias)
W=sqrt((V0+Vd)*2*epsilon/e/NA)*10^6;//micro m
disp(W,"(b) Width of depletion layer(micro m)");
//Part(c)
V0=0.1;//V(forward bias)
W=sqrt((Vd-V0)*2*epsilon/e/NA)*10^6;//micro m
disp(W,"(c) Width of depletion layer(micro m)");
//Part(d)
A=1;//mm^2//Cross section area
A=A/10^6;//m^2
format('v',6);
//For (a)
V0=10;//V(reverse bias)
W=sqrt((V0+Vd)*2*epsilon/e/NA)*10^6;//micro m
CT=epsilon*A/(W*10^-6)*10^12;//pF
disp(CT,"(d)(a) Space Charge capacitance(pF) ");
//For (b)
V0=0.1;//V(reverse bias)
W=sqrt((V0+Vd)*2*epsilon/e/NA)*10^6;//micro m
CT=epsilon*A/(W*10^-6)*10^12;//pF
disp(CT,"(d)(b) Space Charge capacitance(pF) ");
//Answer given in the textbook is not accurate.
