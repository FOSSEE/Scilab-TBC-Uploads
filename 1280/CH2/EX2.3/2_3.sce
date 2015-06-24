clc
//initialisation of variables
d= 2 //in
F= 1000 //lb
t= 10 //sec
L= 48 //in
S= 24 //in
//CALCULATIONS
ohp= F*L/(t*6600)
Ac= %pi*d^2/4
P= ohp*t*6600/(S*Ac)
//RESULTS
printf ('Pressure within the system = %.f psi',P)
