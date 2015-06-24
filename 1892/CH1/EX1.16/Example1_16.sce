// Example 1.16

clear; clc; close;

format('v',7);
// Given data
V=440;//in volt
P=8;//no. of poles
Pout=40;//in KW
f=50;//in Hz
phase=3;//no. of phase
R1=0.1;//in ohm
X1=0.4;//in ohm
R2dash=0.15;//Equivalent rotor resistance in ohm
X2dash=0.44;//Equivalent rotor reactance in ohm
I0=20*expm(%i*-acos(0.09));//in Ampere
N=727.5;//in rpm
MechLoss=1000;//in watts
CoreLoss=1250;//in watts

//Calculations
Ns=120*f/P;//in rpm
S=(Ns-N)/Ns;//slip
RLdash=R2dash*(1-S)/S
V1=V/sqrt(3);//in volt
R1e=R1+R2dash;//in ohm
X1e=X1+X2dash;//in ohm
I2rdash=V1/(R1e+RLdash+%i*X1e);//in Ampere
I1bar=I0+I2rdash;//in Ampere
InputCurrent=abs(I1bar);//in Ampere
InputPF=cosd(atand(imag(I1bar),real(I1bar)));//
disp(InputPF,InputCurrent,"(i) Input Current in Ampere & PF(lagging) are : ");
T=3*abs(I2rdash)^2*R2dash/S/(2*%pi*Ns/60);//in N-m
disp(T,"(ii) Torque Developed in N-m : ") ;
P2=3*abs(I2rdash)^2*R2dash/S;//in Watts
//Formula : P2:Pc:Pm=1:S:1-S
Pm=(1-S)*P2;//in Watts
TotPout=Pm-MechLoss;//in watts
disp(TotPout,"(iii) Output power in Watts : ");
TotCuLoss=3*abs(I2rdash)^2*R1e;//in watts
Eff=TotPout/(TotPout+TotCuLoss+CoreLoss+MechLoss)*100;//in %
disp(Eff,"(iv) Efficiency in % : ");

