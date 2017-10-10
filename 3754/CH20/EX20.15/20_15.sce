clear//

//Variables

VS = 15.0                   //Input voltage (in volts)
RS = 33.0                   //Series resistance (in ohm)
beta = 100.0                //common-emitter current gain 
RL = 100.0                  //Load resistance (in ohm)
VZ = 10.0                   //Voltage across zener diode (in volts) 
VBE = 0.7                   //Voltage across base and emitter

//Calculation

VL = VZ + VBE               //Load voltage (in volts)
IL = VL / RL                //Load current (in Ampere)
IS = (VS - VL) / RS         //Current through RS (in Ampere)
IC = IS - IL                //Collector current (in Ampere)
IB=IC/beta;IZ=IC/beta;

//Result

printf("\n Load voltage is  %0.3f  V.",VL)
printf("\n Load current is  %0.3f  mA.",IL * 10**3)
printf("\n Current  through Rs is  %0.1f  mA.",IS * 10**3)
printf("\n Collector current is  %0.1f  mA.",IC* 10**3)
printf("\n Base current is  %0.0f  micro-A." ,IB * 10**6)
