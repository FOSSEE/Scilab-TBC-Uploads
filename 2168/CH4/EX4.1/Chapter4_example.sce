clc
clear
//Input data
d=20//Bore in cm
l=38//Stroke in cm
Vc=900//Clearance volume in c.c
p1=1//Pressure at the start of compression stroke in kg/cm^2
T1=90+273//Temperature at the start of compression stroke in K
x=0.75//Piston travelled 0.75 of the compression stroke
n=1.32//Compression curve index
wa=0.0125//Weight of air in kg

//Calculations
Vs=(3.14/4)*d^2*l//Swept volume in c.c
V1=(Vs+Vc)//Volume in c.c
V2=(1-x)*Vs+Vc//Volume in c.c
p2=p1*(V1/V2)^n//Pressure in kg/cm^2
T2=(T1*(p2/p1)*(V2/V1))//Temperature in K
W=((p1*V1-p2*V2)/(n-1))*10^-2//Workdone in kg.m
dI=wa*0.17*(T2-T1)//Change in internal energy in kcal
q=(dI+(W/427))//Heat in kcal

//Output
printf('When the cylinder has travelled %3.2f of the compression stroke, \n The volume is %3.0f c.c \n The pressure is %3.2f kg/cm^2 \n Temperature is %3.0f K \n\n The workdone on the gas is %3.2f kg.m \n\n Change in internal energy between the two points is %3.3f kcal',x,V2,p2,T2,W,dI)
