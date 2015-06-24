//CHAPTER 10 ILLUSRTATION 5 PAGE NO 271
//TITLE:Brakes and Dynamometers
clc
clear
//===========================================================================================
//INPUT DATA
q=220;//Angle of contact in degree
T=340;//Torque in Nm
d=0.32;//Diameter of drum in m
U=0.3;//Coefficient of friction

Td=(T/(d/2));//Difference in tensions in N
Tr=exp(U*(q*(3.14/180)));//Ratio of tensions
T2=(Td/(Tr-1));//Tension in N
T1=(Tr*T2);//Tension in N
P=((T2*(d/2))-(T1*0.04))/0.5;//Force applied in N
b=(T1/T2)*4;//Value of b in cm when the brake is self-locking

printf('The value of b is %3.2f cm when the brake is self-locking \n Tensions in the sides are %3.3f N and %3.3f N',b,T1,T2)
