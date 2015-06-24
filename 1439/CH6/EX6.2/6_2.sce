clc 
//initialisation of variables
T= 100 //C
Vv= 30.199 //l mole^-1
Vl= 0.01878 //l mole^-1
H= 539.7//cal g^-1
m= 18.01 //g mole^-1
R= 0.04129 //l-atm cal^-1
//CALCULATIONS
r= H*m*R*760/((273.1+T)*(Vv-Vl))
r1= 1/r
//RESULTS
printf ('change in boling point of water per mm = %.3f deg mm^-1',r1)

