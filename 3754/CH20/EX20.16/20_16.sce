clear//

//Variables

VS = 15.0                      //Input voltage (in volts)
VZ = 8.3                       //Zener voltage (in volts)
beta = 100.0                   //Common-emitter current gain
R = 1.8                        //Resistance (in kilo-ohm)
RL = 2.0                       //Resistance (in kilo-ohm)
VBE = 0.7                      //Voltage across base-emitter junction (in volts)  

//Calculation

VL = VZ - VBE                  //Voltage across load (in volts)
VCE = VS - VL                  //Collector to emitter voltage (in volts)
IR = (VS - VZ)/ R              //Current through R (in milli-Ampere)
IL = VL / RL                   //Load current (in milli-Ampere)
IB = IL / beta                 //Base current (in milli-Ampere)    
IZ = IR - IB                   //Current through Zener (in milli-Ampere)

//Result

printf("\n Load voltage is  %0.3f  V.",VL)
printf("\n Collector to Emitter voltage is  %0.3f  V.",VCE)
printf("\n Current through R is  %0.2f  mA.",IR)
printf("\n Load current is  %0.3f  mA.",IL)
printf("\n Base current is  %0.3f  micro-A.",IB * 10**3)
printf("\n Current through Zener is  %0.2f  mA.",IZ)
