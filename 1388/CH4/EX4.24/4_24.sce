clc
//initialisation of variables
b= 0.0386 //l^2 atm mole^-1
a= 1.348 //l mole^-1
R= 0.08205 //cal /mole K
T= 25 //C
a1= 3.61 //l^2 atm mole^-1
b1= 0.0428 //l mole^-1
P= 50 //atm
P1= 1 //atm
//CALCULATIONS
Bn= b-(a/(R*(273.2+T)))
Bc= b1-(a1/(R*(273.2+T))) 
Fn= P1^(Bn*P1/(R*(273.2+T)))
Fc= P1^(Bc*P1/(R*(273.2+T)))
Fn1= P*%e^(Bn*P/(R*(273.2+T)))
Fc1= P*%e^(Bc*P/(R*(273.2+T)))
//RESULTS
printf (' Fugacity of N2= %.2f atm',Fn1)
printf (' \n Fugacity of CO1= %.2f atm',Fc1)
