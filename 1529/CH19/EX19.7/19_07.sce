//Chapter 19, Problem 7
clc;
R1=4.7e3;                   //resistance 1
R2=10e3;                    //resistance 2
Vi=-0.4;                    //input voltage
Av=1+(R2/R1);               //voltage gain
V0=Av*Vi;                   //output voltage
printf("(a) Voltage gain = %.2f \n\n",Av);
printf("(b) Output voltage = %.2f V\n\n",V0);
