clc
//initialisation of variables
clear
vbm= 38 //ft/sec
va= 17.94 //ft/sec
a= 147.5 //degrees
vwm= 10.37 //ft/sec
C= 1430 //lbf/ft
P= 763 //lbf/ft^2
//CALCULATIONS
vwm1= vbm+va*cotd(a)
p= (vwm-vwm1)/vwm
C1= C*(1-p)
P1= P*(1-p)
//RESULTS
printf ('Oulet Velocity = %.2f ft/sec',vwm1) 
printf ('\n Torque = %.f lbf/ft',C1)
printf ('\n Workdone by the rotor = %.f lbf/ft^2',P1)
