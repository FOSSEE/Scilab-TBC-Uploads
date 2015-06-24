//Problem 29.03: A two-branch parallel network is shown in Figure 29.8. Determine the resonant frequency of the network.

//initializing the variables:
RL = 5; // in ohms
L = 0.002; // IN Henry
C = 25e-6; // IN fARADS
Rc = 3; // in ohms

//calculation:
//Resonant frequency, for parallel
fr = (1/(2*%pi*((L*C)^0.5)))*((RL^2 - (L/C))/(Rc^2 - (L/C)))^0.5

printf("\n\n Result \n\n")
printf("\n resonant frequency, fr is %.2f Hz",fr)