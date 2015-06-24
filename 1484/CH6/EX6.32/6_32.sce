

clc 
//initialisation of variables
A1= 10000 //ft^2
A2= 5000 //ft^2
d= 6 //in
h1= 18 //ft
h2= 15 //ft
h3= 5 //ft
l= 800 //ft
f=0.01
g=32.2
//CALCULATIONS
a= %pi*(d/12)^2/4
H1= h1-(h3+(A1/A2)*2)
H2= h2-(h3+(A1/A2)*5)
T= 2*sqrt(4*f*l/(d/12))*((H1)^0.5)/(a*sqrt(2*g)*((1/A1)+(1/A2)))
//RESULTS
printf ('time rquired water level in the reservoir to reduce= %.f sec',T)
