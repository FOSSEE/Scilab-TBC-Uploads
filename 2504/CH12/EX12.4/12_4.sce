clc
//initialisation of variables
clear
W= 38 //rev/sec
w= 62.4 //lbf/ft^3
m= 2000 //lbm/sec
g= 32.2 //ft/sec^2
ps= 5000 //lbf/ft^2
S3= 4.6
e= 0.91
//CALCULATIONS
S1= W*(w*m^2/(g*ps)^3)^0.25
D= S3*(m^2/(w*g*ps))^0.25
//RESULTS
printf ('S1 = %.3f',S1)  
printf ('\n Diameter = %.2f ft',D)  
printf ('\n efficiency = %.2f ',e)
