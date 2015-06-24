// Example 2.18, page no-39
clear
clc
rbcc=0.1258*10^-9
rfcc=0.1292*10^-9
a=4*rbcc/sqrt(3)
vbcc=(a^3)/2
a1=4*rfcc/sqrt(2)
vfcc=(a1^3)/4
vp=(vbcc-vfcc)
vp=floor(vp*10^32)
vp=vp*10^-32/vbcc
printf("The volume change in %% duringg the structural change is %.4f",vp*100)
