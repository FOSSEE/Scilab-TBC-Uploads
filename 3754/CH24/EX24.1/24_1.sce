clear//

//Variables

VCC = 10.0                        //Source voltage (in volts)
RC = 10.0                         //Collector resistance (in kilo-ohm)
RB = 1.0 * 10**3                  //Base resistance (in kilo-ohm)
beta = 100.0                      //Common emitter current gain 
VBE = 0.7                         //Emitter-to-Base Voltage (in volts)

//Calculation

IB = (VCC - VBE) / RB             //Base current (in milli-Ampere)
IC = beta * IB                    //Collector current (in milli-Ampere)
IE = IC                           //Emitter current (in milli-Ampere)
r1e = 25.0 / IE * 10**-3          //a.c resistance of emitter diode (in kilo-ohm)
R1 = beta * r1e                   //Input resistance looking directly into the base (in kilo-ohm)
Ris = RB * R1/(RB + R1)           //Stage input resistance (in kilo-ohm)
Ro = RC                           //Output resistance (in kilo-ohm)
Av = RC / r1e                     //Voltage gain
    
//Result

printf("\n Input resistance looking into the base is  %0.2f  kilo-ohm.\nInput resistance of the stage is  %0.3f  kilo-ohm.\nOutput resistance is  %0.3f  kilo-ohm.\nVoltage gain is  %0.3f .",R1,Ris,Ro,Av)
