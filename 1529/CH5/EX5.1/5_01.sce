//Chapter 5, Problem 1, Figure 5.2
clc;
V1=5;                                                     //assigning the value to parameters
V2=2;
V3=6;
I=4;
V=V1+V2+V3;                                            //Calculating the Battery voltage
printf("Battery Voltage = %f V\n\n",V);               // Displaying the value
R=V/I;                                                //Calculating the total resistance
printf("Total circuit resistance = %f ohm\n\n",R);
R1=V1/I;                                                //Calculating the invidual resistance
R2=V2/I;
R3=V3/I;
printf("Resistance R1 = %f ohm\n\n",R1);
printf("Resistance R2 = %f ohm\n\n",R2);
printf("Resistance R3 = %f ohm\n\n",R3);
