
clc
clear
//Input data
p1=1//Pressure in bar
T1=20+273//Temperature in K
Tm=900+273//Maximum temperature in K
rp=6//Pressure ratio
e=0.7//Effectiveness of regenerator
ma=210//Rate of air flow in kg/s
CV=40800//Calorific value in kJ/kg
ic=0.82//Isentropic efficiencies of both the compressors
it=0.92//Isentropic efficiencies of both the turbine
cn=0.95//Combustion efficiency 
mn=0.96//Mechanical efficiency
gn=0.95//Generator efficiency
cp=1.005//Specific heat of air in kJ/kg.K
cpg=1.08//Specific heat of gas in kJ/kg.K
g1=1.4//Ratio of specific heats for air
g=1.33//Ratio of specific heats for gas

//Calculations
pi=sqrt(p1*rp)//Intermediate pressure in bar
T2sT1=(pi/p1)^((g1-1)/g1)//Temperature ratio
T2s=(T2sT1*T1)//temperature in K
T2=((T2s-T1)/ic)+T1//Temperature in K
T4s=(T1*(rp/pi)^((g1-1)/g1))//Temperature in K
T4=((T4s-T1)/ic)+T1//Temperature in K
T7s=(Tm/(rp/p1)^((g-1)/g))//Temperature in K
T7=Tm-(it*(Tm-T7s))//Temperature in K
T5=(e*(T7-T4))+T4//Temperature in K
mf=1/((cp*(Tm-T5))/((CV*cn)-(cp*(Tm-T5))))//Air fuel ratio
Wgt=((1+(1/mf))*cpg*(Tm-T7))//Workdone by turbine in kJ/kg of air
Wc=(cp*((T2-T1)+(T4-T1)))//Workdone by compressor in kJ/kg of air
Wnet=(Wgt-Wc)//Net workdone in kJ/kg of air
Q=(CV*cn)/mf//Heat supplied in kJ/kg of air
ncy=(Wnet/Q)*100//Cycle efficiency in percent
PO=(Wnet*ma*mn*gn)/10^3//Power output in MW
Fc=(ma*3600*(1/mf))//Fuel consumption per hour in kg
SFC=(Fc/(PO*10^3))//Specific fuel consumption in kg/kW.h

//Output
printf('(a) the air fuel ratio is %3.2f \n (b) the cycle efficiency is %3.1f percent \n (c) the power supplied by the plant is %3.0f MW \n (d) the specific fuel consumption of the plant is %3.3f kg/kW.h and the fuel consumption per hour is %3.2f kg',mf,ncy,PO,SFC,Fc)
