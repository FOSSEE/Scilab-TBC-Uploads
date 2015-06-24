//Chapter-5, Example 5.19, Page 178
//=============================================================================
clc
clear
//v=350*cos(3000*t-20)
//i=15*cos(3000*t-60)
//INPUT DATA
L=0.5;//inductance in Henry
phi=-40;//phase difference between applied voltage and current
//Xl>Xc(P.f is lagging)
w=3000;//freq in hz
Vm=350;//peak voltage in volts
Im=15;//peak current in amps
//CALCULATIONS
Z=Vm/Im;//total impedance in ohms
//Xl-Xc=0.839*R=X
//Z=sqrt((R)^2+(X)^2)
//Z=1.305*R
R=Z/1.305;//resistance in ohms
X=0.839*R;//
//X=Xl-Xc
Xl=w*L;//reactive inductance in ohms
Xc=Xl-X;//capacitive reactance in ohms
C=1/(w*Xc);//capacitance in uf
mprintf("Thus resistance and capacitance are %2.2f ohms and %g F respectively,",R,C);
//=================================END OF PROGRAM======================================================================================================
