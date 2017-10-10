//Chapter 19, Example 19.2

clc
//Initialisation
rl=5                 //resistance in ohm
vo=10                //Output Voltage
vi=15                //input voltage

//Calculation
io=vo/rl                    //current in ampere
po=vo*io                    //power delivered to load
pt=(vi-vo)*io               //power delivered to output transistor


//Results
printf("Output Power on Load Po = %d W\n",round(po))
printf("Output Power on O/P Transistor Pt = %d W",round(pt))

