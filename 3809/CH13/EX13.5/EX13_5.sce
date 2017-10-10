//Chapter 13, Example 13.5

clc
//Initialisation
ri=1000                         //resistance in ohm
rl=50                                //resistance in ohm
vi=1.82                     //input voltage
vo=15.2                  //output voltage



//Calculation

po=vo**2/rl                            //output power in watt
pi=vi**2/ri                            //input power in watt
ap1=po/pi                           //power gain

//Results
printf("Power Gain, Ap = %d",ap1)

