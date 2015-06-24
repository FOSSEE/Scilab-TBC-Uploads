
clc 
//initialisation of variables
g= 32.2 //ft/sec^2
T= 25 //C
dp=8 //lbs/in^2
t= 0.005 //in
w= 3 //in
l= 1 //ft
//CALCULATIONS
ut= (0.0179*30.5/(g*453.6))/(1+0.03368*T+0.000221*T^2)
Ql= dp*144*(t/12)^3*3600*6.24/(12*ut*4)
//RESULTS
printf ('Discharge= %.6f gallons per hour ',Ql)


//ANSWER GIVEN IN THE TEXTBOOK IS WRONG
