//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex4_3
clc;
clear;
P=10000;
V=240;// voltage in V
N=1000;//Speed in rpm
Eff1=0.87;//Efficiency in %
Vs=250;// voltage in V
f=50;//frequency in Hz
Alpha=0.5;//angle
R=0.40;// Resistance in ohm
Fdf=1;//fundamental displacement factor
df=0.9;//distortion factor
pf=0.9;//the power factor
Pi=P/Eff1;
I=Pi/V;
Eb=V-(I*R);
Vi=0.9*Vs;
Eb1=Vi-(I*R);
N1=(Eb1/Eb)*N;
Pi1=V*I*pf*(10)^(-3);
Pi2=(Pi1*N1)/N;
Vc=0.9*Vs*Alpha;
Eb2=Vc-(I*R);
N2=(N*Eb2)/Eb;
P0=((Pi1*N2)/N)*1000;
Pi0=Vc*I;
Eff=(P0/Pi0)*100;
disp(Eff,"Efficiency in % is:")
//Result vary due to roundoff error
