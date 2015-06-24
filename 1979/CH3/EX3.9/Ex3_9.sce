//chapter-3 page 52 example 3.9
//==============================================================================
clc;
clear;

Z0=600;//Characteristic Impedance in ohms
Zs=50;//Generator impedance in ohms
l=200;//Length of transmission line in met
Zl=500;//Load impedance in ohms

//CALCULATIONS
p=((Zl-Z0)/(Zl+Z0));//Reflection Coefficient
x=abs(p);
Lr=10*log10(1/(1-x^2));//Reflection loss in dB
La=0;//Since the line is lossless,attenuation loss is zero dB
Lt=La+Lr;//Transmission loss in dB
Lrt=10*log10(x);//Return loss in dB

//OUTPUT
mprintf('\nReflection loss is Lr=%1.3f dB \nTransmission loss is Lt=%1.3f dB \nReturn loss is Lrt=%2.3f dB',Lr,Lt,Lrt);

//=========================END OF PROGRAM==============================================================
