clear
clc
Cp=40;//J/mol.k
Hr=80000;//J/mol.k
FAo=100;//mol/s
nA=1;nB=7;
n=nA+nB;
T1=300;//k
T2=600;//k
T3=800;//k
//Slope of adiabatic is
m=Cp/Hr;
//Drawing various adiabatics on graph given in Fig 19.11,we get
XA=[0.8;0.78;0.7;0.66;0.5;0.26;0.1;0];
inv_rA=[20;10;5;4.4;5;10;20;33];
plot(XA,inv_rA)
xlabel('XA');ylabel('inv_rA');
disp('From the plot we can say that a recycle reactor should be used')
W=FAo*XA(1)*6;
//From Plot
R=1;
Q1=n*FAo*Cp*(T2-T1);
Q2=n*FAo*Cp*(T1-T3);
printf("\n The weight of catalyst needed is % f",W)
printf(" kg \n The Recycle Ratio is %f",R)
printf("\n The heat exchange for feed is %f",Q1/10^6)
printf(" MW \n The heat excahnge for the product is %f",Q2/10^6)
printf(" MW")