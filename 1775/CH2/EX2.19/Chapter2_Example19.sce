//Chapter-2, Illustration 19, Page 77
//Title: Gas Power Cycles
//=============================================================================
clc
clear

//INPUT DATA
T1=291;//Temperature at point 1 in K
P1=100;//Pressure at point 1 in kN/(m^2)
nC=0.85;//Isentropic efficiency of compressor
nT=0.88;//Isentropic effficiency of turbine
rp=8;//Pressure ratio
T3=1273;//Temperature at point 3 in K
m=4.5;//Mass flow rate of air in kg/s
y=1.4;//Ratio of speciifc heats
Cp=1.006;//Specific heat at constant pressure in kJ/kg-K

//CALCULATIONS
x=(y-1)/y;//Ratio
T2s=T1*(rp^x);//Temperature at point 2s in K
T2=T1+((T2s-T1)/nC);//Temperature at point 2 in K
t2=T2-273;//Temperature at point 2 in oC
T4s=T3*((1/rp)^x);//Temperature at point 4s in K
T4=T3-((T3-T4s)*nT);//Temperature at point 4 in K
t4=T4-273;//Temperature at point 4 in oC
W=m*Cp*((T3-T4)-(T2-T1));//Net power output in kW
nth=(((T3-T4)-(T2-T1))/(T3-T2))*100;//Thermal efficiency
WR=W/(m*Cp*(T3-T4));//Work ratio

//OUTPUT
mprintf('Net power output of the turbine is %3.0f kW \n Thermal efficiency of the plant is %3.0f percent \n Work ratio is %3.3f',W,nth,WR)






//==============================END OF PROGRAM=================================
