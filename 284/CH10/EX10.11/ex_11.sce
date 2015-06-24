// Chapter 10_Fundamentals of the Metal Oxide Semiconductor Field Effect Transistor
//Caption_Cut off frequency
//Ex_11//page 484
mun=400     //mobility
L=4*10^-4
VT=1
VGS=3
fT=mun*(VGS-VT)/(2*%pi*L^2)*10^-6
printf('The cut off frequency of this MOSFET  with constant mobility is %1.0f MHz',fT)