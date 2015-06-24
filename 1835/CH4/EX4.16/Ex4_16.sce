//Chapter-4, Illustration 16, Page 148
//Title: Gears and Gear Drivers
//=============================================================================
clc
clear

//Input data
Ta=12//       no of teeth on gear A
Tb=60//       no of teeth on gear B
N=1000//      speed of propeller shaft in rpm
Nc=210//      speed of gear C in rpm

//Calculations
Nb=(Ta*N)/Tb//     speed of gear B in rpm
x=(Nb-Nc)
Nd=Nb+x//          speed of road wheel driven by D

//Output
printf('speed of road wheel driven by D= %d rpm',Nd)
