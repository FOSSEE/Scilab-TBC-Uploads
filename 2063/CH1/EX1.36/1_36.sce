clc
clear
//Input data
P1=1.5;//Pressure at the inlet of the low pressure compressor in bar
T1=300;//Temperature at the inlet of the low pressure compressor in K
P5=9;//Maximum pressure in bar
T5=1000;//Maximum temperature in K
P=400;//Net power developed by the turbine in kW
Cp=1.0;//Specific heat of air at constant pressure in kJ/kg K
r=1.4;//Ratio of specific heat 

//Calculations
P8=P1;//For perfect intercooling and perfect reheating in bar
P4=P5;//For perfect intercooling and perfect reheating in bar
P2=(P1*P4)^0.5;//Pressure at the end of Isentropic compression in LP compressor in bar
P6=P2;//Pressure at the end of process 5-6 in bar
T2=T1*(P2/P1)^((r-1)/r);//Temperature at the end of isentropic compression in K
T3=T1;//For perfect intercooling in K
T4=T2;//For perfect intercooling in K
T6=T5/(P5/P6)^((r-1)/r);//Temperature at the end of process 5-6 in K
T7=T5;//Temperature in K
T8=T6;//Temperature in K
Wt=Cp*((T5-T6)+(T7-T8));//Work done by the turbine in kg/s
Wc=Cp*((T2-T1)+(T4-T3));//Work absorbed by the compressor in kJ/s
Wn=Wt-Wc;//Net work output in kJ/s
m=P/Wn;//Mass of fluid flow per second in kg/s
qs=m*Cp*((T5-T4)+(T7-T6));//Heat supplied from the external source in kJ/s

//Output
printf('(a)Mass of fluid to be circulated in the turbine is %3.3f kg/s\n (b)The amount of heat supplied per second from the external source is %3.1f kJ/s',m,qs)
