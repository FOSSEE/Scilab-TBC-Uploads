//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 17.1
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
n1=1.4532;//refractive index of core
n2=1.45;//refractive index of cladding
a=5e-6;//fiber core radius in m
d=12e-6;//Distance between the fiber axes in m
dbar=d/a;//Ratio of distance between fiber axes to the core radius
delta=((n1)^2-(n2)^2)/((n1)^2);//Dimensionless quantity

//Case (i):
lambda0=1.3e-6;//Free space wavelength in m
k0=2*%pi/lambda0;//free space wave number in rad/m
V=k0*a*sqrt((n1^2)-(n2^2));//dimensionless waveguide parameter
//The approximate expression for k consists of constants A, B and C
A=5.2789-3.663*V+0.3841*(V^2);//Expression for constant A in terms of 'V'
B=-0.7769+1.2252*V-0.0152*(V^2);//Expression for constant B in terms of 'V'
C=-0.0175-0.0064*V-0.0009*(V^2);//Expression for constant C in terms of 'V'
k=(%pi/(2*a))*sqrt(delta)*exp(-(A+B*dbar+C*(dbar)^2));//Expression for Coupling Coefficient in m^(-1)
mprintf("\n For lambda=1.3 um:");
mprintf("\n k=%f mm^(-1)",k/1e3);//Dividing by 10^3 to conevert into mm^(-1)
//The answers vary due to round off error
Lc=%pi/(2*k);//Corresponding coupling length in m
mprintf("\n Lc =%.2f mm",Lc/1e-3);//Dividing by 10^(-3) to convert into mm
P2=(sin(k*Lc/2))^2;//The coupled power at given wavelength
mprintf("\n P2=%.2f",P2);

//Case (ii):
lambda0=1.35e-6;//Free space wavelength in m
k0=2*%pi/lambda0;//free space wave number in rad/m
V=k0*a*sqrt((n1^2)-(n2^2));//dimensionless waveguide parameter
//The approximate expression for k consists of constants A, B and C
A=5.2789-3.663*V+0.3841*(V^2);//Expression for constant A in terms of 'V'
B=-0.7769+1.2252*V-0.0152*(V^2);//Expression for constant B in terms of 'V'
C=-0.0175-0.0064*V-0.0009*(V^2);//Expression for constant C in terms of 'V'
k=(%pi/(2*a))*sqrt(delta)*exp(-(A+B*dbar+C*(dbar)^2));//Expression for Coupling Coefficient in m^(-1)
mprintf("\n For lambda=1.35 um:");
mprintf("\n k=%f mm^(-1)",k/1e3);//Dividing by 10^3 to conevert into mm^(-1)
//The answers vary due to round off error
P2=(sin(k*Lc/2))^2;//The coupled power at given wavelength
mprintf("\n P2=%.2f",P2);//The answers vary due to round off error
