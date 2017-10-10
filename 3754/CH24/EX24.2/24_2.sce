clear//

//Variables

Ri = 2.5                         //Input resistance (in kilo-ohm)
Av = 200.0                       //Voltage gain
Vs = 5.0 * 10**-3                //Input signal voltage (in volts)
beta = 50.0                      //Common emitter current gain

//Calculation

IB = Vs / Ri                     //Base current (in milli-Ampere)   
IC = beta * IB                   //Collector current (in milli-Ampere)
Ai = beta                        //Current gain
Ap = Ai * Av                     //Power gain
Gp = 10 * log10(Ap)              //dB power gain (in decibel)

//Result

printf("\n The base current is  %0.3f  mA.\nThe collector current is  %0.3f  mA.\nThe power gain is  %0.3f .\nThe dB power gain is  %0.3f  dB.",IB,IC,Ap,Gp)
