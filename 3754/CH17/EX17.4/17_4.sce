clear//

//Variables

rB1 = 4.0                    //Resistance (in kilo-ohm)
rB2 = 2.5                    //Resistance (in kilo-ohm)
VBB = 15.0                   //Base voltage (in volts)
VD = 0.7                     //Voltage (in volts)

//Calculation

n = rB1 / (rB1 + rB2)        //Intrinsic stand-off ratio
VP = n * VBB + VD            //Peak-point voltage (in volts)

//Result

printf("\n Intrinsic stand off ratio is  %0.4f .\nPeak-point voltage is  %0.f ",n,VP)
