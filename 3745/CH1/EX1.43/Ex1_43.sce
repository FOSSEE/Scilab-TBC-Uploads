// Ex 43 Page 387

clc;clear;close;
// Given
R2=0.03;//ohm
X2=0.18;//ohm
Ns=100;//rpm
s1=3;//%


Nfl=(100-s1);//rpm (full load speed)
N2=Nfl/2;//rpm
s2=(Ns-N2)/Ns*100;//%
V1BYV2=sqrt(s2/s1*(R2**2+(s1/100*X2)**2)/(R2**2+(s2/100*X2)**2));//from torque equation
//let V1=V12BYV1 V2=1
V1=V1BYV2;//V
V2=1;//V
V12BYV1=(V1-1)/V1*100;// % reduction in the stator (V12=V1-V2)
printf("Percentage reduction in stator voltage = %.f percent",V12BYV1)
fi=atan(s2/100*X2/R2);//radian
pf=cos(fi);//power factor
printf("\n power factor = %.1f",pf)
