//Chapter 15, Example 15.7

clc
//Initialisation
g=2*10**5                   //open loop gain
g2=1                       //closed loop gain
ro=75                        //ouput resistance
ri=2*10**6                   //input resistance

//Calculation
ab=g/g2                      //1 + AB
ro2=ro/ab                    //output resistance in ohm
ri2=ri*ab                    //input resistance in ohm

//Results
printf("Output Resistance = %.1f uOhm\n",ro2*10**6)       //wrong answerin textbook
printf("Input Resistance = %d GOhm",ri2/10**9)


