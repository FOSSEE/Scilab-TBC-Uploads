clc
//initialisation of variables
R= 0.08205 //l-atm mole^-1 K^-1
T= 25 //C
p= 1 //atm
Mr= 226 //gms
th= 3.82 //days
t= 1620 //years
//CALCULATIONS
NRn= th/(Mr*t*365.26)
V= NRn*R*(273+T)*1000/p
//RESULTS
printf ('millilitres of radon = %.2e ml',V)
