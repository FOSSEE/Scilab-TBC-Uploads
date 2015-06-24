clc;
p1=0.1; // Initial pressure (before compression) of air in MPa
T1=30; // Initial temperature (before compression) of air in degree celcius
p2=0.9; // Final pressure (after compression) of air in MPa
R=0.287; // Characteristic constant of air in kJ/kg k
// (i) Actual work in the flow process
// (a).Isothermal Process
w=-R*(T1+273)*log (p2/p1); // work done for isothermal process
disp ("kJ/kg",w,"work done = ","(a).Isothermal Process","(i) Actual work in the flow process");
// (b).Polytropic process
n=1.4; // Index of polytropic process
T2=(T1+273)*(p2/p1)^((n-1)/n); // From Polytropic process relation for final temperature
w=(n/(1-n))*R*(T2-(T1+273)); // work done for polytropic process
disp ("kJ/kg",w,"compression work = ","(b).Polytropic process");
// (ii).Nonflow work
// (a).Isothermal Process
w=-R*(T1+273)*log (p2/p1); // work done for isothermal process
disp ("kJ/kg",w,"work done = ","(a).Isothermal Process","(ii).Nonflow work");
// (b).Polytropic process
w=(1/(1-n))*R*(T2-(T1+273));// work done for polytropic process
disp ("kJ/kg",w,"compression work = ","(b).Polytropic process");
