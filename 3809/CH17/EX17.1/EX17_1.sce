//Chapter 17, Example 17.1
clc
//Initialisation
rd=100*10**3                //resistance in ohm
gm=2*10**-3                  //in seimens
RD=2*10**3                   //resistance in ohm
RG=10**6                     //resistance in ohm

//Calculation
ro=((rd*RD)/(rd+RD))                            //Input Resistance
v=-gm*ro                            //Small Signal Voltage Gain  
ri=RG                           //Input Resistance

//Results
printf("Small Signal Voltage Gain = %.1f \n",v)
printf("Input Resistance, ri = %d MOhm \n",ri/10**6)
printf("Ouput Resistance, ro = %d kOhm \n",round(ro/10**3))
