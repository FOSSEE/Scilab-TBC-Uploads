//Chapter 16, Example 16.2
clc
//Initialisation
E=5                        //voltage
R=1000                     //resistance in ohm
Vd=0.7                      //barrier voltage
ron=10                      //internal resistance in ohm

//Calculation
I=E/R                       //current in ampere
I1=(E-Vd)/R                 //current in ampere
I2=(E-Vd)/(R+ron)           //current in ampere

//Results
printf("When no voltage drop, I = %d mA\n",I*1000)
printf("When there is conduction voltage of the diode, I = %.1f mA\n",I1*1000)
printf("When there is conduction voltage and internal resistance if the diode, I2 = %.2f mA\n",I2*1000)
