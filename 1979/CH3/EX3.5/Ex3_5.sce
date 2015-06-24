//chapter-3 page 50 example 3.5
//==============================================================================
clc;
clear;

Z0=50;//Characteristic Impedance in ohms
f=300*10^6;//Frequency in Hz
Zl=50+(50*(%i));//Terminating load impedance in ohms
w=((3*10^8)/f);//Wave Length

//CALCULATIONS
p=((Zl-Z0)/(Zl+Z0));//Reflection Coefficient(Complex Form)
y=real(p);
z=imag(p);
x=sqrt(y^2+z^2);//Reflection Coefficient Value
s=((1+x)/(1-x));//Voltage Standing Wave Ratio(VSWR)

//OUTPUT
mprintf('\nReflection Coefficient is x=%1.4f \nVoltage Standing Wave Ratio(VSWR) is s=%1.2f',x,s);

//===================END OF PROGRAM=====================================
