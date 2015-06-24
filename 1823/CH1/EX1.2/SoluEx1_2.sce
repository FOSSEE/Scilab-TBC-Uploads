//Solved Example 1.2 
//Page no 4
//Find the current i2 by superposition theorem
clear
clc
printf("\n Find the current i2 by superposition theorem")
R1=1            //ohm
R2=1            //ohm
R3=1            //ohm
Vs=10           //simWtv
Vb=10              //v
a=0
V21=1/3*Vs//simWtv
i21=V21/R2
Is=3//A
temp=R1*R2/(R1+R2)//Temp=R1||R2
i32=Vb/(R3+temp)
i22=(R1/(R1+R2))*i32
i2=i21+i22
i1=(Vs/(R1+R2))
printf("\n the current i2 by superposition theorem = %1.2f A",i2)
