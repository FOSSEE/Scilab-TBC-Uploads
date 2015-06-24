clc;
m=1; // Massflow rate of the steam in kg/s
p1=3.5; // Pressure at inlet in bar
T1=160; // Temperature at inlet in degree celcius
p2=1; // Pressure at outlet in bar
Cpo=1.005; // Specific heat at constant pressure in kJ/kg K
eff_isen=0.85; // Isentropic efficiency of the turbine
k=1.4; // index of isentropic process
T2s=(T1+273)*(p2/p1)^((k-1)/k); // Final temperature after isentropic expansion
Ws=m*Cpo*((T1+273)-T2s); // Isentropic power developed
Wa=eff_isen*Ws; // Actual power developed
T2=(T1+273)-(Wa/(m*Cpo)); // Final temperature after expansion
disp ("K",T2,"Final temperature after expansion = ","kW",Wa,"Actual power developed (Error in textbook)=");
