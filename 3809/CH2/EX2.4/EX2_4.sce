//Chapter 2, Example 2.4
clc
//Initialisation
v1=5                 //voltage
v2=5                 //voltage
r=10                 //resistance in ohm



//Calculation
p1=v1^2/r              //Power in watt when a constant 5 V applied
p2=v2^2/r              //Power in watt when a sine wave of 5 V r.m.s is applied
p3=((v1^2)/2)/r        //Power in watt when a sine wave of 5 V peak is applied

//Result
printf("(a) P = %.1f W\n",p1)
printf("(b) Pav = %.1f W\n",p2)
printf("(c) Pav = %.2f W\n",p3)
