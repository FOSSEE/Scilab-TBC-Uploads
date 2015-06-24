//Example 2_6
clc;
clear;close;

//Given data: 
Vs=230;//V
f=50;//Hz
Vdc=100;//V
Ip=15;//A
alfa=30;//degree

//Solution :
Vm=Vdc*%pi/(2*cosd(alfa))+1.7;//V
Vrms_2nd=Vm/sqrt(2);//V
TurnRatio=Vs/Vrms_2nd;
disp(TurnRatio,"(a) Turn ratio of transformer");
Irms_2nd=sqrt(Ip^2/2);//A
Rating=2*Vrms_2nd*Irms_2nd;//VA
disp(Rating,"(b) Transformer rating in VA");
PIV=2*Vm;//V
disp(PIV,"(c) PIV in V");
disp(Irms_2nd,"(d) RMS value of thyristor current in A");
///Answer in the book is wrong for some part.
