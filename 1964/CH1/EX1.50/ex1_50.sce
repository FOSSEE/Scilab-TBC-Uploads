//Chapter-1, Example 1.50, Page 55
//=============================================================================
clc;
clear;
//INPUT DATA
RAB=25;//Resistance in ohms
RBC=10;//Resistance in ohms
RAD=20;//Resistance in ohms
RCD=15;//resistance in ohms
RG=50;//resistance of galvanometer in ohms
REF=2;//internal resistance in ohms
V=25;// supply voltage in volts
//let currents in mesh I,II and III is I1,I2,I3 respectively
//applying KVL to meshes I,II and III
//(RAB+RG+RAD)*(I1)-(RG)*(I2)-(RAD)*(I3)=0-------eqn(1)
//-(RG)*(I1)-(RG+RCD+RBC)*(I2)-(RCD)*(I3)=0---------eqn(2)
//-(RAD)*(I1)-(RCD)*(I2)+(RAD+RCD+REF)=-V---eqn(3)
//solving eqn(1),(2)and (3)
//CALCULATIONS 
[a]=[RAB+RG+RAD,-RG,-RAD;-RG,(RG+RCD+RBC),-RCD;-RAD,-RCD,(RAD+RCD+REF)];
[b]=[0;0;-V];
[c]=inv(a)*(b);
I1=c(1);//current in mesh1 in A
I2=c(2);//current in mesh2 in A
I3=c(3);//current in mesh3 in A
I=(I1-I2);//currentthrough galvanometer in Amps
//OUTPUT
mprintf("current across galavanometer is %1.5f amps",I);
 //=================================END OF PROGRAM==============================
