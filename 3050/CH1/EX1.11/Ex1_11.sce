//calculating hardness
//Example 1.11
clc
clear
v=30//Amount of NaCl solution in litres
m=15*v//Amount of NaCl in g
wt=58.5*2//molecular mass of NaCl
Eq=m*100/wt//Equivalents of CaCO3 in g
V=1000//water required to soften the zeolite softner in litres
h=Eq*1000/V//hardness in ppm
printf('Thus the hardness of water = %3.2f ppm',h)
