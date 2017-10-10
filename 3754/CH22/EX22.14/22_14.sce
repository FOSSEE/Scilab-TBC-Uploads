clear//

//Variables

//When VC = 0 volts
VCC = 9.0                                //Source voltage (in volts)
RB = 220.0                               //Base Resistance (in kilo-ohm)
RC = 3.3                                 //Collector Resistance (in kilo-ohm)
VBE = 0.3                                //Emitter-to-Base voltage (in volts)
beta = 100.0                             //Common emitter current gain                     

//Calculation

IB = (VCC - VBE)/((RB + beta*RC)* 10**3) //Base current (in Ampere)
IC = beta * IB                           //Collector current (in Ampere)
VCE = VCC - IC * RC * 10**3              //Collector-to-emitter voltage (in volts)
VC = VCE                                 //Collector voltage (in volts)
ICRC = VCC                               //Voltage (in volts) 

//When VC = 9 volts
IB1 = 16.0                               //Base current (in micro-Ampere)
IC1 = beta * IB1                         //Collector current (in micro-Ampere) 
RC1 = 0                                  //Collector Resistance (in ohm)  

//Result

printf("\n In case 1, Collector junction is short circuited.\nIn case 2, Collector resistance is short circuited. " )
