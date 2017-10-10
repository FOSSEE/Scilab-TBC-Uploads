clear//

//Variables

IDSS = 10.0 * 10**-3                    //Drain-to-source current (in Ampere)
VDD = 20.0                              //Drain voltage (in volts)

//Calculation

IDQ = IDSS / 2                          //Drain current at Q point (in Ampere)
VDSQ = VDD / 2                          //Drain-to-source voltage at Q point (in volts)
VGS = -2.2                              //Gate-to-source voltage (in volts)
ID = 5.0 * 10**-3                       //Drain current (in Ampere)
RD = (VDD - VDSQ) / ID                  //Drain resistance (in ohm)
VS = - VGS                              //Source voltage (in volts)
RS = VS / ID                            //Source resistance (in ohm)      

//Result

printf("\n Operating point is ID =  %0.3f  mA and VDS =  %0.3f  V.",IDQ*10**3,VDSQ)
printf("\n Value of RD is  %0.3f  kilo-ohm and RS is  %0.3f  ohm.",RD*10**-3,RS)
