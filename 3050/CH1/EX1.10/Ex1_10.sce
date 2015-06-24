//calculating volume
//Example 1.10
clc
clear
v=100//Amount of NaCl solution in litres
m=120*v//Amount of NaCl in g
wt=58.5*2//molecular mass of NaCl
Eq=m*100/wt//Equivalents of CaCO3 in g
h=500//hardness in ppm
V=Eq*1000/h//water required to soften the zeolite softner in litres
printf('Thus the zeolite softner can soften %5.2f L of Hard water',V)
