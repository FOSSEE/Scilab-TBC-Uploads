//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex4_19
clc;
clear;
V=400;// voltage in V
R1=10;// Resistance in ohm
R2=5;// Resistance in ohm
X1=2.6*%i;//Reactance in ohm
X2=2.4*%i;//Reactance in ohm
Xm=36.4*%i;//Reactance in ohm
Z=0.06;//zigma value
C=486;//constant
F4=2.5;//frequency in Hz
F2=25;//frequency in Hz
Z1=(1+X1)+((Xm*(R1+X2))/(R1+X2+Xm));
[M, P] = polar(Z1);
M * exp(%i * P);
Ieff1=sqrt(1+(M/(Z*Xm))^2*(((R2*(%pi)^4)/C)-1));
disp(Ieff1,"The rms value of current I1 in A:")
Z2=(1+(X1/2))+(((Xm/2)*((R1/2)+(X2/2)))/((R1/2)+X2+(Xm/2)));
[M, P] = polar(Z2);
M * exp(%i * P);
Ieff2=sqrt(1+(M/(Z*(Xm/2)))^2*(((R2*(%pi)^4)/C)-1));
disp(Ieff2,"The rms value of current I2 in A:")
S=(F4/F2);
Z3=(1+(X1*S))+(((Xm*S)*((R1*S)+(X2*S)))/((R1*S)+(X2*S)+(Xm*S)));
[M, P] = polar(Z3);
M * exp(%i * P);
Ieff3=sqrt(1+(M/(Z*(Xm*S)))^2*(((R2*(%pi)^4)/C)-1));
disp(Ieff3,"The rms value of current I3 in A:")

