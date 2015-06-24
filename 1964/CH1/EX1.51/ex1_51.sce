//Chapter-1, Example 1.51, Page 56
//=============================================================================
clc;
clear;
//INPUT DATA
V1=100;//source1 voltage in volts
V2=50;//source2 voltage in volts
R1=10;//Resistance in ohms
R2=20;//resistance in ohms
R3=30;//resistance in ohms
R4=40;//resistance in ohms
//let currents in mesh I,II is I1,I2 respectively
//applying KVL to meshes I,II 
//(R1+R3+R4)*(I1)-(R3)*(I2)=V1-------eqn(1)
//(R3)*(I1)-(R2+R3)*(I2)=-V2---------eqn(2)
//solving eqn(1),(2)
//CALCULATIONS 
[a]=[(R1+R3+R4),-R3;R3,-(R2+R3)];
[b]=[V1;-V2];
[c]=inv(a)*(b);
I1=c(1);//current in mesh1 in A
I2=c(2);//current in mesh2 in A
I=(I2-I1);//current through R3 in Amps
//OUTPUT
mprintf("current across 30 ohm resistor is %1.3f amps",I);
 //=================================END OF PROGRAM==============================
