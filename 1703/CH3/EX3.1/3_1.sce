
clc
//initialisation of variables
clear
hob= 34 //ft
hoc= 5 //ft
hoa= 50 //ft
hod= 80 //ft
g= 32.2 //ft/sec^2
A= 2.1 //in^2
A1= 4.8 //in^2
A2= 9.6 //in^2
//CALCULATIONS
v= sqrt(2*g*(hod-hoc))
Q= v*A/144
va= v*A/A1
vb= v*A/A2
Va= va^2/(2*g)
Vb= vb^2/(2*g)
r= hob+hod-hoa-(va^2/(2*g))
r1=hob+hod-hob-(vb^2/(2*g))
//RESULTS
printf ('Discharge = %.2f cuses',Q) 
printf ('\n Velocity head at A = %.2f ft-lb/lb',Va)
printf ('\n Velocity head at B = %.2f ft-lb/lb',Vb)
printf ('\n Pressure head at A = %.2f ft-lb/lb',r) 
printf ('\n Pressure head at B = %.2f ft-lb/lb',r1) 
