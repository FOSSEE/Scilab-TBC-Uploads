clc
v = 15000 // vertical magnification
h = 100 // horizontal magnification
l = 0.8 // sampling length in mm
a1 = 160 // area above datum line in mm^2
a2 = 90 // area above datum line in mm^2
a3 = 180 // area above datum line in mm^2
a4 = 50 // area above datum line in mm^2
a5 = 95 // area below datum line in mm^2
a6 = 65 // area below datum line in mm^2
a7 = 170 // area below datum line in mm^2
a8 = 150 // area below datum line in mm^2
a = (a1+a2+a3+a4+a5+a6+a7+a8)/(v*h)
CLA= a/l
printf("\n C.L.A value = %0.2f*10^-6 m " , CLA*1000)
