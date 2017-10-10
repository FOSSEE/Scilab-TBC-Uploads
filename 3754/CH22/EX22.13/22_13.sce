clear//

//Variables

VCC = 10.0                        //Source voltage (in volts)
RC = 2.0 * 10**3                  //Collector resistance (in ohm)
RB = 100.0 * 10**3                //Base Resistance (in ohm)
beta = 50.0                       //Common-Emitter current gain
VBE = 0.7                         //Emitter-to-Base Voltage (in volts)

//Calculation

IB = (VCC - VBE)/(RB + beta * RC) //Base current (in Ampere)
IC = beta * IB                    //Collector current (in Ampere)
IE = IC                           //Emitter current (in Ampere)
S = 1 + beta                      //Stability factor

//Result

printf("\n IB is  %0.3f  mA.\nIC is  %0.3f  mA.\nIE is  %0.3f  mA.",IB*10**3,IC*10**3,IE*10**3)
