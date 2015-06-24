//CHAPTER 10 ILLUSRTATION 6 PAGE NO 272
//TITLE:Brakes and Dynamometers
clc
clear
//===========================================================================================
//INPUT DATA
d=0.5;//Drum diamter in m
U=0.3;//Coefficient of friction
q=250;//Angle of contact in degree
P=750;//Force in N
a=0.1;//Band width in m
b=0.8;//Distance in m
ft=(70*10^6);//Tensile stress in Pa
f=(60*10^6);//Stress in Pa
b1=0.1;//Distance in m

T=exp(U*(q*(3.14/180)));//Tensions ratio
T2=(P*b*10)/(T+1);//Tension in N
T1=(T*T2);//Tension in N
TB=(T1-T2)*(d/2);//Torque in N.m
t=(max(T1,T2)/(ft*a))*1000;//Thickness in mm
M=(P*b);//bending moment at fulcrum in Nm
X=(M/((1/6)*f));//Value of th^2
//t varies from 10mm to 15 mm. Taking t=15mm,
h=sqrt(X/(0.015))*1000;//Section of the lever in m

printf('Torque required is %3.2f N.m \nThickness necessary to limit the tensile stress to 70 MPa is %3.3f mm \n Section of the lever taking stress to 60 MPa is %3.1f mm',TB,t,h)
