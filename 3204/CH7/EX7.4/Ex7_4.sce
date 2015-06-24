// Initilization of variables
W1=1000 //N
mu=0.25 //coefficient of friction
pie=3.14
beta=pie
T1=W1 // Tension in the 1st belt carrying W1
e=2.718 //constant
// Calculations
T2=T1/(e^(mu*beta)) //N // Tension in the 2nd belt
W2=T2 //N
// Results
clc
printf('The minimum weight W2 to keep W1 in equilibrium is %f N \n',W2)
