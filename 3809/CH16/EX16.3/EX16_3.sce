//Chapter 16, Example 16.3
clc
//Initialisation
vz=3.6                        //voltage
Rl=200                     //resistance in ohm
ron=10                      //internal resistance in ohm
R=47                          //chosen value of resistor in ohm
V=5.5                          //minimum supply voltage
IL=0.018                       //current in ampere

//Calculation
Il=vz/Rl                       //current in ampere
Pr=(V-vz)**2/R                  //power in watt
Pz=(((V-vz)/R)-IL)*vz               //power in watt

//Results
printf("Pr(max) = %d mW\n",round(Pr*1000))
printf("Pz(max) = %d mW",round(Pz*1000))
