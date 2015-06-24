clc
//initialisation of variables
m= 0.3 //kg
T= 25 //C
T1= 150 //C
cv= 0.7423 //kJ/kg K
//CALCULATIONS
Q= m*cv*(T1-T)
//RESULTS
printf ('heat interaction = %.2f kJ',Q)
