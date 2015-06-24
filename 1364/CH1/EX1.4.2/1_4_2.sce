clc
//initialisation of variables
p= 20 //lbf/in^2
d1= 4 //in
d2= 18 //in
d3= 0.5 //in
sw= 62.3 //lbf/ft^3
//CALCULATIONS
Fa= p*(%pi/4)*d3^2
Fb= (4/d2)*3.92
V= 1.5*(Fb/sw)*1728
r= (0.75*(V/%pi))^(1/3)*2
//RESULTS
printf ('diameter of the float= %.2f in',r)
