//Chapter-1, Example 1.24, Page 40
//=============================================================================
clc;
clear;
//INPUT DATA
R1=4;//resistance in ohms
R2=6;////resistance in ohms
I=30;//current through parallel combination in A
//CALCULATIONS 
I1=I*(R2/(R1+R2));//current through resistor1 in A
I2=I-I1;//current through resistor2 in A
//OUTPUT
mprintf("Thus the current through resistor1 and resistor2 are %d A and %d A  respectively",I1,I2);
 //=================================END OF PROGRAM==============================
