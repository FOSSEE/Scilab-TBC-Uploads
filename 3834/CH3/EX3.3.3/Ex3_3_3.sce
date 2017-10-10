//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 3.3.3
//windows 7
//Scilab version-6.0.0
clc;
clear;
//given
L=5;//fiber length in km
NA=0.275;//numerical aperture
c=3E5;//speed of light in km
n1=1.48;//refractive index

p=2*c*n1;

e=NA*NA;

d=L*e;

deltatsi=(d/p)*1E9;//pulse spreading in ns //answer vary due round-off
deltatsi_by_L=(deltatsi/L)//pulse spreading per unit length in ns/Km//answer vary due round-off
Maximum_bit_rate=1e3/deltatsi_by_L//maximum bit rate in Mbits/s//multiplication by 1e3 to conver unit from Gbits/s to Mbits per sec
mprintf("\n maximum bit rate = %.1f  Mbits/s",Maximum_bit_rate);//answer vary due to rounding
