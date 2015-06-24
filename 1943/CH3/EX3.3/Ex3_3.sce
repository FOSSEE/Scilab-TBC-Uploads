
clc
clear
//Input data
rp=7.5//Pressure ratio 
T1=15+273//Inlet air temperature in K
T3=750+273//Maximum temperature in K
T6=100+273//Temperature in K
p1=50//Pressure in bar
T7=600+273//Temperature in K
p2=0.1//Pressure in bar
P=200//Total power in MW
CV=43.3//calorific value in MJ/kg
cpg=1.11//Specific heat for gas in kJ/kg.K
g=1.33//Ratio of specific heats for gas
cpa=1.005//Specific heat for air in kJ/kg.K
g1=1.4//Ratio of specific heats for air

//Calculations
T2=(T1*rp^((g1-1)/g1))//Temperature in K
T4=(T3/rp^((g-1)/g))//Temperature in K
ha=3670//Enthalpy in kJ/kg
hb=2305//Enthalpy in kJ/kg
hc=192//Enthalpy in kJ/kg
hd=hc//Enthalpy in kJ/kg
//ma*cpg*(T3-T6)=ms*(ha-hd)
//ma*cpg*(T3-T4)-ma*cpa*(T2-T1)+ms*(ha-hb)=P*1000
//Solving these two equations
A=[cpg*(T3-T6) (hd-ha)
   cpg*(T3-T4)-cpa*(T2-T1) (ha-hb)]//Coefficient matrix
B=[0 
   (P*10^3)]//Constant matrix
X=inv(A)*B//Variable matrix
Wgt=(cpg*(T3-T4)-cpa*(T2-T1))*X(1)*10^-3//Net workdone by Gas turbine in MW
Wst=(P-Wgt)//Net workdone by steam turbine in MW
Q1=(X(1)*cpg*(T3-T2+T3-T4))//Heat supplied in MW
nth=(P/(Q1*10^-3))*100//Thermal efficiency in percent
af=(CV*10^3)/(cpg*(T3-T2+T3-T4))//Air fuel ratio

//Output
printf('(a) The flow rate of air is %3.2f kg/s and steam is %3.2f kg/s \n (b) The power outputs of the gas turbine is %3.2f MW and steam turbine is %3.2f MW \n (c) The thermal efficiency of the combined plant is %3.0f percent \n (d) The air fuel ratio is %3.1f',X(1),X(2),Wgt,Wst,nth,af)
