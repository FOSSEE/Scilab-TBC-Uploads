//Problem 10.21: The arms of a Wheatstone bridge ABCD have the following resistances: AB: R1 = 1000 ohms (+-) 1.0% ; BC: R2 = 100 ohm (+-) 0.5%; CD: unknown resistance Rx; DA: R3 = 432.5 ohms (+-)0.2%. Determine the value of the unknown resistance and its accuracy of measurement.

//initializing the variables:
R1 = 1000; // in ohms
R2 = 100; // in ohms
R3 = 432.5; // in ohms
e1 = 1; // in %
e2 = 0.5; // in %
e3 = 0.2; // in %

//calculation:
Rx = R2*R3/R1
em = e1 + e2 + e3
Re = em*Rx/100

printf("\n\n Result \n\n") 
printf("\n Resistance R = %.2f ohms(+-)%.2f ohms\n",Rx,Re)