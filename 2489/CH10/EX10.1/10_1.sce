clc
//Intitalisation of variables
clear
Kp= 1.44*10^-5 //atm
R= 0.082 //lit-atm mole^-1 deg^-1
T= 500 //C
//CALCULATIONS
Kc= Kp/((273+T)*R)^-2
//RESULTS
printf ('Kc = %.2e moles per litre ',Kc)
