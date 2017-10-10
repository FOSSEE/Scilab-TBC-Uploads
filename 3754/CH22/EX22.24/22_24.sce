clear//

//Variables

VCC = 8.0                           //Source voltage (in volts)
VRC = 0.5                           //Voltage across collector resistance (in volts)
RC = 800.0                          //Collector resistance (in ohm)
alpha = 0.96                        //common base current gain

//Calculation

VCE = VCC - VRC                     //Collector-to-emitter voltage (in volts)  
IC = VRC / RC                       //Collector current (in milli-Ampere)
IE = IC / alpha                     //Emitter current (in milli-Ampere)
IB = IE - IC                        //Base current (in milli-Ampere)

//Result

printf("\n Collector-to-Emitter VCE is  %0.3f  V.\nBase current is  %0.3f  mA.",VCE,IB*10**3)
