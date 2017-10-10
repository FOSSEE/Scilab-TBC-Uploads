// Ex 45 Page 389

clc;clear;close;
// Given
Edc=500;//V
fim=.085;//Wb
f=50;//Hz
E1=11000;//V
P=1500;//kW
p=8;//pole
pf=0.9
V=500;//V
J=3;//A/mm^2

E2=Edc/sqrt(2)//V
N2=E2/4.44/f/fim;//no. of turns
N1=E1/E2*N2;//no. of turns
printf("no. of turns in primary = %d",N1)
printf("\n no. of turns in secondary = %d",N2)
Idc=P*10**3/V;//A
eta=1;//because of no loss
ISR=0.472*Idc/(eta*pf)
A1=ISR/J*10**-6;//m^2 (cross section area)
I1=N2/N1*ISR;//A
A2=I1/J*10**-6;//m**2 (cross section area of primary winding)
printf("\n\n cross section of primary winding=%.2e m^2",A1)
printf("\n cross section of secondary winding=%.1e m^2",A2)
//ans in the book are not accurate.
