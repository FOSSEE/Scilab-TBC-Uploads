// Problem 2, Figure 5.3
clc;
R=100;                              //Assigning the values to variable
V=25;
V1=10;
V2=4;
V3=V-V1-V2;                        //Calculating the voltage across Resistor R3
printf("Potential difference across R3 = %f V\n\n\n",V3);
I=V/R;                             //Calculating the current
printf("Current flowing through each resistor = %f A\n\n\n",I);
R2=V2/I;                           //Calculating the resistance of R2
printf("Resistance R2 = %f ohm\n\n\n",R2);
