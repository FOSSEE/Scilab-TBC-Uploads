//example 8
//An Ideal Cogeneration Plant
clear
clc
v8=0.001005 //specific volume for state 3 in m3/kg
P9=7000 //pressure at state9  in kPa
P8=5//pressure at state 8 in kPa
wpumpin1=v8*(P9-P8) //work done by pump 1 in kJ/kg
v7=0.001093 //specific volume for state 7 in m3>kg
P10=7000 //pressure for state 10 in kPa
P7=500//pressure for state 7 in kPa
wpumpin2=v7*(P10-P7) //work done by pump 2 in kJ/kg
h4=3411.4 //specific enthalpy for state 4 in kJ/kg
h3=h4 //specific enthalpy for state 3 
h2=h4 //specific enthalpy for state 2
h1=h4 //specific enthalpy for state 1
h5=2739.3 //specific enthalpy for state 5 in kJ/kg
h6=2073.0 //specific enthalpy for state 6 in kJ/kg
h7=640.09 //specific enthalpy for state 7 in kJ/kg
h8=137.75 //specific enthalpy for state 8 in kJ/kg
h9=h8+wpumpin1 //specific enthalpy for state 9 in kJ/kg
h10=h7+wpumpin2 //specific enthalpy for state 10 in kJ/kg
disp('Since all the steam the boiler is throttled and sent to the process heater and none is sent to the turbine, therefore')
M1=15//mass flow rate for steam in kg/s
M4=15// in kg/s
M7=15//in kg/s
M=M1
M3=0
M5=0
M6=0
Qpmax=M1*(h4-h7) //Maximum rate at which process heat can be supplied in kW
Wturbout=M*(h3-h6) //Work done by turbine in kW
Wpumpin=M*wpumpin2 //Work done by pump in kW
Wnetout=Wturbout-Wpumpin //power produced in kW
h11=144.78 //Specific enthalpy for state 11 when no heat is supplied 
Qin=M1*(h1-h11)
Qp=0 //rate of supply of process heat in kW
e=(Qp+Wnetout)/Qin //utilization factor
disp('Now, calculating the rate of process heat supply when 10 percent of the steam is extracted before it enters the turbine and 70 percent of the steam is extracted from the turbine at 500 kPa for process heating')
M4=0.1*15 //in kg/s
M5=0.7*15 // in kg/s
M7=M4+M5 //in kg/s
Qpout=M4*h4+M5*h5-M7*h7 //rate of process heat supply in kW
printf("\n Hence, the maximum rate at which process heat can be supplied is = %.0f kW. \n",Qpmax);
printf("\n The power produced when no heat is supplied is = %.1f MW. \n",Wnetout/1000);
printf("\n and utilization factor is = %.3f . \n",e);
printf("\n the rate of process heat supply when 10 percent of the steam is extracted before it enters the turbine and 70 percent of the steam is extracted from the turbine at 500 kPa for process heating = %.1f MW. \n",Qpout/1000);