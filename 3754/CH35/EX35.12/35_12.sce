clear//

//Variables

V1 = 0.1                                          //Voltage (in volts)
V2 = 1.0                                          //Voltage (in volts)
V3 = 0.5                                          //Voltage (in volts)         
R1 = 10.0 * 10**3                                 //Resistance (in ohm)
R2 = 10.0 * 10**3                                 //Resistance (in ohm)
R3 = 10.0 * 10**3                                 //Resistance (in ohm)
R4 = 22.0 * 10**3                                 //Resistance (in ohm)

//Calculation

Vout = (-R4/R1*V1) + (-R4/R2*V2) + (-R4/R3*V3)    //Output voltage (in volts)

//Result

printf("\n Output voltage is  %0.3f  V.",abs(Vout))
