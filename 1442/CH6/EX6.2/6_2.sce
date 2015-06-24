clc
//initialisation of variables
R= 8.314 //J/mol K
M= 29 //gms
T1= 230 //C
p1= 30 ///bar
k= 1.4
T2= 180 //C
v1= 10 //m/s
p2= 20 //bar
m2= 0.84 //kg/s
//CALCULATIONS
V1= R*(273.15+T1)/(M*p1*100)
cp= k*R/((k-1)*M)
A= m2*V1*10^4/v1
v2= sqrt(v1^2+2*cp*10^3*(T1-T2))
V2= R*(273.15+T2)/(M*p2*100)
A2= m2*V2*10^4/v2
//RESULTS
printf (' inlet area = %.1f cm^2',A)
printf (' \n inlet area = %.2f cm^2',A2)
