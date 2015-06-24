clc
clear
//Input data
a=6;//Pressure ratio of a gas turbine plant
T1=293;//Inlet temperature of air in K
T3=923;//Maximum temperature of the cycle in K
P=2000;//Power developed in the cycle in kW
nc=85;//Efficiency of the compressor in percentage
nt=85;//Efficiency of the turbine in percentage
Cp=1;//Specific heat of gas at constant pressure in kJ/kg K
Cv=0.714;//Specific heat of gas at constant volume in kJ/kg K

//Calculations
r=Cp/Cv;//Ratio of specific heats
T2a=a^((r-1)/r)*T1;//Temperature at 2' in K
T2=((T2a-T1)/(nc/100))+T1;//Temperature at point 2 in K
T4a=T3/a^((r-1)/r);//Temperature at the point 4' in K
T4=T3-((T3-T4a)*(nt/100));//Temperature at the point 4 in K
Wt=Cp*(T3-T4);//Work done by the turbine per kg of air in kJ
Wc=Cp*(T2-T1);//Work done by the compressor per kg of air in kJ
Wn=Wt-Wc;//Net work output of the turbine per kg of air in kJ
qA=Cp*(T3-T2);//Heat supplied per kg of air in kJ
n=(Wn/qA)*100;//Overall efficiency of the turbine plant in percentage
m=P/Wn;//Mass of air circulated per second in kg

//Output
printf('(1)Overall efficiency of the turbine is %3.0f percentage\n (2)Mass of air circulated by the turbine is %3.2f kg',n,m)
