clc
clear
//Input data
P1=1;//Initial pressure of air in bar
T1=300;//Initial temperature in K
P2=17;//Pressure at the end of isentropic compression in bar
P3=40;//Pressure at the end of constant volume heat addition in bar
Cv=0.717;//Specific heat of mixture in kJ/kg K
M=28.97;//Molecular weight in kg
Ru=8.314;//Universial gas constant in kJ/kg mole K
m=1;//Mass from which heat is extracted in kg
W=363;//Work done in kN m

//Calculations
Rc=Ru/M;//Characteristic gas constant in kJ/kg K
Cp=Rc+Cv;//Specific heat at constant pressure in kJ/kg K
r=Cp/Cv;//Isentropic gas constant
r1=(P2/P1)^(1/r);//Compression ratio
na=(1-(1/r1)^(r-1))*100;//Air standard efficiency in percentage
T2=T1*(P2/P1)^((r-1)/r);//Temperature at the end of isentropic compression process in K
T3=(P3/P2)*T2;//Temperature at the end of constant volume heat addition in K
Q=m*Cv*(T3-T2);//Heat supplied in kJ/kg
V1=(m*Rc*T1*1000)/(P1*10^5);//Initial volume before compression in m^3
V2=V1/r1;//Volume at the end of compression stroke in m^3
Vs=V1-V2;//Stroke volume in m^3
MEP=(W/Vs)/100;//Mean effective pressure in bar

//Output
printf('(a)Compression ratio is %3.2f\n (b)The air standard efficiency is %3.1f percent\n (c)Mean effective pressure is %3.2f bar',r1,na,MEP)
