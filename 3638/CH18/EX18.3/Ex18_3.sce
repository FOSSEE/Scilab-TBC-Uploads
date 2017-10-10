//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 18.3
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
L=100;//Length of sensing element in m
DeltaP=2e-5;//Threshold of hearing in Pa
S=3.4e-4;//Sensitivity of element in rad/Pa/m

DeltaPhi=S*DeltaP*L;//Corresponding change in phase in rad
mprintf("\n DeltaPhi=%.1e rad",DeltaPhi);
