// Calculating the temperature rise and thermal time constant and rating of the machine
clc;
disp('Example 4.15, Page No. = 4.23')
// Given Data
D = 0.6;// Diameter of induction motor (in meter)
L = 0.9;// Length of induction motor (in meter)
out = 7500;// Output of induction motor (in W)
e = 0.9;// Efficiency
G = 375;// Weight of material (in kg)
h = 725;// Specific heat (in J/kg degree celsius)
Lem = 12;// Specific heat dissipation (in Watt per meter square degree celsius)
// Calculation of the temperature rise and thermal time constant of the machine
S = (%pi*D*L)+(2*%pi/4*D^(2));// Total heat dissipating surface (in meter square)
Q = (out/e)-out;// Losses (in Watts)
Tm = Q/(S*Lem);// Final temperature rise (in degree celsius)
Th = G*h/(S*Lem);// Time constant (in seconds)
disp(Tm,'(a) Final temperature rise (degree celsius) =');
disp(Th,'    Time constant (seconds) =');
// Calculation of the rating of the machine
Lem_new = 25;// Specific heat dissipation (in Watt per meter square degree celsius)
Q = Tm*S*Lem_new;// Losses (in Watts)
out = (e*Q)/(1-e);// Output of induction motor (in W)
disp(out,'(b) Rating of the machine (Watt) =');
//in book answers are 30.85 degree celsius, 10025 seconds and 15687 watts.  The answers vary due to round off error

