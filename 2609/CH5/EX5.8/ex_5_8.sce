//Ex 5.8
clc;
clear;
close;
format('v',8);
Ri=10;//kohm
Rf=15;//kohm
Vs=9;//V
//Part (a)
Ra=120;Rb=120;Rc=120;Rd=120;//ohm
Vx=0;Vy=0//V(as Bridge is balanced)
Vout=(Vy-Vx)*Rf/Ri;//V
disp(Vout,"(a) Output Voltage(V)");
//Part (b)
Ra=120;Rb=120;Rc=120;Rd=150;//ohm
Vx=Rb*Vs/(Ra+Rb);//V
Vy=Rc*Vs/(Rc+Rd)//V
Vyx=Vy-Vx;//V
Vout=(Vy-Vx)*Rf/Ri;//V
disp(Vout,"(b) Output Voltage(V)");
