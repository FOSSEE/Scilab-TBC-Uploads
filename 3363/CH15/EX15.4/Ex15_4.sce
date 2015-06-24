//Example 15.4, Page 540
clc
kb=4.44//in Mev
ka=7.70//in Mev
mb=1
mB=17
ma=4
Q=(kb*(1+(mb/mB)))-(ka*(1-(ma/mB)))
disp('Part a')
printf("\n The value of Q is %f  Mev",Q)
c=3*10^8//m/s
m=Q/(931.5)
printf("\n The atomic mass of Q is %e  u",m)