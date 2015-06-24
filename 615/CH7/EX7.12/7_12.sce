//water chemistry//
//example 7.12//
P=4.7;//required HCl in ml using HpH indicator //
H=10.5;//required HCl im ml using MeOH indicator//
M=P+H;
N=0.02;//normality of HCl//
printf("M=%fml",M)
printf("\nSince P<0.5*M sample contain (CO3)2- and (HCO3)- alkalinity");
printf("\nVol of 0.02N HCl for (CO3)2- in 100 ml of water sample is %fml",2*P);
C=50;//equivalent of CaCO3 in mg for 1ml 1N HCl//
A=C*(2*P)*N;//amount of (CO3)2- alkalinity in mg in 100 ml of water//
B=A*1000/100;
printf("\nThe amount of (CO3)2- alkalinity in 1 litre water is %fppm",B);
printf("\nVol of 0.02N HCl for (HCO3)- in 100 ml of water sample is %fml",M-2*P);
D=C*(M-2*P)*N;//the amount of (HCO3)- alkalinity in mg in 100 ml of water//
E=D*1000/100;
printf("\nThe amount of (HCO3)- alkalinity in 1 litre water is %fppm",E);
T=B+E;
printf("\nTotal alkalinity is %fmg/l or ppm",T);