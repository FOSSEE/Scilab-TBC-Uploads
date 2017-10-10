clear//

//Variables

VGS1 = -3.1                          //Gate-Source voltage (in volts)
VGS2 = -3.0                          //Gate-Source voltage (in volts)
ID1 = 1.0                            //Drain current (in milli-Ampere)                  
ID2 = 1.3                            //Drain current (in milli-Ampere)

//Calculation

dVGS = VGS2 - VGS1                   //Change in Gate-Source voltage (in volts)
dID = ID2 - ID1                      //Change in Drain current (in milli-Ampere)
gm = dID / dVGS                      //Transconductance (in milli-Ampere per volt)

//Result

printf("\n The value of transconductance is  %0.3f  mA/V.",gm)
