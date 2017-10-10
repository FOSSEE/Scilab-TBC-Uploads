//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 5.3.2
clc;
clear ;
//given
lambda=1550;//operating wavelength in nm
deltalambda=1;//wavelength in nm
L=1;//length of fiber in km
Dmatlambda=20;//material dispersion in ps/nm.km
Dwglambda=5;//waveguide dispersion in ps/nm.km

deltatmat=Dmatlambda*deltalambda*L;//Pulse spreading caused by material dispersion in ps
deltatwg=Dwglambda*deltalambda*L;//Pulse spreading caused by waveguide dispersion in ps

mprintf("Pulse spread caused by material dispersion=%.0f ps",deltatmat);
mprintf("\nPulse spread caused by waveguide dispersion=%.0f ps",deltatwg);
