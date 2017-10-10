clear//

//Variables

VCC = 12.0                         //Source voltage (in volts)
R1 = 100.0 * 10**3                 //Resistance (in ohm)
R2 = 20.0 * 10**3                  //Resistance (in ohm)
R3 = 10.0 * 10**3                  //Resistance (in ohm)
R4 = 2.0 * 10**3                   //Resistance (in ohm)
R5 = 10.0 * 10**3                  //Resistance (in ohm)
R6 = 2.0 * 10**3                   //Resistance (in ohm)
beta1=100.0;beta2=100.0;

//Calculation

Vth = VCC * R2 / (R1 + R2)         //Thevenin's voltage (in volts)
IE1 = Vth / R4                     //Emitter curren1 (in Ampere)
r1e = 25.0 / IE1 * 10**-3          //a.c. emitter diode resistance (in ohm) 
VR6 = VCC - IE1 * R3               //Voltage across resistance6 (in volts)
IE2 = VR6 / R6                     //Emitter current2 (in Ampere)
r1e2 = 25.0 / IE2 * 10**-3         //a.c. emitter diode resistance2 (in ohm)
Ri2 = beta2*(r1e2 + R6)            //Input resistance of second stage (in ohm)
Ro1 = R3 * Ri2 /(R3 + Ri2)         //Output resistance of first stage (in ohm)
Ro2 = R5                           //Output resistance of second stage (in ohm)
Av1 = Ro1/(r1e + R4)               //Voltage gain of first stage 
Av2 = Ro2/(r1e2 + R6)              //Voltage gain of second stage
Av = Av1 * Av2                     //Overall voltage gain 

//Result

printf("\n Voltage gain of first stage is  %0.1f .\nVoltage gain of second stage is  %0.1f .\nOverall voltage gain is  %0.2f .",Av1,Av2,Av)
