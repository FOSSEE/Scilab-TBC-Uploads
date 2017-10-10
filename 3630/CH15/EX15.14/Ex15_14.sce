clc;
AcL=151;
av=1/AcL;
AoL=180000;
A=1+av*AoL;
Zin=5000000;
Zinf=Zin*A;
disp('ohm',Zinf,"Zinf=");//The answers vary due to round off error

