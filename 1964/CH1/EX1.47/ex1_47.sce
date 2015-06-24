//Chapter-1, Example 1.47, Page 53
//=============================================================================
clc;
clear;
//INPUT DATA
R1=20;//Resistance in ohms
R2=50;//Resistance in ohms
R3=30;//Resistance in ohms
R4=15;//Resistance in ohms
V=100;// supply voltage in volts
//applying KVL to meshes I and II
//R1*(I1)+(R3)*(I1-I2)=V;-------eqn(1)
//(R2+R4)*(I2)+(R3)*(I2-I1)=0;---------eqn(2)
//solving eqn(1) and eqn(2)
//CALCULATIONS 
[a]=[R2,-R3;-R3,(R3+R4+R2)];
[b]=[V;0];
[c]=inv(a)*(b);
I1=c(1);//current in mesh1 in A
I2=c(2);//current in mesh2 in A
//OUTPUT
mprintf("current across 15 ohm resistor is %1.4f amps",I2);
 //=================================END OF PROGRAM==============================
