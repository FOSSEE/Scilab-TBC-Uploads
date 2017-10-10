//Fiber Optics Communication Technology, by Djafer K. Mynbaev and Lovell L.scheiner
//Windows 8
//Scilab version- 6.0.0
//Example 13.3.1
clc;
clear ;
//given

//case 1
deltan=0.07;//Difference between refractive indexes of TE and TM modes
v=3.75E3;//velocity of sound in LiNb)3 in m/s
lambda=1540.56E-9;//optical wavelength in m
L=22E-3;//length of acousto-optic interaction

LAMDA=lambda/deltan;//wavelength for period of grating
Fsaw=v/LAMDA;//Frequency of surface acoustic wave in MHz
mprintf("Frequency of surface acoustic wave = %.2f MHz",Fsaw/1e6);

//case 2
t_tun=(L/v)*1E6;//Tuning time acousto-optic interaction in us
mprintf("\nTuning time acousto-optic interaction = %.2f us",t_tun);
