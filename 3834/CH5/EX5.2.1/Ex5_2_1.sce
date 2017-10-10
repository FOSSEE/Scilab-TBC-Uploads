//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 5.2.1
clc;
clear;
//given

A=0.2;//Attenuation in dB/km
Pin=0.029E-3; //Power launched in mW
Pout=0.001E-3; //Receiver sensitivity in mW
e=Pin/Pout;
s=10/A;
d=log10(e);
L=s*d;//maximum transistion distance in km

mprintf("Maximum transistion distance = %.2f Km",L);
