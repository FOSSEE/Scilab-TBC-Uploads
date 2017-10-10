clc
//initialisation of variables
p=65*10^5//N/m^2
r=8000//liters/minute
p1=25*10^5//bars
sg=0.85
a=1.02*10^-4//m^3
b=15*10^5//N/m^2
//CALCULATIONS
Ha=(a*p)/sg//m
He=Ha-(a*p1)/sg//m
H=Ha-He//m
//RESULTS
printf('The energy extracted from the fluid in terms corresponding to head=% f m',H)
