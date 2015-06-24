//Chapter-2, Example 2.1, Page 2.4
//=============================================================================
clc
clear

//INPUT DATA
Q=25;//Rating of a transformer in KVA
V1=2000;//Primary voltage in V
V2=200;//Secondary volatge in V
R1=0.15;//Primary winding resistance in ohm
X1=0.25;//Primary leakage reactance in ohm
R2=0.04;//Secondary winding resistance in ohm
X2=0.015;//Secondary leakage reactance in ohm

//CALCULATIONS
K=(V2/V1);//Voltage transformation ratio
Ro1=(R1+(R2/K^2));//Resistance referred to primary in ohm
Xo1=(X1+(X2/K^2));//Reactance referred to primary in ohm
Zo1=sqrt(Ro1^2+Xo1^2);//Impedence referred to primary in ohm
Ro2=(R2+(R1*K^2));//Resistance referred to secndary in ohm
Xo2=(X2+(X1*K^2));//Reactance referred to secondary in ohm
Zo2=sqrt(Ro2^2+Xo2^2);//Impedence referred to secondary in ohm

//OUTPUT
mprintf('(a)Resistance referred to primary is %3.2f ohm \n Reactance referred to primary is %3.2f ohm \n Impedence referred to primary is %3.1f ohm \n\n(b)Resistance referred to secndary is %3.4f ohm \n Reactance referred to secondary is %3.4f ohm \n Impedence referred to secondary is %3.3f ohm',Ro1,Xo1,Zo1,Ro2,Xo2,Zo2)

//=================================END OF PROGRAM==============================
