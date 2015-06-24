clc
clear
//Input data
P1=1;//Initial Pressure of a gas turbine power plant in bar
P2=8;//Final pressure in bar
T1=300;//Initial temperature in K
T5=850;//Temperature of air expanded in the turbine in K
m=1.8;//Mass of air circulated per second in kg
Cp=1.05;//Specific heat of air at constant pressure in kJ/kg K
r=1.4;//Ratio of specific heat

//Calculations
P4=(P1*P2)^(0.5);//Pressure for maximum power output in bar
P3=P2;//Pressure after the constant pressure process in bar
T3=T5;//For reheating condition Temperature in K
T2=T1*(P2/P1)^((r-1)/r);//Temperature at the end of constant entropy process in K
T4=T3/((P3/P4)^((r-1)/r));//Temperature after the process 3-4 in K
T6=T4;//Temperature at the end of process 5-6 in K
Wt=m*Cp*((T3-T4)+(T5-T6));//Work done by the turbine in kJ/s
Wc=m*Cp*(T2-T1);//Work absorbed by the compressor in kJ/s
P=Wt-Wc;//Power that can be obtained from gas turbine installation in kW

//Output
printf('The maximum power that can be obtained from turbine installation is %3.0f kW',P)
