clc
clear
//Input data
T1=300;//Minimum temperature of the plant containing a two stage compressor with perfect intercooling and a single stage turbine in K
T5=1100;//Maximum temperature of the plant in K
P1=1;//Initial Pressure in bar
P5=15;//Final pressure in bar
Cp=1.05;//Specific heat of air in kJ/kg K
r=1.4;//Isentropic ratio
P6=P1;//Pressure at 6 in bar

//Calculations
P3=(P1*P5)^(1/2);//The intermediate pressure for cooling in bar
P2=P3;//Pressure at point 2 in bar
T2=T1*(P2/P1)^((r-1)/r);//Temperature at the end of process 1-2
T3=T1;//Intermediate temperature in K
T4=1.473*T3;//Temperature at point 4 in K
T6=T5/(P5/P6)^((r-1)/r);//Temperature at point 6 in k
Wt=Cp*(T5-T6);//Work done by the turbine per kg of air in kJ/s
Wc=Cp*(T4-T3)+Cp*(T2-T1);//Work done by the compressor per kg of air in kJ/s
Wn=Wt-Wc;//Net work done in kJ/s
Pn=Wn;//Net power developed in kW

//Output 
printf('The net power of the plant per kg of air/s is %3.2f kW',Pn)
