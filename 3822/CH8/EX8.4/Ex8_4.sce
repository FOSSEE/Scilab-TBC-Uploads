
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 6.4
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
R=5e6;//effective resistance in ohms
CT=5e-12;//capacitance in Farads
T=300;//temperature in kelvin
Rf=1e5;//resistance in ohms
A=400;//open loop gain
KB=1.38e-23//boltzman constant in S.I. unit
//case 1:
Rtl=[(R)*(R)]/[(R)+(R)];//total effective load resistance
u=2*3.14*Rtl*CT;
B=1/u;//maximum bandwidth in Hz
mprintf("The maximum bandwidt obtained equalization is=%.2f *10^4Hz",B/1e4);//multiplication factor to change unit

//case 2:
v=4*(KB)*T;
i2th=v/Rtl;//thermal energy noise current per bandwidth in A^2/Hz
mprintf("\nThermal energy noise current per bandwidth is=%.2f *10^-27 A^2/Hz",i2th*1e27);

//case 3:
x=2*%pi*Rf*CT;
B=A/x;//maximum bandwidth without equalization for transimpedance
mprintf("\nMaximum bandwidth without equalization for transimpedance is=%.2f*10^8Hz",B/1e8);
//Assuming Rf<<Rtl then the thermal energy noise current per bandwidth is given by
i2th=v/Rf;
mprintf("\nFor Rf<<Rtl the thermal energy noise current per bandwidth is=%.2f *10^-25 A^2Hz",i2th*1e25);
// the answer in book is wrong
