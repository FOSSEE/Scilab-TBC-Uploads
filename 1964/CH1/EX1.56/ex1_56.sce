//Chapter-1, Example 1.56, Page 66
//=============================================================================
clc;
clear;
//INPUT DATA
RAB=6;//Resistance in ohms
RBC=3;//resistance in ohms
RBD=4;//resistance in ohms
V1=25;//source voltage in volts
V2=45;//source voltage in volts
//CALCULATIONS 
//applying kirchoff's current law at node B
//-I1-I2+I3=0
//I1=(V1-VB)/RAB
//I2=(V3-VB)/RBC
//I3=VB/RBD
VB=((V1/RAB)+(V2/RBC))/((1/RAB)+(1/RBC)+(1/RBD));
I1=(V1-VB)/(RAB);//current across AB
I2=(V2-VB)/(RBC);//current across BC
I3=(VB)/(RBD);//current across BD
//OUTPUT
mprintf("Thus currents I1,I2,I3 are %1.1f A %1.2f A %1.1f A",I1,I2,I3);
 //=================================END OF PROGRAM==============================


