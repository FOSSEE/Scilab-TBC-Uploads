clc
//initialisation of variables
Fr= 20 //gpm
P= 2500 //psi
sf= 4
Ts= 55000 //psi
V= 15 //fps
//CALCULATIONS
A= Fr*0.3208/V
ID= 2*sqrt(A/%pi)
Wt= P*ID/(2*(Ts-P))
Wt1= Wt*sf
//RESULTS
printf ('Wall thcikness = %.3f in',Wt1)
