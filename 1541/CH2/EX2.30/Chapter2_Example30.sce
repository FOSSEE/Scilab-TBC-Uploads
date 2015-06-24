//Chapter-2, Example 2.30, Page 2.57
//=============================================================================
clc
clear

//INPUT DATA
V1=250;//Primary voltage in V
V2=100;//Secondary voltage in V
I1=0.4;//Primary current in A
Wo=36;//No load power input in W

//CALCULATIONS
K=(V2/V1);//Voltage transformation ratio 
q=acosd(Wo/(V1*I1));//Phase angle in degree
Im=(I1*sind(q));//Magnetising current in A
Iw=(I1*cosd(q));//Working current in A
I=(I1*V1*cosd(q));//Iron loss in W

//OUTPUT
mprintf('(a)Turns ratio is %3.1f \n(b)Magnetising current is %3.3f A \n(c)Working current is %3.3f A \n(d)Iron loss is %3.0f W',K,Im,Iw,I)

//=================================END OF PROGRAM==============================
