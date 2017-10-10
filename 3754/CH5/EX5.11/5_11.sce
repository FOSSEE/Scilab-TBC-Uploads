clear//

//Variables

Vth = 100                      //Thevenin Voltage (in micro-volts)
Rth = 50                       //Thevenin Resistance (in ohm)

//Calculation

RL = Rth                       //Maximum Load Resistance (in ohm)
PL = (Vth/(Rth + RL))**2 *RL   //Maximum load power (in pico-watt)

//Result
printf("\n Maximum load resistance is  %0.3f  ohm.\nMaximum load power is  %0.3f  pW.",RL,PL)
