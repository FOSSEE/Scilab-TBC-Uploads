//Chapter 15, Example 15.6

clc
//Initialisation
g=2*10**5                   //open loop gain
g2=20                       //closed loop gain
ro=75                        //ouput resistance
ri=2*10**6                   //input resistance
r1=1000                      //resistance in ohm

//Calculation
ab=g/g2                      //1 + AB
ro1=ro/ab                    //output resistance in ohm


//Results
printf("Output Resistance = %.1f mOhm\n",ro1*1000)
printf("Input Resistance = %d kOhm\n",r1/1000)


