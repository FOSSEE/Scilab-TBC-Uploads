//chapter-7 page 279 example 7.3
//==============================================================================
clc;
clear;

Pi=2.5;//Incident Power from one directional coupler in mW
Pr=0.15;//Reflected Power from other directional coupler in mW

//CALCULATION
p=sqrt(Pr/Pi);//Reflection Coefficient
S=((1+p)/(1-p));//Voltage Standing Wave Ratio(VSWR)

//OUTPUT
mprintf('\nVoltage Standing Wave Ratio(VSWR)in the waveguide is S=%1.2f',S);

//=========================END OF PROGRAM===============================
