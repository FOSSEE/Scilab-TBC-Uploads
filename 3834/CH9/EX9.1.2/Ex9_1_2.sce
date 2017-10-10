//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 9.1.2
clc;
clear ;
//given
Pout=100E-6;//radiated power in W

n1=1.48;//refractive index of the core
n2=1.46;//refractive index of the cladding

b=n1*n1;
c=n2*n2;
v=b-c;
NA=sqrt(v);//numerical aperture
mprintf("\n Numerical aperture=%.4f",NA);

Pin=Pout*NA*NA;//light power Pin in W
mprintf("\nLight power Pin=%.2f uW",Pin*1e6);//multiplication by 1e6 to convert unit from W to uW

