//Chapter-4, Illustration 1, Page 161
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
P1=3.5;//Pressure at entry in MN/(m^2)
T1=773;//Temperature at entry in K
P2=0.7;//Pressure at exit in MN/(m^2)
ma=1.3;//mass flow rate of air in kg/s
y=1.4;//Ratio of specific heats
R=0.287;//Universal gas constant in KJ/Kg-K

//CALCULATIONS
c=y/(y-1);//Ratio
Pt=((2/(y+1))^c)*P1;//Throat pressure in MN/(m^2)
v1=(R*T1)/(P1*1000);//Specific volume at entry in (m^3)/kg
Ct=((2*c*P1*v1*(1-((Pt/P1)^(1/c))))^0.5)*1000;//Velocity at throat in m/s
vt=v1*((P1/Pt)^(1/y));//Specific volume at throat in (m^3)/kg
At=((ma*vt)/Ct)*(10^6);//Area of throat in (mm^2)
C2=((2*c*P1*v1*(1-((P2/P1)^(1/c))))^0.5)*1000;//Velocity at exit in m/s
v2=v1*((P1/P2)^(1/y));//Specific volume at exit in (m^3)/kg
A2=((ma*v2)/C2)*(10^6);//Area of exit in (mm^2)
M=C2/Ct;//Mach number at exit

//OUTPUT
mprintf('Throat area is %3.0f (mm^2) \n Exit area is %3.0f (mm^2) \n Mach number at exit is %3.2f',At,A2,M)






//==============================END OF PROGRAM=================================
