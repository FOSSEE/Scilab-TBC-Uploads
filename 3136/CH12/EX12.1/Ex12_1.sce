clear all; clc;

disp("Assuming steady state flow,an adiabetic process and neligible difference between the inlet/outlet flow velocities.")
T1=25+273
p2=600
p1=120
k=1.4
T_s2=T1*((p2/p1)^((k-1)/k))
printf(" T_s2= %0.0f K",T_s2)

disp("With constant Cp assumed, we have Eta_c=(Ts2-T1)/(T2-T1)")
T_s2=472
T1=298
T2=503
Eta_c=(T_s2-T1)/(T2-T1)
printf(" Eta_c=%0.4f=84.8 percent",Eta_c)

//let w_c/m=x
Cp=1.004
T1=298
T2=503
T1=298
x=Cp*T1*((T2/T1)-1)
printf("\n w_c/m=Cp*T1*((T2/T1)-1) %0.1f kJ/kg",x)


































