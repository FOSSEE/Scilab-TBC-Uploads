//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 12.3.3
clc;
clear;
//given

x=0.96;//assumed R*Gs value
L=500E-4;//assumed length of a typical travelling-wave semiconductor amplifier in cm
n=3.6;//refractive index of SOA medium
c=3e10//spped of light in vaccum in cm/s
v=c/n//speed of light within resonant cavity in cm/s
y=asin((1-x)/(2*sqrt(x)));
BWfpa=((v/L)*y);//Bandwidth of Fabry-perot semiconductor amplifier
mprintf("Bandwidth of Fabry-perot semiconductor amplifier = %.2f *10^9 rad/s.",BWfpa/1e9);//division by 1e9 to convert unit from rad/s to 10^9 rad/sec
//the answer given in the book is wrong//
