clear//

//Variables

VCC = 3.0                                //Source voltage (in volts)
RB = 33.0                                //Base Resistance (in kilo-ohm)
RC = 1.8                                 //Collector Resistance (in kilo-ohm)
VBE = 0.7                                //Emitter-to-Base Voltage (in volts)
beta = 90.0                              //Common emitter current gain     

//Calculation

IB = (VCC - VBE) / (RB + beta * RC)      //Base current (in milli-Ampere)
IC = beta * IB                           //Collector current (in milli-Ampere)
VCE = VCC -IC * RC                       //Collector-to-emitter voltage (in volts)
S = (1 + beta)/(1 + beta*RC/(RC + RB))   //Stability factor

//Result

printf("\n DC bias current is  %0.2f  mA.\nDC bias voltage is  %0.1f  V.\nStability factor is  %0.1f .",IC,VCE,S)
