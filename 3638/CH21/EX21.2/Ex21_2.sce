//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 21.2
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
nf=1.51;//refractive index of film
ns=1.50;//refractive index of substrate
nc=1.0;//refractive index of cover
d=4e-6;//thickness of film in m
lambda0=0.6e-6;//Wavelength in m
ne1=1.50862;//Corresponding effective refractive index for core
ne2=1.5046;//Corresponding effective refractive index for cladding
//Let A be the period of perturbation in m


//Case (i):
A=100e-6;
K=2*%pi/A;
k=0.598e2;//coupling coefficient in m^-1 (from previous example)
T=2*%pi/lambda0*(ne1-ne2)-K;//Phase mismatch in m^-1
y=sqrt(k^2+(T/2)^2);//Resultant of k and T in m^-1

mprintf("\n For A=100 um:");
P2max=(k/y)^2;//Maximum power that gets transferred between the modes
mprintf("\n P2max= %.1e",P2max);
L=%pi/(2*y);//Distance for maximum power transfer in m
mprintf("\n L=%.1f um\n",L/1e-6);//Division by 10^(-6) to convert into um
//The answers vary due to round off error


//Case (ii):
A=148e-6;
K=2*%pi/A;
k=0.598e2;//coupling coefficient in m^-1 (from previous example)
T=2*%pi/lambda0*(ne1-ne2)-K;//Phase mismatch in m^-1
y=sqrt(k^2+(T/2)^2);//Resultant of k and T in m^-1

mprintf("\n For A=148 um:");
P2max=(k/y)^2;//Maximum power that gets transferred between the modes
mprintf("\n P2max= %.1e",P2max);
L=%pi/(2*y);//Distance for maximum power transfer in m
mprintf("\n L=%.1f mm",L/1e-3);//Division by 10^(-6) to convert into mm

