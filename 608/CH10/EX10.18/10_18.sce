//Problem 10.18: In a d.c. potentiometer, balance is obtained at a length of 400 mm when using a standard cell of 1.0186 volts. Determine the e.m.f. of a dry cell if balance is obtained with a length of 650 mm

//initializing the variables:
E1 = 1.0186; // in Volts
l1 = 0.400; // in m
l2 = 0.650; // in m

//calculation:
E2 = (l2/l1)*E1

printf("\n\n Result \n\n") 
printf("\n the e.m.f. of a dry cell = %.3f Volts\n",E2)