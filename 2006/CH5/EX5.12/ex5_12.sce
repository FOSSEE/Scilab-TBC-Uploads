clc;
p1=65;// (Error in textbook) // Pressure of air at state 1 in bar
v1=0.0135; // Volume of air at state 1 in m^3
v2=0.1; // Volume of air at state 2 in m^3
R=0.287; // Characteristic gas constant of air in kJ/kg K
Cvo=0.7165; // Specific heat at constant volume in kJ/kg K
// (a).Adiabatic process
k=1.4; // Index of adiabatic process
p2=p1*(v1/v2)^k; // Pressure of air at state 2 
T1=p1*10^2*v1/R;// Tempewrature of air at state 1
T2=p2*10^2*v2/R;// Tempewrature of air at state 2
w=R*(T2-T1)/(1-k); // work done
q=0; // Adiabatic expansion process
delta_u=Cvo*(T2-T1); // Change in internal energy of air
disp ("kJ",q,"Heat Ineraction = ","kJ",delta_u,"Change in internal energy of air = ","kJ",w,"Work done = ","K",T2,"Final Temperature = ","(a).Adiabatic Process");
// (b).Polytropic  process
n=1.3; // Index of adiabatic process
p2=p1*(v1/v2)^n; // Pressure of air at state 2 
T1=p1*10^2*v1/R;// Tempewrature of air at state 1
T2=p2*10^2*v2/R;// Tempewrature of air at state 2
w=R*(T2-T1)/(1-n); // work done
delta_u=Cvo*(T2-T1); // Change in internal energy of air
q=delta_u+w; // Adiabatic expansion process
disp ("kJ",q,"Heat Ineraction = ","kJ",delta_u,"Change in internal energy of air = ","kJ",w,"Work done = ","K",T2,"Final Temperature = ","(b).Polytropic Process");
// (c).Isothermal process
T1=p1*10^2*v1/R;// Tempewrature of air at state 1
T2=T1; // Tempewrature of air at state 2
p2=p1*(v1/v2); // Pressure of air at state 2
w=R*T1*log (v2/v1); // work done
delta_u=Cvo*(T2-T1); // Change in internal energy of air
q=delta_u+w; // Adiabatic expansion process
disp ("kJ",q,"Heat Ineraction = ","kJ",delta_u,"Change in internal energy of air = ","kJ",w,"Work done = ","K",T2,"Final Temperature = ","(c).Isothermal Process");
