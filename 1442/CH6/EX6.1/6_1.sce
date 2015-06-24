clc
//initialisation of variables
R= 8.314 //J/mol K
M= 29 //gms
T= 80 //C
p= 104 ///kPa
v= 30 //m/sec
m= 8000 //kg/h
//CALCULATIONS
V= R*(273.15+T)/(M*p)
A= m*V/(3600*v)
D= sqrt(4*A/%pi)
//RESULTS
printf (' diameter = %.5f m^2',D)
