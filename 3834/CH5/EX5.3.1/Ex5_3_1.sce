//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 5.3.1
clc;
clear ;
//given
lambda=1310;//operating wavelength in nm
deltalambda=1;//wavelength in nm
L=1;//length of fiber in km

Dmatlambda=2;//material dispersion in ps/nm.km from graph
deltatmat=Dmatlambda*deltalambda*L;//Pulse spreading caused by material dispersion in ps

mprintf("Pulse spreading caused by material dispersion per Km=%.2f ps/Km",deltatmat);
