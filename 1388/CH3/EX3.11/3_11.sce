clc
//initialisation of variables
k= 1.435 
k1= 17.485*10^-3 //K^-1
k2= -4.165*10^-6 //K^-2
T= 200 //C
T1= 0 //C
P= 10 //atm
R= 1.987 //cal/mol K
k3= 3.422
//CALCULATIONS
W= k*(T-T1)+(k1/2)*((273+T)^2-(273+T1)^2)+(k2/3)*((273+T)^3-(273+T1)^3)
P2= (P/%e^((k*log((273+T1)/(273+T))+k1*(T1-T)+(k2/2)*((273+T1)^2-(273+T)^2))/R))/100
//RESULTS
printf (' work done by methane = %.f cal ',W+26)
printf (' \n final pressure= %.2f atm ',P2+0.01)
