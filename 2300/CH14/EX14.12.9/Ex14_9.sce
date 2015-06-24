//scilab 5.4.1
//Windows 7 operating system
//chapter 14 Integrated Circuits and Operational Amplifiers
clc
clear
R1=10*1000//R1=resistance in ohms
R2=100//R2=resistance in ohms
R3=10*1000//R3=resistance in ohms
R4=10*1000//R4=resistance in ohms
R5=10*1000//R5=resistance in ohms
//Since the voltage gains of the OP AMPs are infinite,the voltages of the points X and Y in the given figure are V1 and V2 respectively
//Applying Kirchhoff's current law at X
//(V1/R1)+((V1-V)/R3)+((V1-V2)/R2)=0
//Applying Kirchhoff's current law at Y
//((V2-V)/R4)+((V2-V1)/R2)+((V2-Vo)/R5)=0
//Eliminating V from the above equations
//V2*((1/R2)+(1/R4)+(1/R5)+(R3/(R2*R4)))-V1*((1/R2)+(1/R4)+((R3/R4)*((1/R1)+(1/R2))))=Vo/R5
//V2*R-V1*r=Vo/R5...................(1)
R=((1/R2)+(1/R4)+(1/R5)+(R3/(R2*R4)))
r=((1/R2)+(1/R4)+((R3/R4)*((1/R1)+(1/R2))))
disp(R,"R=")
disp(r,"r=")
//R=r from above calculation and its answer displayed
//Hence from the above equation (1) A=Vo/(V1-V2)=-(R5*R)=-(R5*r)
disp(-R5*r,"Differential mode gain A=Vo/(V1-V2)=")
