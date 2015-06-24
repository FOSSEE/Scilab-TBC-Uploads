// Example 3.20, page no-147
clear
clc

Rf=10*10^3
R1=1*10^3
Av=1+ Rf/R1
printf('Closed loop voltage gain= %d',Av)

Beta=R1/(Rf+R1)
printf('\nFeedback factor= %.3f',Beta)


