clc
clear
//Input data
P1=1;//Initial pressure of a simple closed cycle gas turbine plant in bar
T1=298;//Initial temperature in K
P2=5.1;//Pressure of gas after compression in bar
T3=1123;//Temperature at the end of compression in K
P3=P2;//Pressure at the end of constant pressure stroke
P4=1;//Pressure of hot air after expansion in the turbine in bar
r=1.4;//Isentropic constant
Cp=1.005;//Specific heat of air in kJ/kg K

//Calculations
T2=T1*(P2/P1)^((r-1)/r);//Temperature at the end of process 1-2 in K
T4=T3*(P4/P3)^((r-1)/r);//Temperature at the end of process 3-4 in K
Wt=Cp*(T3-T4);//Work done by the turbine in kJ/kg
Wc=Cp*(T2-T1);//Work required by the compressor in kJ/kg
W=Wt-Wc;//Net work done by the turbine in kJ/kg
P=1*W;//Power developed by the turbine assembly per kg per second in kW

//Output
printf('Power developed by the turbine assembly per kg of air supplied per second is %3.2f kW',P)
