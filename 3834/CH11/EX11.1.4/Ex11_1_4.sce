//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 11.1.4
//windows 7
//Scilab version-6.0.0
clc;
clear ;
//given
tautr=100//transit time in ps
tauRC=100//time constant induced by a capacitor in ps
BWPD1=1/(2*%pi*(tautr+tauRC))

mprintf("\nBandwidth of InGaAs photodiode = %.3f Gbit/s",BWPD1*1E3);//multiplication by 1e3 to convert unit from 10^12 bits/s to Gbits/s
