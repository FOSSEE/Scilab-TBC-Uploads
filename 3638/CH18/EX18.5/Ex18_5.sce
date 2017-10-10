//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 18.5
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
V=2.64e-4;//Verdet constant for silica in deg/A
N=30;//Number of turns of fiber
I=1;//Current through the fiber in A

Theta=V*N*I;//Corresponding rotation of plane of polarization in deg
mprintf("\n Theta= %.2e deg",Theta);
