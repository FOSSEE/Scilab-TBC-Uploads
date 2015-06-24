clc
//initialisation of variables
clear
p2= 67.2 //lbf/in^2
p1= 63 //lbf/in62
r= 1.4
n= 0.6
T1= 870 //R
ma1= 0.8 //ft/sec
//CALCULATIONS
dt= (p2/p1)^((r-1)/r)-1
dt1= dt/n
T2= T1*(1+dt1)
Ts1= T1*(1+0.5*(r-1)*ma1^2)
ps1= p1*(1+0.5*(r-1)*ma1^2)^(r/(r-1))
ps2= p2*(Ts1/T2)^(r/(r-1))
dp= ps1-ps2
//RESULTS
 printf ('dT = %.5f ',dt)
 printf ('\n dT1 = %.5f ',dt1)
 printf ('\n Temperature = %.f R',T2)
 printf ('\n Temperature = %.1f R',Ts1)
 printf ('\n Pressure = %.1f lbf/in^2',ps1)
  printf ('\n Pressure = %.1f lbf/in^2',ps2)
   printf ('\n pressure difference = %.1f lbf/in^2',dp)
