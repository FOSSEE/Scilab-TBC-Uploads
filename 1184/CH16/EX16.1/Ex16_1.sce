//Example 16-1, Page No - 616

clear
clc

Zsrc =50
Zld  =136
f =5800*10^6
Er =2.4
Zq =(Zsrc * Zld)^0.5
Vp =1/(Er)^0.5
lamda = 300/f
len = (lamda/4)*38.37*Vp

printf('The required impedance is %.2f ohm',Zq)
printf('\n\n The length of the microstrip %.2f inches',len*10^6)
