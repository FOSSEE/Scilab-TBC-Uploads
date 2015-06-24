clc;
Tc1=10; // Feed water inlet temperature in degree celcius
Tc2=77; // Feed water outlet temperature in degree celcius
th1=166; // Initial temperature of flue gas in degree celcius
r=4; // Ratio of mass flow rates of flue gases and water
Ch=1.05; // The specific heat of flue gas in kJ/kg K
Cc=4.187; // The specific heat of feed water in kJ/kg K
U=114; // Overall heat transfer coefficient in W/m^2
mc=1; // massflowrate of feed water in kg/s
th2=th1-((Cc*(Tc2-Tc1))/(r*Ch)); // Outlet temperature of flue gas in degree celcius
Q=mc/3600*Cc*(Tc2-Tc1); // Heat transfer rate per kg/h of water flow
// Parallel flow    
del_Tm=((th1-Tc1)-(th2-Tc2))/log ((th1-Tc1)/(th2-Tc2)); // Logarthamic Mean Temperature Difference in degree celcius
A=Q*10^3/(U*del_Tm); // Economiser surface area
disp ("degree celcius",del_Tm,"Logarthamic Mean Temperature Difference="," (a)Parallel flow");
disp ("m^2",A,"Economiser surface area =");
// Counter flow
del_Tm=((th1-Tc2)-(th2-Tc1))/log ((th1-Tc2)/(th2-Tc1)); // Logarthamic Mean Temperature Difference in degree celcius
A=Q*10^3/(U*del_Tm); // Economiser surface area
disp ("degree celcius",del_Tm,"Logarthamic Mean Temperature Difference="," (b) Counter flow");
disp ("m^2",A,"Economiser surface area =");
