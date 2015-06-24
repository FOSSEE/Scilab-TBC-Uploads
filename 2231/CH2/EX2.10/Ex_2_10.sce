//Example 2_10
clc;
clear;close;

//Given data: 
Vs=230;//V
f=50;//Hz
Vdc=100;//V
Ip=15;//A
alfa=30;//degree

//Solution :
//Vdc=2*Vm*cosd(alfa)/%pi-2*1.7//(Full converter bridge)
Vm=(Vdc+2*1.7)/2/cosd(alfa)*%pi;//V
Vrms=Vm/sqrt(2);//V
TurnRatio=Vs/Vrms;
disp(TurnRatio,"(a) Turn ratio of transformer");
Irms=sqrt(Ip^2/2);//A
Rating=Vrms*Ip;//VA
disp(Rating,"(b) Transformer rating in VA");
PIV=Vm;//V
disp(PIV,"(c) PIV in V");
disp(Irms,"(d) RMS value of thyristor current in A");
