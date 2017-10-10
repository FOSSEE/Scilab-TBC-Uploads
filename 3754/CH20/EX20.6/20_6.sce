clear//

//Variables

VS = 30.0                   //Source voltage (in volts)
RS = 240.0                  //Series resistance (in ohm)
Vz = 12.0                   //Zener voltage (in volts)
RL = 500.0                  //Load resistance (in ohm)

//Calculation

VL = Vz                     //Voltage drop across load (in volts)
IS = (VS - Vz) / RS         //Current through RS (in Ampere)
VRS = IS * RS               //Voltage drop across series resistance (in volts)
IL = VL / RL                //Load current (in Ampere)
IZ = IS - IL                //Zener current (in Ampere)

//Result

printf("\n Load voltage is  %0.3f  V.\nVoltage drop across series resistance is  %0.3f  V.\nCurrent through Zener diode is  %0.3f  A.",VL,VRS,IZ)
