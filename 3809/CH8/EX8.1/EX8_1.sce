//Chapter 8, Example 8.1
clc
//Initialisation
vi=10                        //input voltage
vo=3                        //output voltage
ii=2*10**-3                 //input current in ampere
io=5*10**-3                 //output current in ampere

//Calculation
av=vo/vi                      //voltage gain
ai=io/ii                      //current gain 
ap=(vo*io)/(vi*ii)            //power gain

//Result
printf("Voltage Gain, Av = %.1f\n",av)
printf("Current Gain, Ai = %.1f\n",ai)
printf("Power Gain, Ap = %.2f\n",ap)
