//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 7
//Scilab version- 6.0.0
//Example 3.2.2
clc;
clear;
//given

A=0.5;//Attenuation in dB/km
Pin=1E-3; //Power launched in mW
Pout=50E-6; //Receiver sensitivity in uW
e=Pin/Pout;
s=10/A;
d=log10(e);
lmax=s*d;//maximum transistion distance

mprintf("Maximum transistion distance = %.2f km",lmax);
