//Chapter-1, Example 1.33, Page 46
//=============================================================================
clc;
clear;
//INPUT DATA
V1=25;//supply voltage1 of battery in volts
V2=45;//supply voltage2 of battery in volts
R1=6;//resistance1 in ohms
R3=4;//resistance2 in ohms
R2=3;//resistance3 in ohms
//let I1 be the current in loop1 and I2 current be in loop2
//CALCULATIONS 
//V1=((R1+R3)*(I1)-(R3*I2));//applying KVL in loop1 -------------eqn(1)
//V2=((R3)*(I1)-(R2+R3)*(I2));//applying KVL in loop2 -------------eqn(2)
//solving both eqn(1) and eqn(2)
[a]=[(R1+R3),-R3;(R3),-(R2+R3)]
[b]=[V1;-V2]
[c]=inv(a)*(b)//ax=b
c1=c(1);//c1 is current in branch FABC measured in A
c2=c(2);//c2 is current in branch CDEF measured in A 
c3=c1-c2;//current in branch CF in A
//OUTPUT
mprintf("Current in R1 is %1.4f A \n current in R2 is %2.3f A \n  current in R3 is %1.3f A\n ",c1,c2,c3);
 //=================================END OF PROGRAM==============================
