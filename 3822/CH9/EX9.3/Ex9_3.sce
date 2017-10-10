
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 9.3
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
L=1.2//link length in Km
Gama_o=12.7;//optical output pulse of 3dB width in nanoseconds
Gama_i=0.4;//optical input pulse of 3dB width in nanosseconds

q=(Gama_o)^2;
w=(Gama_i)^2;
e=q-w;
u=sqrt(e);
v=1.2;
Gama_3dB=u/v;//3dB pulse dispersion for the fibre in ns/Km
mprintf("\n The 3dB pulse dispersion for the fibre is=%.2f ns/Km",Gama_3dB);
Bopt=0.44/(Gama_3dB*1e-9);//fibre bandwidth length productmultiplication by 1e-9 as gama is in nsKm
mprintf("\n The fibre bandwidth length product is=%.2f MHzKm",Bopt/1e6); //multiplication by 1e6 to convert unit from Hz to MHz
//the answer vary due to rounding
