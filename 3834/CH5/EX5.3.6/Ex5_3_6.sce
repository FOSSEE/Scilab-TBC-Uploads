//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 5.3.6
clc;
clear;
//given

Dpmd=0.5;//polarization mode dispersion coefficient in ps/sqrt(km)

L=100;//for assumed fiber length in km
deltatpmd=Dpmd*sqrt(L);//pulse spread due to PMD in ps
mprintf("Pulse spread caused by PMD for single  mode fiber= %.2f ps",deltatpmd);
BRpmd=1/(4*deltatpmd);//maximum bit rate limited by PMD in 10^12(bps)
mprintf("\nBit Rate  limited by PMD= %.2f Gbps",BRpmd*1e3);//multiplication by 1e3 to convert unit into Gbps from 10^12(bps)

