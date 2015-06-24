//Chapter-4, Illustration 3, Page 163
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
P1=2;//Pressure at entry in MN/(m^2)
T1=598;//Temperature at entry in K
P2=0.36;//Pressure at exit in MN/(m^2)
m=7.5;//mass flow rate of steam in kg/s
n=1.3;//Adiabatic gas constant
v1=0.132;//Volume at entry in (m^3)/kg from steam table
Ts=412.9;//Saturation temperature in K

//CALCULATIONS
c=n/(n-1);//Ratio
Pt=((2/(n+1))^c)*P1;//Throat pressure in MN/(m^2)
Ct=((2*c*P1*v1*(1-((Pt/P1)^(1/c))))^0.5)*1000;//Velocity at throat in m/s
vt=v1*((P1/Pt)^(1/n));//Specific volume at throat in (m^3)/kg
At=((m*vt)/Ct)*(10^6);//Area of throat in (mm^2)
C2=((2*c*P1*v1*(1-((P2/P1)^(1/c))))^0.5)*1000;//Velocity at exit in m/s
v2=v1*((P1/P2)^(1/n));//Specific volume at exit in (m^3)/kg
A2=((m*v2)/C2)*(10^6);//Area of exit in (mm^2)
T2=T1*((P2/P1)^(1/c));//Temperature at exit in K
D=Ts-T2;//Degree of undercooling at exit in K

//OUTPUT
mprintf('Throat area is %3.0f (mm^2) \n Exit area is %3.0f (mm^2) \n Degree of undercooling at exit is %3.1f K',At,A2,D)




//==============================END OF PROGRAM=================================
