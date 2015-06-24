clc
//Intitalisation of variables
clear
w= 0.241 //gms
R= 0.082 //lit-atm mole^-1 K^-1
T= 23 //C
p= 764 //mm 
v= 47.9 //ml of air
//CALCULATIONS
M= w*R*(273+T)/((p/760)*(v/1000))
//RESULTS
printf ('Molecular weight of choloform = %.f gms',M)
