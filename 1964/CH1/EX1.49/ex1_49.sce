//Chapter-1, Example 1.49, Page 54
//=============================================================================
clc;
clear;
//INPUT DATA
R1=5;//Resistance in ohms
R2=15;//Resistance in ohms
R3=10;//Resistance in ohms
R4=8;//resistance in ohms
R5=12;//resistance in ohms
V1=4;// supply voltage in volts
V2=6;//supply voltage in volts
//let currents in mesh I,II and III is I1,I2,I3 respectively
//applying KVL to meshes I,II and III
//(R1+R2)*(I1)-R2*(I2)=V1-------eqn(1)
//R2*(I1)-(R2+R3+R4)*(I2)+(R4)*(I3)=0---------eqn(2)
//R4*(I2)-(R4+R5)=V2------eqn(3)
//solving eqn(1) we get it as (I2=I1) and applying it in eqn(2) we get R as 6 ohms
R=6;//Resistance ROC
//solving eqn(1),(2)and (3)
//CALCULATIONS 
[a]=[R1+R2,-R2,0;R2,-(R2+R3+R4),R4;0,R4,-(R4+R5)];
[b]=[V1;0;V2];
[c]=inv(a)*(b);
I1=c(1);//current in mesh1 in A
I2=c(2);//current in mesh2 in A
I3=c(3);//current in mesh3 in A
I=(I2-I3);//current flowing through R4 in Amps
//OUTPUT
mprintf("current across 8 ohm resistor is %1.3f amps",I);
 //=================================END OF PROGRAM==============================
