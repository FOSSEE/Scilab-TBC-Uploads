//Variable declaration:
//From steam tables:
U1 = 1237.1                     //Internnal energy of gas (Btu/lb)
U2_g = 1112.2                   //Internal energy of gas (Btu/lb)
U2_l = 343.15                   //Internal energy of liquid (Btu/lb)

//Calculation:
Q = 0.5*(U2_g+U2_l)-1*U1        //Heat removed (Btu/lb)

//Result:
printf("Heat removed from the system during the process is : %.1f Btu/lb.",Q)
