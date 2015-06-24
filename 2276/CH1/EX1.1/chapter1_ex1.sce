clc
clear

//input
r1=4;//resistance between point A and B in ohms which is in series with 10 volts d.c. supply.
r2=3;//resistance between points C and D in ohms which is in series with a d.c. supply of 8 volts.
r3=5;//resistance betwwen points F and G in ohms
//arms AB.CD,FG are in parallel with each other.
v1=10;//d.c. supply voltage in the arm AB in volts
v2=8;//d.c. supply voltage in the arm CD in volts

//calculations
//using SUPER POSITION THEOREM
//voltage source of 8 volts is neglected and supply is 10 volts d.c
R1=r1+((r2*r3)/(r2+r3));// total resistance in ohms
bIa1=v1/R1;//current in arm AB in amperes 
cId1=v1*(r3/(R1*(r2+r3)));//current in arm CD in amperes
dIc1= -cId1;
fIg1=(v1/R1)-cId1;//current in arm FG in amperes
//voltage source of 10 volts is neglected and supply is 8 volts d.c
R2=r2+((r1*r3)/(r1+r3));//total resistance in ohms
dIc2=v2/R2;//current in arm CD in amperes
aIb2=v2*(r3/(R2*(r3+r1)));//current in arm AB in amperes
bIa2= -aIb2;
fIg2=(v2/R2)-aIb2;//current in arm FG in amperes
I1=bIa1+bIa2;//current in 10 V source in amperes
I2=dIc1+dIc2;//current in 8V source in amperes
I3=fIg1+fIg2;//current in arm FG in amperes

//output
mprintf('the currents in the circuit are %3.5f A %3.5f A %3.5f A',I1,I2,I3)
