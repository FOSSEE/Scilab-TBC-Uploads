clc
//initialisation of variables
clear
r= 1.4
ma2= 2.5 //ft/sec
g= 32.17 //ft/sec^2
p2= 1 //lbf/in^2
ps= 17.08 //lbf/in^2
ps2= 75 //lbf/in^2
Ts= 720 //R
R= 53.3 //lbf ft/lbm
A= 4 //ft^2
ps3= 0.4 //lbf/in^2
A2= 0.685 //ft^2
P= 5 //per cent
//CALCULATIONS
R1= (1+0.5*(r-1)*ma2^2)^(r/(r-1))
R2= (2*(r/(r-1))*(p2/ps)^(2/(r))*(1-(p2/ps)^((r-1)/r)))^0.5
m2= R2*ps2*144*(g/(R*Ts))^0.5*0.1
m= m2*A
At= A*R2/A2
m1= m*(1-(P/100))
mrp= (1-(P/100))*R2
//RESULTS
printf ('Mass flow rate= %.1f lbm/sec',m)
printf ('\n Area of throat= %.3f ft^2',At)
printf ('\n Mass flow rate= %.1f lbm/sec',m1)
printf ('\n Mass flow rate parameter = %.4f',mrp)
