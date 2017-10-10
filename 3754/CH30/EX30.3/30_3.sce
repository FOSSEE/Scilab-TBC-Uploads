clear//

//Variables

ID = 1.5 * 10**-3                  //Drain current (in Ampere)
IDSS = 5.0 * 10**-3                //Drain-to-source current (in Ampere)     
Vp = -2.0                          //Voltage (in volts)
VDS = 10.0                         //Drain-to-source voltage (in volts)
VDD = 20.0                         //Supply voltage (in volts)  

//Calculation

VGS = (1 - ID/IDSS)*Vp             //Gate-to-Source voltage (in volts)
VS = -VGS                          //Source voltage (in volts)
RS = VS / ID                       //Source resistance (in ohm)
RD = (VDD - VDS) / ID - RS         //Drain resistance (in ohm)

//Result

printf("\n Value of RS is  %0.0f  ohm.\nValue of RD is  %0.1f  kilo-ohm.",RS,RD*10**-3)
