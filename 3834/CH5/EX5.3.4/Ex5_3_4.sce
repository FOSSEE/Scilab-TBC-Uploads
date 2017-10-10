//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 5.3.4
clc;
clear;
//given

Dpmd=0.5;//polarization mode dispersion coefficient in ps/sqrt(km)
L=100;//fiber length in km
deltatpmd=Dpmd*sqrt(L);//Pulse spreading due to PMD in ps

mprintf("Pulse spread caused by PMD for single  mode fiber= %.0f ps",deltatpmd);
