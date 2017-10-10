clc
Pk=75 //core loss of transfomer in watts
R=0.048 //internal resistance in ohms
V2=240// secondary voltage in volts
I2=sqrt(Pk/R)//secondary current in amperes
mprintf("I2=%f A\n",I2)//ans may vary due to roundoff error
mprintf("|S|=V2*I2=%d VA",V2*I2)//The answer in the textbook is wrong //output volt ampere of transformer





