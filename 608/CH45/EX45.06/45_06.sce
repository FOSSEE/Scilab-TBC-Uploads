//Problem 45.06:  In the circuit of problem 45.05, what value of capacitance will give critical damping ?


//initializing the variables:
L = 0.002 // in Henry
R = 1000; // in Ohm

//calculation:
a = (R/(2*L))^2
//for critically damped
C = 4*L/R^2
	
printf("\n\n Result \n\n")
printf("\n  capacitance C is %.2E F",C)
