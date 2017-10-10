clear//

//Variables

PDmax = 500                            //Maximum Power dissipation at 25 degree Celsius (in milli-watt)
DF = 2.28                              //derating factor (in milli-watt per degree Celsius)
T = 70                                 //Temperaure (in degree Celsius)

//Calculation

PDmax70 = PDmax - DF * (T - 25)        //Maximum Power dissipation at 70 degree Celsius (in milli-watt)

//Result

printf("\n Maximum power dissipation at 70 degree Celsius is  %0.0f  mW."  ,PDmax70)
