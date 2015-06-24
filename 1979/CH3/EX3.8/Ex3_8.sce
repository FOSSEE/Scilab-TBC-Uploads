//chapter-3 page 51 example 3.8
//==============================================================================
clc;
clear;

Z0=50;//Characteristic Impedance in ohms
Zl=100;//Load impedance in ohms
f=300*10^3;//Frequency in Hz
Pl=0.05;//Load Power in watts
c=3*10^8;//Velocity of Light in m/sec

//CALCULATIONS
w=c/f;//Wave Length in met
p=((Zl-Z0)/(Zl+Z0));//Reflection Coefficient
S=((1+p)/(1-p));//Voltage Standing Wave Ratio(VSWR)

//Since Zl>Z0, first Vmax is located at the load and first Vmin is located at Wavelength/4
x1max=0;//Position of first Vmax (located at the load) from load in met
x1min=w/4;//Position of first Vmin from load in met
Vmax=sqrt(Pl*Zl);//Value of maximum voltage in volts
Vmin=Vmax/S;//Value of minimum voltage in volts
Zmax=Z0*S;//Impedance at Vmax in ohms
Zmin=Z0/S;//Impedance at Vmin in ohms

//OUTPUTS
mprintf('\nVoltage Standing Wave Ratio(VSWR) is S=%1.0f \nPosition of first Vmax from load is x1max=%d met (located at the load) \nPosition of first Vmin from load is x1min=%3.0f met \nValue of maximum voltage is Vmax=%1.2f volts \nValue of minimum voltage is Vmin=%1.2f volts \nImpedance at Vmax is Zmax=%3.0f ohms \nImpedance at Vmin is Zmin=%2.0f ohms',S,x1max,x1min,Vmax,Vmin,Zmax,Zmin);

//=========================END OF PROGRAM==============================================================
