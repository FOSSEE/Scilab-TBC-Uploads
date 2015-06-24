//(a) the perveance  and (b) the amplification factor .
//Example 7.18 page no 219
clear
clc
ip=15*10^-3     //mA
vp=100          //v
k=(ip/(vp^(3/2)))*10^6
vg=-4
printf("\n The value of k=%0.3f mA/v^3/2",k)
m=-(vp/vg)
printf("\n The value of m=%0.3f ",m)
