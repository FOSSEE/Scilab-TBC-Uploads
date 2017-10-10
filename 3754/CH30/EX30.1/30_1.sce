clear//

//Variables

ID = 5.0 * 10**-3              //Drain current (in Ampere)
VDD = 10.0                     //Voltage (in volts)
RD = 1.0 * 10**3               //Drain resistance (in ohm)
RS = 500.0                     //Source resistance (in ohm)                    

//Calculation

VS = ID * RS                   //Source voltage (in volts)
VD = VDD - ID * RD             //Drain voltage (in volts)
VDS = VD - VS                  //Drain-Source voltage (in volts)
VGS = -VS                      //Gate-to-source voltage (in volts)

//Result

printf("\n Value of drain-to-source voltage is  %0.3f  V.\nValue of Gate-to-source voltage is  %0.3f  V.",VDS,VGS)
