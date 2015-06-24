clc 
//initialisation of variables
d= 6 //in
Q= 0.7854 //cfs
E= 30*10^6 //lb/in^2
t= 0.25 //in
g= 32.2 //ft/sec^2
w= 62.4 //lb/ft^3
K= 300000 //lb/in^2
//CALCULATIONS
v= Q/(%pi*(d/12)^2/4)
p= v/(sqrt(144*(g/w)*((1/K)+(d/(t*E)))))
//RESULTS
printf ('rise of presure in the pipe = %.f lb/in^2 ',p)
