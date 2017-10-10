//Chapter 13, Example 13.2

clc
//Initialisation'
ri=10**3                         //resistance in ohm
rs=100                         //resistance in ohm
rl=50                                //resistance in ohm
ro=10                                  //resistance in ohm
vs=2                               //voltage
ao=10                               //output gain

//Calculation
vi=(ri/(rs+ri))*vs                     //input voltage
vo=ao*vi*(rl/(ro+rl))                  //output voltage
av=vo/vi                                   //voltage gain

//Results
printf("Voltage Gain Av = %.2f",av)

