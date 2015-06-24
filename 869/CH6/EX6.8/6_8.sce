clc
//initialisation of variables
F= 800 //lb
muk= 0.10
Do= 5 //in
Di= 3 //in
//CALCULATIONS
M= 2*muk*F*((Do/2)^3-(Di/2)^3)/(3*((Do/2)^2-(Di/2)^2))
//RESULTS
printf ('M= %.f lb in',M)
