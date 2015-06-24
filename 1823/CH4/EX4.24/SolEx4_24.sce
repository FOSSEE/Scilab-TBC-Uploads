//find (a) the perveance and (b) the amplification factor 
//Example 4.24 page no 130
clear
clc
Ip=15           //mA
Vp=100          //v
Vp0=4           //v
Vg=-4           //v
k=(Ip/(Vp^(3/2)))*1000
m=-(Vp/Vg)
printf("\n  the perveance k=%0.2f mA/V^3/2" ,k)
printf("\n the amplification factor  m=%0.2f mA" ,m)

