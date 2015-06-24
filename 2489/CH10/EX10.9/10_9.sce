clc
//Intitalisation of variables
clear
T1= 500 //C
T2= 400 //C
kp1= 1.64*10^-4
kp2= 0.144*10^-4
R= 4.576 //cal
//CALCULATIONS
dH= (log10(kp2)-log10(kp1))*R*(273+T1)*0.5*(273+T2)/(T1-T2)
//RESULTS
printf ('Heat of formation of one mole of Nh3 = %.f cal ',dH+5)
