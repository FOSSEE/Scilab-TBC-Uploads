//Chapter-1, Example 1.26, Page 41
//=============================================================================
clc;
clear;
//INPUT DATA
V=230;//supply voltage in volts
I1=12;//initial current in A
I2=16;//final current in A
//CALCULATIONS 
I=I2-I1;//current through the resistance placed in parallel in A
R=V/I;//resistance in ohms by ohm's law
//OUTPUT
mprintf("Thus the resistance placed in parallel is %2.1f ohm ",R);
 //=================================END OF PROGRAM==============================
