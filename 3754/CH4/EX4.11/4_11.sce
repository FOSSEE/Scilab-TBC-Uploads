clear//

//Variables

V = 12.0                       //Voltage (in volts)
R1 = 4.0                       //Resistance (in ohm)
R2 = 6.0                       //Resistance (in ohm)
R3 = 12.0                      //Resistance (in ohm)

//Calculation

Req = 1/(1/R1 + 1/R2 + 1/R3)   //Equivalent resistance (in ohm)  
I1 = V/R1
I2 = V/R2
I3 = V/R3

//Result

printf("\n The Equivalent Resistance is  %0.3f  ohm.\nThe Current through R1 , R2 , R3 are  %0.3f  A,  %0.3f  A,  %0.3f  A.",Req,I1,I2,I3)
