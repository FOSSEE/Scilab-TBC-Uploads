//Example 14-5,Page No - 567

clear
clc

ht =275
hr =60
f=224*10^6
pt=100
Gt = 26
Gr = 3.27

D =((2*ht)^0.5+(2*hr)^0.5)*1.61
lamda = 300/f
Pr = (pt*Gt*Gr*lamda^2)/(16*3.14^2*D^2)
printf('The maximmum transmitting distance is %.1f kilometer',D)
printf('\n\n The received power is %.1f nW',Pr*10^15)
