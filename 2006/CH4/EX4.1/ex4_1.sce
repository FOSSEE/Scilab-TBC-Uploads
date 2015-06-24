clc;
p1=5; // Pressure of Helium gas at initial state in bar
T1=222; // Temperature of Helium gas at initial state in K
V1=0.055; // Volume of Helium gas at initial state in m^3
n=1.5; // Index of expansion process
R=2.078;// Characteristic gas constant of Helium gas in kJ/kg K
p2=2; // Pressure of Helium gas at final state (after expansion) in bar
disp ("Method I");
V2=V1*(p1/p2)^(1/n);// From Polytropic process relation for final volume
W=((p2*10^2*V2)-(p1*10^2*V1))/(n-1); // Work done from Polytropic process relation
disp ("kJ",W,"Work done =");
disp ("Method II");
m=(p1*10^2*V1)/(R*T1); // ideal gas equation
T2=T1*(p2/p1)^((n-1)/n); // From Polytropic process relation of final temperature
W=(m*R*(T1-T2))/(1-n); // Work done from Polytropic process relation
disp ("kJ",W,"Work done =");
