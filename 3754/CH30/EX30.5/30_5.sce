clear//

//Variables

VP=5.0;VGSoff=5.0;
IDSS = 12.0 * 10**-3                //Drain-to-source current (in Ampere)
VDD = 12.0                          //Drain voltage (in volts)
ID = 4.0 * 10**-3                   //Drain current (in Ampere)
VDS = 6.0                           //Drain-to-source voltage (in volts)

//Calculation

VGS = (1 - (ID / IDSS)**0.5)*VGSoff //Gate-to-source voltage (in volts)
VS = VGS                            //Source voltage (in volts)
RS = VS / ID                        //Source resistance (in ohm)
RD = (VDD - VDS) / ID               //Drain resistance (in ohm)

//Result

printf("\n Value of RD is  %0.3f  kilo-ohm.\nValue of RS is  %0.0f  ohm.",RD*10**-3,RS)
