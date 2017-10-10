clear//

//Variables

VL = 12.0                      //Voltage across load (in volts)
IL = 200.0                     //Load current (in milli-Ampere)
VS = 30.0                      //Source voltage (in volts)
RS = 10.0                      //Series resistance (in ohm)
beta1=150.0;hfe1=150.0;
beta2=100.0;hfe2=100.0;
IC1 = 10.0                     //Collector current (in milli-Ampere)
VBE1 = 0.7                     //Emitter-to-Base voltage1 (in volts)
VBE2 = 0.7                     //Emitter-to-Base voltage2 (in volts)
VZ=6.0;VR=6.0;
RZ = 10.0                      //Resistance of zener diode (in ohm)
IZ = 20.0                      //Current through zener diode (in milli-Ampere)
ID = 10.0 * 10**-3             //Current (in Ampere) 
I1 = 10.0 * 10**-3             //Current (in Ampere)   

//Calculation

RD = (VL - VZ) / ID            //Resistance (in ohm)
V2 = VZ + VBE2                 //Voltage (in volts)
R1 = (VL - V2)/I1              //Value of resistance R1 (in ohm)
R2 = R1 * (V2 / (VL - V2))     //Value of resistance R2 (in ohm)
IB1 = (IL + I1 + ID) / beta1   //Base Current IB1 (in Ampere)
I = IB1 + IC1                  //Current through resistance R3 (in Ampere)
R3 = (VS - (VBE1 + VL))/I      //Value of resistance (in ohm)  

//Result

printf("\n Value of Resistance RD is  %0.3f  ohm.\nValue of Resistance R1 and R2 is  %0.3f  ohm and  %0.3f  ohm.",RD,R1,R2)
printf("\n Value of Resistance R3 is  %0.1f  kilo-ohm.",R3)
