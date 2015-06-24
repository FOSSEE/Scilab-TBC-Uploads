clc
//Intitalisation of variables
clear
wa= 52.3 //gms
wv= 52.96 //gms
wb= 302 //gms
T= 100 //C
p= 752 //mm
d= 1.29 //g per litre
wa1= 0.32 //gms
R= 0.082 //lit-atm K^-1 mole^-1
v= 0.25 //lit
//CALCULATIONS
W= wb-wa
Wv= wv-(wa-wa1)
M= Wv*R*(273+T)/((p/760)*v)
//RESULTS
printf ('Molecular weight of choloform = %.f gms',M)
