clc;clear;
//Example 7.17

//given data
Qin=1035;
Tin=20+273;//in K
Qout=Qin;
Tout=5+273;//in K

//calculations
// Sin - Sout + Sgen = dSsystem/dt
Sgen=(Qout/Tout)-(Qin/Tin);
disp(Sgen,'entropy generation in the wall in W/K');
Ts1=300;Ts2=273;//Boundary temperatures
Sgen=(Qout/Ts2)-(Qin/Ts1);
disp(Sgen,'total entropy generation in W/K');
