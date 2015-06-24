//chapter-7 page 279 example 7.2
//==============================================================================
clc;
clear;

x=3;//O/P incident power from first directional coupler in mW
y=0.1;//O/P reflected power from second directional coupler in mW

//CALCULATION
Pi=x*100;//Incident Power in mW
Pr=y*100;//Reflected Power in mW
p=sqrt(Pr/Pi);//Reflection Coefficient
S=((1+p)/(1-p));//Voltage Standing Wave Ratio(VSWR)

//OUTPUT
mprintf('\nVoltage Standing Wave Ratio(VSWR)in the main waveguide is S=%1.2f \nReflected Power is Pr=%2.0f mW',S,Pr);

//=========================END OF PROGRAM===============================
