//Chapter 9, Example 9.1

clc
//Initialisation'
C=100*10**3                   //capacitance in farad
R=100*10**-6                         //resistance in ohm
t=25                                //time in seconds
V=20                                //voltage
//Calculation
T=C*R                            //time constant in sec
v=V*(1-exp(-t/T))                //output voltage

//Results
printf("Output Voltage = %.2f V",v)

