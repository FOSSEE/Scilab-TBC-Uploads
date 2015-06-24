//Chapter-1, Example 1.52, Page 57
//=============================================================================
clc;
clear;
//INPUT DATA
V1=10;//source1 voltage in volts
V2=5;//source2 voltage in volts
V3=5;//source3 voltage in volts
RAH=2;//Resistance in ohms
RAB=3;//resistance in ohms
RBE=5;//resistance in ohms
REG=5;//resistance in ohms
RED=5;//resistance in ohms
RBC=7;//resistance in ohms
RCD=3;//resistance in ohms
RDF=5;//resistance in ohms
RHG=5;//resistance in ohms
//let currents in mesh I,II,III is I1,I2,I3 respectively
//applying KVL to meshes I,II 
//(RAH+RHG+RAB+RBE+REG)*(I1)-(RBE)*(I2)-(REG)*(I3)=V1-------eqn(1)
//-(RBE)*(I1)+(RBC+RCD+RBE+RED)*(I2)-(RDF)*(I3)=-V2---------eqn(2)
//-(REG)*(I1)-(RED)*(I2)+(REG+RED+RDF)*(I3)=-V3--------eqn(3)
//solving eqn(1),(2) and (3)
//CALCULATIONS 
[a]=[(RAH+RHG+RAB+RBE+REG),-RBE,-REG;-REG,(RBC+RCD+RBE+RED),-(RDF);-REG,-RED,(REG+RED+RDF)];
[b]=[V1;-V2;-V3];
[c]=inv(a)*(b);
I1=c(1);//current in mesh1 in A
I2=c(2);//current in mesh2 in A
I3=c(3);//current in mesh3 in A
P1=V1*I1;//power output from V1 in W
P2=V2*I2;//power output from V2 in W
P3=V3*I3;//power output from V3 in W
//OUTPUT
mprintf("power output from 10V is %1.1f W\n from 5V is %1.2fW\n from 5V is %1.2fW ",P1,-P2,-P3);
 //=================================END OF PROGRAM==============================
