V1 = 550; //velocity of Boeing 747 in mi/h
h1 = 38000; //altitude of Boeing 747 in ft
P1 = 432.6; //Freestream pressure in lb/sq.ft
T1 = 390; //ambient temperature in R
T2 = 430; //ambient temperature in the wind tunnel in R
c = 50; //scaling factor

//Calculations
//By equating the Mach numbers we get
V2 = V1*sqrt(T2/T1); //Velocity required in the wind tunnel
//By equating the Reynold's numbers we get
P2 = c*T2/T1*P1; //Pressure required in the wind tunnel
P2_atm = P2/2116; //Pressure expressed in atm
printf("\nRESULTS\n-------\nThe velocity required in the wind tunnel is: %3.1f mi/h\n\n",V2)
printf("The pressure required in the wind tunnel is: %5.0f lb/sq.ft or %2.2f atm\n\n",P2,P2_atm)