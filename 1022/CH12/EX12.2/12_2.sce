clc
//initialisation of variables
T= 70 //F
l= 0.9 //in
v= 7 //ft/s
d= 62.3 //lbm/ft^3
m= 6.58*10^-4 //lbm/ft s
Pr= 6.82 
k= 0.347 //Bt/hr ft F
//CALCULATIONS
l1= l*0.075/l
Re= (d*v*l1)/m
Nu= 0.023*Re^0.8*Pr^0.4
h= Nu*k/l1
//RESULTS
printf ('Heat transfer coefficient when the flow is fully devoloped= %.f Btu/hr ft^2 F',h)
