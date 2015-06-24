//Chapter-1, Example 1.41, Page 50
//=============================================================================
clc;
clear;
//INPUT DATA
I1=2;//current through R1 in A
I3=1.5;//current through R3 in A
I5=0.5;//current through R5 in A
P2=75;//power dissipated in R2 in W
P4=30;//power dissipated in R4 in W
V=200;//supply voltage in volts
//let the current through R2 and R4 be I2 and I4 respectively
//CALCULATIONS 
I2=I1-I3;//current through R2 in A
I4=I3-I5;//current through R4 in A
R2=P2/(I2)^2;//resistance R2 in Ohms
R4=P4/(I4)^2;//resistance R4 in Ohms
R5=(R4*I4)/(I5);//resistance R5 in Ohms
//(R1*I1)+(R2*I2)=200
//(R3*I3)+(R4*I4)=(R2*I2)
R1=((V-(R2*I2))/I1);//resistance R1 in Ohms
R3=((R2*I2)-(R4*I4))/(I3);//resistance R3 in Ohms
//OUTPUT
mprintf("R1=%d ohms \n R2=%d ohms \n R3=%d ohms \n R4=%d ohms \n R5=%d ohms ",R1,R2,R3,R4,R5);
 //=================================END OF PROGRAM==============================
