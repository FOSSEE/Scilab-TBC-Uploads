clc;
//e.g 7.7
Vs=8;
VDmin=1.8;
VDmax=2;
Ifmax=16*10**-3;
Rs=(Vs-VDmin)/Ifmax;
disp('ohm',Rs*1,"Rs=");
Rsmax=(Vs-VDmax)/Ifmax;
disp('ohm',Rsmax*1,"Rsmax=");
