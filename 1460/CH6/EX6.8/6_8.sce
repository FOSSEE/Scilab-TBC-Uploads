clc
//Initialization of variables
P1=15 //lb/in^2
P2=20 //lb/in^2
T1=40+460 //R
T2=540+460 //R
//calculations
disp("From table 6 at the two temperatures")
phi1=0.58233
phi2=0.75042
ds=phi2-phi1-53.3*log(P2/P1) /778
//results
printf("Entropy change = %.5f B/lbm R",ds)
