//Chapter-4, Illustration 5, Page 166
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
P1=35;//Pressure at entry in bar
T1=573;//Temperature at entry in K
P2=8;//Pressure at exit in bar
Ts=443.4;//Saturation temperature in K
Ps=3.1;//Saturation pressure in bar
m=5.2;//mass flow rate of steam in kg/s
n=1.3;//Adiabatic gas constant
v1=0.06842;//Specific volume at entry in (m^3)/kg from steam table
v3=0.2292;//Specific volume at exit in (m^3)/kg from steam table
h1=2979;//Enthalpy in kJ/kg from Moiller chart
h3=2673.3;//Enthalpy in kJ/kg from Moiller chart

//CALCULATIONS
c=n/(n-1);//Ratio
C2=((2*c*P1*(10^5)*v1*(1-((P2/P1)^(1/c))))^0.5);//Velocity at exit in m/s
v2=v1*((P1/P2)^(1/n));//Specific volume at exit in (m^3)/kg
A2=((m*v2)/C2)*(10^4);//Area of exit in (cm^2)
a=((A2/18)^0.5)*10;//Length in mm
b=3*a;//Breadth in mm
T2=T1*((P2/P1)^(1/c));//Temperature at exit in K
D=Ts-T2;//Degree of undercooling in K
Ds=P2/Ps;//Degree of supersaturation
hI=h1-h3;//Isentropic enthalpy drop in kJ/kg
ha=(C2^2)/2000;//Actual enthalpy drop in kJ/kg
QL=hI-ha;//Loss in available heat in kJ/kg
DS=QL/Ts;//Increase in entropy in kJ/kg-K
C3=(2000*(h1-h3))^0.5;//Exit velocity from nozzle
mf=((A2*C3*(10^-4))/v3);//Mass flow rate in kg/s
Rm=m/mf;//Ratio of mass rate

//OUTPUT
mprintf('Cross section of nozzle is %3.1f mm * %3.1f mm \n Degree of undercooling is %3.1f K and Degree of supersaturation is %3.2f \n Loss in available heat drop due to irreversibility is %3.2f kJ/kg \n Increase in entropy is %3.5f kJ/kg-K \n Ratio of mass flow rate with metastable expansion to the thermal expansion is %3.3f',b,a,D,Ds,QL,DS,Rm)





//==============================END OF PROGRAM=================================
