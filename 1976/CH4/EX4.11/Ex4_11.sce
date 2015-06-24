
//To Determine the 30 mins rating of motor
//Page 229
clc;
clear;
Pr=100; //Power Rating in horse power
Tc=90*3600; //Time Constant
Tr=30*3600; //Time to determine the rating
theta=50; //Temperature Rise
theta1=50; //Temperature rise for the new case

P=poly(0,'P'); //Power rating for 30min variable value

//Loss Corresponding to 30 mins

P30=(P/Pr)^2; // Times the Power loss corresponding to the 100 hp motor

theta2=theta*P30; //Final Temperature rise if run  continuously

X=theta1-(theta2*(1-exp(-1*Tr/Tc))); //Polynominal to find the 30min rating

P=roots(X); //Numerical Value
//We Consider the Positive Real Value of the root

P=P(1); //Power Rating of the 1/2 Hr

printf('The 1/2 Hr Power Rating is %g hp\n',P)


