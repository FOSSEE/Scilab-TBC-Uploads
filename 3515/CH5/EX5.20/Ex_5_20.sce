// Exa 5.20
format('v',5);
clc;
clear;
close;
// Given data
A= 100;
Vs=1;// in volt
Bita=1;// as in the voltage follower, the output voltage is same as input
Af= A/(1+Bita*A);
CLG= 1+A*Bita;// closed loop gain
disp(CLG,"Closed loop gain is : ")
CLG_dB= 20*log10(CLG);
disp(CLG_dB,"Closed loop gain in dB is : ")
Vo= Af*Vs;// in V
disp(Vo,"Value of Vo in volt is : ")
Vi= Vs-Vo;// in V
disp(round(Vi*10^3),"Value of Vi in mV is : ")
// If A decrease 10%,i.e.
A=90;
Af_desh= A/(1+Bita*A);
Per_gain_reduction= (Af_desh-Af)/Af*100;// in %
disp(Per_gain_reduction,"Percentage of gain reduction in %")
