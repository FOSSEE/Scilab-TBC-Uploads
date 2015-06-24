//Chapter-1, Example 1.34, Page 46
//=============================================================================
clc;
clear;
//INPUT DATA
V=4.5;//supply voltage of battery in volts
RAB=1000;//resistance between A and B points in ohms
RBC=100;//resistance between B and C points in ohms
RAD=5000;//resistance between A and D points in ohms
RCD=450;//resistance between C and D points in ohms
Rg=500;//resistance of galvanometer in ohms
//let I1 be the current across RAB and I1-Ig across RBC and I2 across RAD and I2+Ig across RCD and I be the total current
//where I=I1+I2
//CALCULATIONS 
//(-(RAB*I1)-(Rg*Ig)+(RAD*I2))=0;//applying KVL to loop ABDA -------------eqn(1)
//(-(RBC*I1)+((Rg+RCD+RBC)*(Ig))+(RCD*I2))=0;//applying KVL to loop BCDB -------------eqn(2)
//((RAD+RCD)*I2)+(RCD*Ig))=V;//applying KVL to loop EADCFE-------------eqn(3)
//solving  eqn(1),eqn(2) and eqn(3)
[a]=[-RAB,-Rg,RAD;-RBC,(Rg+RCD+RBC),RCD;0,RCD,(RAD+RCD)];
[b]=[0;0;V];
[c]=inv(a)*(b)//ax=b
I1=c(1);//c1 is current in branch FABC measured in A
Ig=c(2);//c2 is current in branch CDEF measured in A 
I2=c(3);//current in branch CF in A
//OUTPUT
mprintf("Current through galvanometer is %g A \n since the answer is positive our assumed direction is correct ",Ig);
 //=================================END OF PROGRAM==============================
