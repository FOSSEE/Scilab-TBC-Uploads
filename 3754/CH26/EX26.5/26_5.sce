clear//

//Variables

VCC = 10.0                        //Source voltage (in volts)
RB = 470.0 * 10**3                //Base resistance (in ohm) 
RE = 1.0 * 10**3                  //Emitter resistance (in ohm)
RL = 1.0 * 10**3                  //Load resistance (in ohm)
a = 4.0                           //Turn's ratio
beta1=50.0;beta2=50.0;
VBE = 0.7                         //Emitter-to-base voltage (in volts)

//Calculation

IE = VCC/ (RE + RB/beta1)         //Emitter current (in Ampere)
r1e = 25.0 / IE * 10**-3          //a.c. emitter diode resistance (in ohm)
Ri1 = RB*beta1*r1e/(RB+beta1*r1e) //Input resistance of first stage (in ohm)
Ri2 = RB*beta2*r1e/(RB+beta2*r1e) //Input resistance of Second stage (in ohm)
R1i2 = a**2 * Ri2                 //Input resistance of the second stage transformed to primary side (in ohm)
Ro1 = R1i2                        //Output resistance of second stage (in ohm)
R1o2 = a**2 * RL                  //Output resistance of the second stage transformed to the primary side (in ohm)   
Av1 = Ro1/r1e                     //Voltage gain of first stage
Av2 = R1o2/r1e                    //Voltage gain of second stage
Av = Av1 * Av2                    //Overall voltage gain
Gv = 20 * log10(Av)               //Overall voltage gain (in decibels) 

//Result

printf("\n Voltage gain of first stage is  %0.1f .\nVoltage gain of second stage is  %0.1f .\nOverall voltage gain is  %0.0f .\nOverall voltage gain in decibels is  %0.0f  dB.",Av1,Av2,Av,Gv)
