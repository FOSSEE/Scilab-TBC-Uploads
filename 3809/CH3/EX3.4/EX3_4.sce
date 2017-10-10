//Chapter 3, Example 3.4
clc

R1=25               //resistance in ohm
R2=400              //resistance in ohm

//To solve simultaneous equation by converting them into matrices form
a=[R1 -2;R2 -8]
b=[50;3200]
x=a\b

//Results
printf("Voc = %d V\n",x(1))              //display voltage Voc
printf("R = %d Ohm",x(2))                 //display Resistance R
