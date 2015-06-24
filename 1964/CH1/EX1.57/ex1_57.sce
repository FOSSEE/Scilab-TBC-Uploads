//Chapter-1, Example 1.57, Page 67
//=============================================================================
clc;
clear;
//INPUT DATA
I1=25;//current source in A
I2=6;//current source in A
I3=5;//current source in A
RAB=5;//Resistance in ohms
RAC=10;//Resistance in ohms
RBC=2;//Resistance in ohms
//let currents across AC and BC and AB are Ix,Iy and Iz respectively
//applying kirchoff's current law at node A
//-I1+Ix+I3+Iz=0------eqn(1)
//applying kirchoff's current law at node B
//-Iz-I3+Iy+I2=0------eqn(2)
//CALCULATIONS 
[a]=[((1/RAC)+(1/RAB)),(-1/RAB);(-1/RAB),((1/RAB)+(1/RBC))];
[b]=[20;-1];
[c]=inv(a)*(b)
VA=c(1);//voltage at node A
VB=c(2);//voltage at node B
//OUTPUT
mprintf("Thus voltages at node A and B are %2.1f V and %2.1f V",-VA,VB);
 //=================================END OF PROGRAM==============================


