//CHAPTER 10 ILLUSRTATION 4 PAGE NO 271
//TITLE:Brakes and Dynamometers
clc
clear
//===========================================================================================
//INPUT DATA
a=0.5;//Length of lever in m
d=0.5;//Diameter of brake drum in m
q=(5/8)*(2*3.14);//Angle made in radians
b=0.1;//Distance between pin and fulcrum in m
P=2000;//Effort applied in N
U=0.25;//Coefficient of friction

T=exp(U*q);//Ratios of tension
T2=((P*a)/b);//Tension in N
T1=(T*T2);//Tension in N
TB=((T1-T2)*(d/2))/1000;//Maximum braking torque in kNm

printf('The maximum braking torque on the drum is %3.3f kNm',TB)
