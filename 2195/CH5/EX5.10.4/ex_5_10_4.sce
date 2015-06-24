//Example 5.10.4: voltage and time interval
clc;
clear;
close;
//given data :
t1=1;//sec
R=100;//k-ohm
C=1;//micro F
Vin=1;//V
Vref=5;//V
Vout=1/(R*1000)/(C*10^-6)*integrate('Vin*1','t',0,t1);//V
disp(Vout,"Output vltage after 1 sec in Volt : ");
//Vout=Vref*t2/R/C & Vout=Vin*t1/R/C
t2=t1*Vin/Vref;//sec
disp(t2,"Time interval t2 in sec : ");
