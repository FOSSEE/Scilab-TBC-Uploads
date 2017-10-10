//Chapter 9, Example 9.2
clc
//Initialisation
L=400*10**-3                   //inductance in henry
R=20                         //resistance in ohm
V=15                                //voltage
i=300*10**-3                        //current in amp
e=2.7183                            //exponent

//Calculation
T=L/R                            //time constant in sec
I=V/R                            //current in amp from Ohms Law
t=(log10(I/(I-i))/log10(e))*T     //time period



//Results
printf("t = %.1f ms",t*1000)

