clc
//initialisation of variables
clear
r= 1.4
ma3= 3 //ft/sec
ps= 80 //lbf/ft^2
Ts= 840 //R
r1= 53.3 //ft lbm/ft^3
A3= 2 //in^2
g= 32.2 //ft/sec^2
ma1= 1.6
//CALCULATIONS
R= (1+(r-1)*0.5*ma3^2)^(r/(r-1))
p3= ps/R
R1= 1+0.5*(r-1)*ma3^2
T3= Ts/R1
w3= p3*144/(r1*T3)
V3= ma3*sqrt(r*r1*g*T3)
m= w3*V3*A3/144
ra= ((r+1)/(2*r*ma1^2-(r-1)))^(1/(r-1))*(0.5*(r+1)*ma1^2/(1+0.5*(r-1)*ma1^2))^(r/(r-1))
ps2= ps*ra
dp= ps-ps2
//RESULTS
 printf ('outlet pressure = %.2f lbf/in^2',p3)
  printf ('\n outlet temperature = %.f R',T3)
  printf ('\n mass flow rate = %.3f lbm/sec',m)
  printf ('\n mass flow rate = %.3f lbm/sec',m)
   printf ('\n ps2 = %.1f lbf/in^2',ps2)
   printf ('\n pressure difference = %.1f lbf/in^2',dp)
