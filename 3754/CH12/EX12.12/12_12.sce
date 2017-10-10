clear//

//Variables

VS = 5                 //Source voltage (in volts)
R = 510                //Resistance (in ohm)
VF = 0.7               //Forward voltage drop (in volts)

//Calculation

VR = VS - VF           //Net voltage (in volts)
I = VR / R             //Current through the diode

//Result

printf("\n Voltage across the resistor is  %0.3f  V.\nThe circuit current is  %0.2f  mA.",VR,I*10**3)
