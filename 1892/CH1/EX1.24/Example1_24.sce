// Example 1.24

clear; clc; close;
format('v',7);
// Given data
VL=400;//in volt
f=50;//in Hz
P=6;//no. of poles
Z1=0.3+%i*0.4;//in ohm
Z2dash=0.2+%i*0.4;//in ohm
X0=20;//Magnetic reactance in ohm
R0=100;//resistance for core loss in ohm
S=4;//in %
StatorLoss=2;//in KW
MechLoss=2;//in KW
//Calculations
R1=real(Z1);//in ohm
R2dash=real(Z2dash);//in ohm
X1=imag(Z1);//in ohm
X2dash=imag(Z2dash);//in ohm
S=S/100;//slip
V1=VL/sqrt(3);//in volt
Ns=120*f/P;//in rpm
Ri=R2dash*(1-S)/S;//in ohm
R1e=R1+R2dash;//in ohm
X1e=X1+X2dash;//in ohm
I2rdash=V1/(R1e+Ri+%i*X1e);//in Ampere
Ic=V1/R0;//in Ampere
Im=V1/(%i*X0);//in Ampere
I0=(Ic+Im);//in Ampere
CoreLoss=Ic^2*R0;//Core loss per phase in Watts
I1=I0+I2rdash;//in Ampere
Istator=abs(I1);//in Ampere
cosfi=cosd(atand(imag(I1)/real(I1)));//lagging power factor

Pc=3*abs(I2rdash)^2*R2dash;//in Watts
//Here P2:P0:Pm=1:S:1-S
Pm=Pc*(1-S)/S;//in watts
Pout=Pm-MechLoss*1000;//in watts
StatorCuLoss=3*abs(I1)^2*R1;//in watts
TotLoss=CoreLoss*3+StatorCuLoss+Pc+MechLoss*1000;//in watts
Eff=Pout/(Pout+TotLoss)*100;//in %
N=Ns*(1-S);//in rpm
disp(N,"(a) Motor Speed in rpm : ");
disp(Istator,"(b) Stator current in Ampere : ");
disp(cosfi,"(c) Power factor lagging : ");
disp(Pout,"(d) Motor Output in Watts : ");
disp(Eff,"(d) Efficiency in % : ");
//Answer of Pout is wrong in the book.
