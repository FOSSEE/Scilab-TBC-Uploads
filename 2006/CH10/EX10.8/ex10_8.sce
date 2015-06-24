clc;
Cp=1.1; // Specific heat of combustion gas in kJ/kg K
T3=1600; // Initial temperature of combustion gas in Kelvin
T4=1150; // Final temperature of combustion gas in Kelvin
p1=0.1; // Pressure at inlet of boiler in MPa
p2=8;// Pressure at outlet of boiler in MPa
T2=600; // Temperature at outlet of boiler in degree celcius
m=1; // Mass of water in kg
T0=298; // temperature of Surroundings in kelvin
// From steam table 
h1=2758; h2=3642;// specific enthalpy in kJ/kg 
s1=5.7432; s2=7.0206; // specific entropy in kJ/kg K
mgas=(h2-h1)/(Cp*(T3-T4)); //mass flow rate of gases per kg of water
S21=s2-s1; // Change in entropy of water
S34=mgas*Cp*log (T3/T4); // Change in entropy of gases
// (a).Decrease in availability of gases
d_AEgas=mgas*Cp*(T3-T4)-T0*S34//Decrease in availability of gases
disp ("kJ",d_AEgas,"(a).Decrease in availability of gases = ");
// (b).Decrease in availability of water
d_AEwater=(h1-h2)-T0*(s1-s2);// Decrease in availability of water
disp ("kJ",d_AEwater,"(b).Decrease in availability of water =");
// (c).Reversible work for the process
Wrev=d_AEgas+d_AEwater; //Reversible work for the process
disp ("kJ",Wrev,"(c).Reversible work for the process=");
// (d).Actual work for the process
W=0; // Actual work
disp ("kJ",W,"(d).Actual work for the process =");
// (e).Irreversibility
I=Wrev-W; //Irreversibility
disp ("kJ",I,"(e).Irreversibility = ");
