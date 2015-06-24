clc
disp("Example 3.3")
printf("\n")
printf("Given")
disp("Equivalent resistance of three resistors is 750 ohm")
disp("values of two resistors are 40 ohm and 410 ohm")
Req=750;R1=40;R2=410;

//For series resistance 
disp("Req=R1+R2+R3")
//On solving for R3
R3=Req-R1-R2
printf("Value of third ohmic resistor is %dohm\n",R3)
