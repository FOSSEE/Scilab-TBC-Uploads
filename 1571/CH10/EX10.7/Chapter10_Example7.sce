clc
clear

//INPUT
p1=77.371;//pressure at 100.5deg.C in cm of hg
p2=74.650;//pressure at 99.5deg.C in cm of hg
g=981;//universal gas constant in cm/sec^2
d=13.6;//specific gravity
l=537;//latent heat of vapourisation in cal/gm
t=373;//temperature of water in K
j=4.2*10^7;//joules constant in ergs/cal
v1=1;//intial volume in cc

//CALCULATIONS
v2=v1+(l*j/(t*(p1-p2)*g*d));//volume of gram of steam at 100deg.C in cc

//OUTPUT
mprintf('volume of gram of steam at 100deg.C is %3.2f cc',v2)
