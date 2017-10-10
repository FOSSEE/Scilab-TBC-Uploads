//Chapter 18, Example 18.2
clc
//Initialisation
Ie=1.02*10**-3
RB=910*10**3                    //resistance in ohm
hfe=100                          //HFE parameter of the transistor
RC=4.7*10**3                    //resistance in ohm
hoe=10*10**-6                          //HOE parameter of the transistor

//Calculation
gm=40*Ie
hie=hfe/(40*Ie)                         //HIE parameter of the transistor
av=-gm*RC/((hoe*RC)+1)                  //small signal voltage gain
ri=(RB*hie)/(RB+hie)                      //Input Resistance
a1=1/hoe
ro=(RC*a1)/(RC+a1)                         //Output Resistance


//Results
printf("Small Signal Voltage Gain = %d \n",av)
printf("Input Resistance = %.1f kOhm \n",ri/1000)
printf("Output Resistance = %.1f kOhm \n",ro/1000)
