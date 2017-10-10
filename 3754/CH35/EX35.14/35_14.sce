clear//

//Variables

V1 = -2.0                                          //Voltage (in volts)
V2 = 2.0                                           //Voltage (in volts)
V3 = -1.0                                          //Voltage (in volts)         
R1 = 200.0 * 10**3                                 //Resistance (in ohm)
R2 = 250.0 * 10**3                                 //Resistance (in ohm)
R3 = 500.0 * 10**3                                 //Resistance (in ohm)
Rf = 1.0 * 10**6                                   //Resistance (in ohm)

//Calculation

Vout = (-Rf/R1*V1) + (-Rf/R2*V2) + (-Rf/R3*V3)     //Output voltage (in volts)

//Result

printf("\n Output voltage is  %0.3f  V.",Vout)
