//Example 3_3
clc;
clear;
close;
format('v',5);
//given data :
v=10;//V
T=0.2;//second
Vav=1/T*integrate('1*v','t',0,T/2);//V
Vrms=sqrt(1/T*integrate('v^2','t',0,T/2));//V
disp(Vrms,"rms value of Voltage (V)");
disp(Vav,"Average value of Voltage (V)");
Kf=Vrms/Vav;//Form Factor
disp(Kf,"Form Factor")
//Answer is not accurate in the book.
