//Chapter-4, Example 4.20, Page 147
//=============================================================================
clc
clear
//CALCULATIONS
//given voltage eqn is v=100+(100*sqrt(2))*sin(314*t) volts
W=314;//freq in rad/sec
R=5;//resistance in ohms
X=12;//reactance in ohms
Z=R+((%i)*(X));//impedance in ohms
Idc=100/R;//dc current in A
Iac=(100)/(sqrt((R)^2+(X)^2));//rms value of ac component of current
Pt=(R*(Idc^2))+(R*(Iac^2));//total power in Watts
V1=sqrt((100)^2+(100)^2);//supplied voltage in Rms in volts
I1=sqrt((20)^2+(7.69)^2);//current in Rms in Amps
Z1=V1/I1;//circuit impedance in ohms
Pf=Pt/(V1*I1);//Power factor
mprintf("thus circuit impedance,Power expended and Power factors are %1.1f Ohms ,%1.0f W and %1.3f respectively",Z1,Pt,Pf);
//=================================END OF PROGRAM==============================
