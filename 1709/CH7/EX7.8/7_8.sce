clc
//Initialization of variables
P=1000 //psia
T1=100 + 460 //R
T2=800+460 //R
//calculations
pc=1070 //psia
Tc=548 //R
pr1=P/pc
Tr1=T1/Tc
Tr2=T2/Tc
M=44
disp("from fig 7.7")
h1=4235.8 //B/lbm mol
h2=11661 //B/lbm mol
h2bar=3.5 //B/lbm mol
h1bar=0.48 //B/lbm mol
dhbar=Tc*(h2bar-h1bar) + h2-h1
Q=dhbar/M
cp=0.202 //B/lbm F
Q2=cp*(T2-T1)
Error=(Q-Q2)/Q
//results
printf("Error in calculation = %d percent",Error*100)
