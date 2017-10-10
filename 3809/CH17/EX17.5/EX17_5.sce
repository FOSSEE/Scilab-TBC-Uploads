//Chapter 17, Example 17.5
clc
//Initialisation
r1=10**6                           //resistance in ohm
r2=2*10**6                         //resistance in ohm
Rd=3.3*10**3                       //resistance in ohm
Rs=10**3                            //resistance in ohm
c=10**-6                            //capactance in farad
pi=3.14                             //pi

//Calculation
ri=(r1*r2)/(r1+r2)                //resistance in R1 & R2 parallel
ro=Rd                              //output resistance
av=-Rd/Rs                          //votlage gain
fc=1/(2*pi*ri*c)                   //frequency in Hz

//Results
printf("Input resistance ri = %d kOhm\n",round(ri/1000))
printf("Output resistance ro = %.1f kOhm\n",ro/1000)
printf("Small Signal Voltage Gain = %.1f\n",av)
printf("Fo = %.2f Hz ",fc)
