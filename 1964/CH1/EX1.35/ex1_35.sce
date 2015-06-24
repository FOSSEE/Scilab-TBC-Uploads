//Chapter-1, Example 1.35, Page 47
//=============================================================================
clc;
clear;
//INPUT DATA
V1=8;//supply voltage of battery in loop1 in volts
V2=4;//supply voltage of battery in loop2 in volts
RED=200;//resistance between E and D points in ohms
RAD=20;//resistance between A and D points in ohms
RCD=50;//resistance between C and D points in ohms
//let I1 be the current across path AFED and I2 across AD and I1-I2 across  path DCBA 
//CALCULATIONS 
//((RCD*I1)-((RAD+RCD)*I2))=4;//applying KVL to loop ADCBA -------------eqn(1)
//((RED*I1)+(RAD*I2))=8;//applying KVL to loop AFEDA -------------eqn(2)
//solving  eqn(1)and eqn(2)
[a]=[RCD,-(RAD+RCD);RED,RAD];
[b]=[4;8];
[c]=inv(a)*(b)//ax=b
I1=c(1);//c1 is current across path AFED in A
I2=c(2);//c2 is current across AD in A
//OUTPUT
mprintf("Current in 20 ohm resistor  is %f A \n since the answer is negative,the current actually flows from A to D ",I2);
 //=================================END OF PROGRAM==============================
