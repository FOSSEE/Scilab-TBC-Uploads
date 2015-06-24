//Chapter-1, Example 1.27, Page 41
//=============================================================================
clc;
clear;
//INPUT DATA
I=12.1;//current in A entering the parallel combination of resistors
I1=7.2;//current in A in resistor 1
R1=50;//resistance1 in ohm
R2=100;//resistance2 in ohm
//CALCULATIONS 
V=I1*R1;//supply voltage in volts by ohms law(V=I*R)
I2=V/R2;//current through R2 in A  by ohms law
I3=I-I1-I2;//current through resistance3 R3 in A by ohms law
R3=V/I3;//resistance in ohm
//OUTPUT
mprintf("Thus the value of third resistance placed is %3.2f ohm ",R3);
 //=================================END OF PROGRAM==============================
