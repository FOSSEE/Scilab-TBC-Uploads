clc
//initialisation of variables
clear
d= 6 //in
f= 0.25
l= 1200 //ft
p= 55 //lbm/ft^3
w= 740 //rev/min
g= 32.2 //ft/sec^2
n= 0.87
d1= 1.78 //ft
//CALCULATIONS
D= (0.13*%pi^2*(d/12)^5/(8*f*l*0.012^2))^0.25*d1
m= 0.012*p*(w*2*%pi/60)*D^3
dps= 0.13*p*(w*2*%pi*D/60)^2/g
P= m*10*dps/(p*n)
//RESULTS
printf ('Diameter = %.2f ft',D) 
printf ('\n Mass flow rate = %.1f lbm/sec',m) 
printf ('\n pressure rise = %.1f lbf/ft^2',dps)
printf ('\n shaft power = %.2e ft lbf/sec',P)
