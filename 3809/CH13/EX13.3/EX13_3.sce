//Chapter 13, Example 13.3

clc
//Initialisation'
rl=50                                //resistance in ohm
ro=0                                  //resistance in ohm
vs=2                               //voltage
ao=10                               //output gain

//Calculation
vi=vs                     //input voltage
vo=ao*vi*(rl/(ro+rl))                  //output voltage


//Results
printf("Output Voltage = %.2f V",vo)

