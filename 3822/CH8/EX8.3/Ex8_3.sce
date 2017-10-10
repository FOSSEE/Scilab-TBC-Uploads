
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 8.3
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
Cd=6e-12;//capacitance in farad
Id=0;//dark current in photodiode
B=40e6;//bandwidth in Hz
I=2e-7;//photo current before gain in Ampere
T=300;//temperature in kelvin
Fn=1;
KB=1.38*1e-23//boltzman constant in SI units
e=1.6*10^-19//charge of an electron in columb
//case 1:
u=2*3.14*Cd*B;
RL=1/u;//load resistance in ohms
mprintf("\n Load resistance is=%.2f ohms",RL);

//case 2:
i2sh=2*(e)*B*I;// shot noise in A^2
v=4*(KB)*T*B;
i2th=v/RL;//thermal noise in A^2
//if i2>i1 then
S=I^2;
N=i2th;
z=S/N;
mprintf("\n Signal to noise ratio is=%.2f",z);
//when M=Mopt and x=0.3
x=0.3;//lies between 0.3 to 0.5 for silicon and 0.7 to 1 for Ge
a=4*(KB)*T;
b=(e)*x*RL*I;
M1=a/b;
Mopt=M1^(1/2.3)
S1=[(Mopt)*I]^2;//signal strength in W
N1=[2*(e)*B*I*((Mopt)^2.3)]+[(4*(KB)*T*B)/(RL)];//noise power in W
SbyN=S1/N1;//signal to noise ratio
mprintf("\n Signal to noise ratio is=%.2f",SbyN);
//the answer in book is wrong
