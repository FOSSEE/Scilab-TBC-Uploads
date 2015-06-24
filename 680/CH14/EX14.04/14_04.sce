//Problem 14.04:

//initializing the variables:
P = 0.5; // in atm
e = 0.3;

//calculation:
p1 = ((3-e)/(5 - 2*e))*P
p2 = ((1-3*e)/(5 - 2*e))*P
p3 = ((e)/(5 - 2*e))*P
p4 = ((1+e)/(5 - 2*e))*P

printf("\n\nResult\n\n")
printf("\n the partial pressures %0.3f, %0.3f, %0.3f and %0.3f",p1,p2,p3,p4)