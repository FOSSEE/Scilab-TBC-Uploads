clear//

//Variables

VS = 12.0                     //Source coltage (in volts)
R = 470.0                     //Resistance (in ohm)

//Calculation

VD = 0                      //Voltage drop across diode (in volts)
VR = VS                     //Value of VR (in volts)
I = VS/R                    //Current (in Ampere)

//Result

printf("\n Value of VD is  %0.3f  V.\nValue of VR is  %0.3f  V.\nCurrent through the circuit is  %0.2f  mA.",VD,VR,I*10**3)
