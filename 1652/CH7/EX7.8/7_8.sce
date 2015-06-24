clc
//Initialization of variables
P=100 //atm
T=200 //K
n=1 //mole
R=0.08206 //l atm/deg mol
disp("From psychrometric charts,")
Tc=126.2 //K
Pc=33.5 //K
//calculations
Pr=P/Pc
Tr=T/Tc
disp("From z charts,")
z=0.83
V=z*n*R*T/P
//results
printf("Volume = %.3f liter",V)
