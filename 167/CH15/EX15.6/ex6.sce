//example 6
//First-Law Analysis of Steady-Flow Combustion
clear
clc
mair=7.5*4.76*29 //mass of air in kg
mfuel=3*12+4*2 //mass of fuel in kg
AF=mair/mfuel //air fuel ratio
Mfuel=0.05 //Mass flow rate of fuel in kg/min
Mair=AF*Mfuel //mass flow rate of air in kg/min
qout=1*(-118910)+7.5*(8150-8682)+28.2*(0+8141-8669)-2.7*(-393520+71078 -9364)-0.3*(-110530+47517-8669)-4*(-241820+57999-9904)-2.65*(0+49292-8682)-28.2*(0+47073-8669) //in kJ/kmol C3H8
disp('This heat is transferred from the combustion chamber for each kmol (44kg) of propane.therefore qout = qout/44 kJ/kg')
qout=qout/44 //in kJ/kg propane
M=0.05 //mass flow rate of liquid propane in kg/min
Qout=M*qout //rate of heat transfer in kJ/min
Qout=Qout/60 //rate of heat reansfer in kW
printf("\n Hence, the mass flow rate of air is = %.2f kg/min. \n",Mair);
printf("\n and the rate of heat transfer from combustion chamber is = %.2f kW. \n",Qout);