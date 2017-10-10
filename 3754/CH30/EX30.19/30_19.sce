clear//

//Variables

gmo = 5.0 * 10**-3                       //Maximum transconductance (in Siemen)
RD = 1.0 * 10**3                         //Drain resistance (in ohm)
RS = 200.0                               //Source resistance (in ohm)
ID = 5.0 * 10**-3                        //Drain current (in Ampere)

//Calculation

R1i = RS * 1/gmo /(RS + 1/gmo)           //Input resistance (in ohm)
VS = ID * RS                             //Source voltage (in volts) 
VGS = VS                                 //Gate-to-Source voltage (in volts)
IDSS = 2 * ID                            //Supply current (in Ampere)
VGSoff = -2 * IDSS / ID                  //Gate-to-source cut off voltage (in volts)
gm = gmo * (1 - abs(VGS / VGSoff))       //Transconductance (in Siemen) 
Av = gm * RD                             //Voltage gain  

//Result

printf("\n Input resistance is  %0.3f  ohm.\na.c. voltage gain is  %0.3f .",R1i,Av)
