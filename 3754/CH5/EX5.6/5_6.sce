clear//

//Variables

V = 25.0                                  //Source voltage (in volts)
R1 = 100.0                                //Resistance (in ohm)
R2 = 75.0                                 //Resistance (in ohm)
R3 = 50.0                                 //Resistance (in ohm)
R4 = 25.0                                 //Resistance (in ohm)
RL = 250.0                                //Load resistance (in ohm)     

//Calculation

I = V / (R1 + R2 + R3)                  //Series curren (in Ampere)
VR2 = I * R2                            //Voltage drop across R2
VOC = VR2                               //Open circuit voltage (in volts)
Vth = VOC                               //Thevenin's equivalent voltage (in volts)
Rth = R4 + R2*(R1 + R3)/(R1 + R2 + R3)  //Thevenin's equivalent resistance (in ohm)
IL = Vth/(Rth + RL)

//Result

printf("\n Thevenins equivalent voltage is  %0.3f  V. and resistance in  %0.3f  ohm.",Vth,Rth)
printf("\n Current through load resistance is  %0.3f  A.",IL)
