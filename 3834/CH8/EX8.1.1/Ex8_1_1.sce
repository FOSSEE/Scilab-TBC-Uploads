//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 8.1.1
//windows 8
//Scilab version-6.0.0
clc;
clear ;
//given

//case 1
d1=65.5E-6;//diameter of the core considering 62.5+3 in m
d2=59.5E-6;//diameter of the core considering 62.5-3 in m

Losscore=-10*log10((d2/d1)^2);//Intrinsic loss due to diameter mismatch in dB
mprintf("Intrinsic loss due to diameter mismatch = %.2fdB",Losscore);


//case 2
NA1=0.290;//numerical aperture of fiber considering 0.275+0.015
NA2=0.260;//numerical aperture of fiber considering 0.275-0.015

LossNA=-10*log10((NA2/NA1)^2);//Intrinsic loss due to NA mismatch in dB
mprintf("\nIntrinsic loss due to NA mismatch = %.2fdB",LossNA);

//case 3
w1=9.8;//MFD considering 9.3+0.5 um
w2=8.8;//MFD considering 9.3-0.5 um
LossMFD=-10*log10(4/((w1/w2)+(w2/w1))^2);//Intrinsic loss due to NA mismatch in dB
mprintf("\nIntrinsic loss due to MFD mismatch = %.2fdB",LossMFD);
