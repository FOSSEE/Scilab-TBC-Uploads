//Ex 2.9.9
clc;clear;close;
format('v',8);

//Given : 
Vs=5;//Volt
Eta=1;//constant
VT=26/1000;//V
//I=I0 so exp(V1/Eta/VT)-1=1
V1=log(1+1)*Eta*VT;//Volt
V2=Vs-V1;//volt
disp(V1,"Voltage across diode D1 in V : ");
disp(V2,"Voltage across diode D2 in V : ");
