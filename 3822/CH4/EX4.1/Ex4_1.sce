
//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 4.1
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given
h=6.62*10^-34;//Plank's constant in SI units
c=3*10^8;//speed of the light in m/s
e=1.9*10^-19;//electric charge in columb
I=50*10^-3;//drive current in A
lamda=0.85*10^-6;//peak emission wavelength in m
taur=50*10^-9;//radiative carrier life time in s
taunr=100*10^-9;//nonradiative carrier life time in s
Tp=(taur*taunr)/(taur+taunr);///total carrier life time in s
etaint=Tp/taur;//equation of internal efficiency
c1=(I*h*c)/(e*lamda);//constant value
Pint=(etaint)*c1;//internal optical power generated in W
mprintf("\n Total carrier life time is =%.2fns ",Tp*1e9);//multiplication by 1e9 for conversion of unit from s to ns
mprintf("\n Optical power generated internally is= %.2f mW ",Pint*1e3);//multiplication by 1e3 for conversion of unit from W to mW//the answer vary due to rounding
