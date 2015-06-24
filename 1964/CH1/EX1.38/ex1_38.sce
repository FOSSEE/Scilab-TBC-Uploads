//Chapter-1, Example 1.38, Page 49
//=============================================================================
clc;
clear;
//INPUT DATA
R1=2;//resistance R1 in Ohms
R2=12;//resistance R2 in parallel circuit measured in ohms
R3=20;//resistance R3 in parallel circuit measured in ohms
R4=30;//resistance R4 in parallel circuit measured  in ohms
R5=2;//resistance R5 in ohms
V=100;//supply voltage in volts
//CALCULATIONS 
Reff=(R1)+((1)/((1/R2)+(1/R3)+(1/R4)))+(R5);//total effective resistance of circuit in ohms
I=V/Reff;//total current in A
// let individual currents in 3 parallel resistance network be I1,I2,I3 respectively
//Then I1+I2+I3=I---eqn(1)
//where I2=(I1*R1/R2) and I3=(I1*R1/R3)
//solving for I1 in eqn(1)
I1=I/2;//in A
I2=(I1*R2/R3);//in A
I3=(I1*R2/R4);//in A
mprintf("I1=%d A \n I2=%1.0f A \n I3=%1.0f A",I1,I2,I3); 
 //=================================END OF PROGRAM==============================
