clear//

//Variables

IDon = 10.0                           //Drain current (in milli-Ampere)
VGS = -12.0                           //Gate-Source voltage (in volts)
VGSth = -3.0                          //Threshold Gate-Source voltage  (in volts)
VGS1 = -6.0                           //Gate-Source voltage in another case (in volts)

//Calculation

K = IDon/(VGS - VGSth)**2             //Transconductance (milli-Ampere per volt)
ID = (K) * (VGS1 - VGSth)**2   //Drain current (in milli-Ampere)


//Result

printf("\n Since the value of VGS is negative for the enhancement-type MOSFET ,this indicated that device is P-channel.")
printf("\n The value of ID when VGS = -6 V is  %0.3f  mA.",ID)
