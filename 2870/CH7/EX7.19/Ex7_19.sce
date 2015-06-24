clc;clear;
//Example 7.19

//given data
m=50;
T1=500;
T2=285;

//from Table A-3
Cavg=0.45;

//calculations
dSiron=m*Cavg*log(T2/T1);
disp(dSiron,'entropy change of the iron block in kJ/K');
// Ein - Eout = dEsystem
Qout=m*Cavg*(T1-T2);
dSlake=Qout/T2;
disp(dSlake,'entropy change of the lake in kJ/K');
// Sin - Sout + Sgen = dSsystem/dt
Sgen=(Qout/T2)+dSiron;
disp(Sgen,'entropy change in the process in kJ/K')
