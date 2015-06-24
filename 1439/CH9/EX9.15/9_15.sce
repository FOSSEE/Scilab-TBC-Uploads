clc 
//initialisation of variables
HCO2= -94.2598 //kcal
HH2= 0 //kcal
HCO= -32.8079 //kcal
HH2O= -54.6357 //kcal
R= 1.987 //cal deg^-1 mole^-1
T= 25 //C
//CALCULATIONS
Kp= 10^(-(HCO2-HCO-HH2O)/(R*2.303*(273.1+T)))
//RESULTS
printf ('Kp= %.2e  ',Kp)


//ANSWER IN THE TEXTBOO IS WRONG
