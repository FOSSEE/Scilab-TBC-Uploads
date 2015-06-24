clc
//initialisation of variables
clear
rt= 1.3 //ft
rr= 0.6 //ft
Q= 75 //ft^3
rm= 0.95
w1= 40 //rev/sec
bim= 153 //degrees
bom= 147 //degrees
w= 62.4 //lb/ft^3
g= 32.2 //ft/sec^2
//CALCULATIONS
A= %pi*(rt^2-rr^2)
Va= Q/A
Vbm= rm*w1
a= acotd(-Vbm/Va)
im= a-bim
vwm= Vbm+Va*cotd(bom)
dvwm= rm*vwm
C= w*Q*dvwm/g
Cw= C*w1
dp= Cw/Q
//RESULTS
printf ('Incidence = %.1f degrees',im) 
printf ('\n Oulet velocity = %.2f ft/sec',vwm)
printf ('\n Change of whirl at the mean radius = %.2f ft^2/sec',dvwm)

printf ('\n Torque = %.f lbf/ft',C)
printf ('\n Rate of working = %.f ft lbf/sec',Cw)
printf ('\n Workdone by the rotor = %.f lbf/ft^2',dp)
