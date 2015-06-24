//Chapter-1, Example 1.48, Page 53
//=============================================================================
clc;
clear;
//INPUT DATA
RAB=1;//Resistance across AB in ohms
ROB=4;//Resistance across OB in ohms
RBC=2;//Resistance across BC in ohms
RAC=1.5;//resistance across AC in ohms
V=10;// supply voltage in volts
//let ROC is R ohms
//applying KVL to meshes I,II and III
//RAB*(I1)+0+ROB*(I1-I3)=0-------eqn(1)
//RAC*(I2)+ROC*(I2-I3)=0---------eqn(2)
//ROB*(I3-I1)+R*(I3-I2)+RBC*I3=10------eqn(3)
//solving eqn(1) we get it as (I2=I1) and applying it in eqn(2) we get R as 6 ohms
R=6;//Resistance ROC
//solving eqn(1),(2)and (3)
//CALCULATIONS 
[a]=[RAB+ROB,0,-ROB;0,(RAC+R),-R;-ROB,-R,(RBC+R+ROB)];
[b]=[0;0;10];
[c]=inv(a)*(b);
I1=c(1);//current in mesh1 in A
I2=c(2);//current in mesh2 in A
I3=c(3);//current in mesh3 in A
I=(I3-I2);//current flowing through R
//OUTPUT
mprintf("current across resistor R is %1.1f amps",I);
 //=================================END OF PROGRAM==============================
