clc
//initialisation of variables
clear
lc= 0.25
a= 90 //degrees
p= 3000 //lb/in^2
g= 32.2 //ft/sec^2
d1= 0.5 //in
Q= 0.171 //ft^3/sec
d= 54.5 //lbm/ft^3
n1= 2 
n2= 6
lc1= 0.9
nop= 0.88
nom= 0.88
//CALCULATIONS
P1= 4*p*144/11
P2= 8*d*Q^2*(n1*lc+n2*lc1)/(%pi^2*(d1/12)^4*g)
pt= P1+P2
dpm= (p*144-pt)
ntrans= nop*nom*dpm/(p*144)
//RESULTS
printf ('Frictional pressure drop = %.2e lbf/ft^2',P1) 
printf ('\n Extra Frictional pressure drop = %.2e lbf/ft^2',P2) 
printf ('\n Total pressure drop = %.2e lbf/ft^2',pt)
printf ('\n Motor pressure drop = %.2e lbf/ft^2',dpm)
printf ('\n Overall transmission coefficiency = %.3f',ntrans)
