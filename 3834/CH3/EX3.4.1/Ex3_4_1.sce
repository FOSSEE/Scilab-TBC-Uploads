//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 7
//Scilab version- 6.0.0
//Example 3.4.1
clc;
clear;
//given

NA=0.275;//numerical aperture
N1=1.487;//refractive in dex
c=3E8;//speed of light in m/s
L=1E3;//length of the link
a=N1*N1*N1;
b=8*c*a;
d=NA*NA*NA*NA;
g=L*d;
BRg1=(b/g);
mprintf("The bits restricted by modal dispersion is=%.2f Gbit/s",BRg1/1e9);//division by 1e9 t0 convert unit from bits/sec to Gbits /sec
