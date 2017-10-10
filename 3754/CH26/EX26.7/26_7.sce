clear//

//Variables

VCC = 10.0                          //Source voltage (in volts)
R1 = 800.0                          //Resistance (in ohm)
R2 = 200.0                          //Resistance (in ohm)
R3 = 600.0                          //Resistance (in ohm)
R4 = 200.0                          //Resistance (in ohm)
R5 = 100.0                          //Resistance (in ohm)
R6 = 1000.0                         //Resistance (in ohm)
beta1=100.0;beta2=100.0;
VBE = 0.7                           //Emitter-to-base voltage (in volts)

//Calculation

VR2 = VCC * (R2 / (R1 + R2))        //Voltage across resistance2 (in volts)
IE1 = (VR2 - VBE)/R2                //Emitter current of Q1 transistor (in Ampere)
IC1 = IE1                           //Collector current of Q1 transistor (in Ampere)
VC1 = VCC - IC1 * R3                //Voltage at the collector of Q1 transistor (in volts)
VE1 = IE1 * R4                      //Voltage at the emitter of Q1 transistor (in volts)
VCE1 = VC1 - VE1                    //Collector-to-emitter voltage of Q1 transistor (in volts)
VE2 = VC1 - (-VBE)                  //Voltage at the emitter of Q2 transistor (in volts)
IE2 = (VCC - VE2)/R6                //Emitter current of Q2 transistor (in Ampere)
IC2 = IE2                           //Collector-current of Q2 transistor (in Ampere)
VC2 = IC2 * R5                      //Voltage at the collector of Q2 transistor (in volts)
VCE2 = VC2 - VE2                    //Collector-to-emitter voltage of Q2 transistor (in volts)

r1e1 = 25.0 / IE1 * 10**-3          //a.c. emitter diode resistance of Q1 transistor (in ohm)
r1e2 = 25.0 / IE2 * 10**-3          //a.c. emitter diode resistance of Q2 transistor (in ohm)
Ri2 = beta2 * (r1e2 + R6)           //Input resistance of second stage (in ohm)
Ro1 = R3 * Ri2 / (R3 + Ri2)         //Output resistance of first stage (in ohm)
Av1 = Ro1 / (r1e1 + R4)             //Voltage gain of first stage
Av2 = 1.0                           //Voltage gain of second stage         
Av = Av1 * Av2                      //Overall voltage gain

//Result

printf("\n Emitter current of Q1 transistor is  %0.3f  mA.\nCollector current of Q1 transistor is  %0.3f  mA.\nEmitter current of Q2 transistor is  %0.3f  mA.\nCollecotr-current of Q2 transistor is  %0.3f  mA.",IE1*10**3,IC1*10**3,IE2*10**3,IC2*10**3)
printf("\n Collector-to-emitter voltage of Q1 transistor is  %0.3f  v.\nCollector-to-emitter voltage of Q2 transistor is  %0.3f .",VCE1,VCE2)
printf("\n Overall voltage gain is  %0.2f .",Av)
