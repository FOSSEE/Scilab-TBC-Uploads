//chapter-7 page 279 example 7.4
//==============================================================================
clc;
clear;

S=2;//Voltage Standing Wave Ratio(VSWR)
C=30;//Coupling Power of a Directional Coupler in dB
Pf=4.5;//Coupler Incident Sampling Power in mW

//CALCULATION
p=((S-1)/(S+1));//Reflection Coefficient
Pi=Pf*10^(C/10);//Incident Power in mW [From C=10log(Pi/Pf)]
Pr=(Pi*(p^2))/10^3;//Reflected Power in W [From p=sqrt(Pr/Pi)]

//OUTPUT
mprintf('\nValue of Reflected Power is Pr=%1.2f W',Pr);

//=========================END OF PROGRAM===============================

