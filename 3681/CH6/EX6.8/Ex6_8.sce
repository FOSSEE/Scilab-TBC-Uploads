// Calculating the maximum permissible specific electric loading
clc;
disp('Example 6.8, Page No. = 6.13')
// Given Data
p_20 = 1.734*10^(-8);// Resistivity of copper at 20 degree celsius (in ohm*meter)
alpha = 0.00393;// Resistance temperature co-efficient of copper at 20 degree celsius (in per degree celsius)
s = 3.5;// Current density (in A per mm square)
c = 0.03;// Cooling co-efficient
Tm_ambient = 40;// Maximum ambient temperature (in degree celsius)
Tm_rise_A = 50;// Maximum temperature rise for Class A insulation (in degree celsius)
Tm_rise_E = 65;// Maximum temperature rise for Class E insulation (in degree celsius)
// Calculation of the maximum permissible specific electric loading
//for Class A insulation
T_A = Tm_ambient+Tm_rise_A;// Operating temperature of copper conductors (in degree celsius)
p = p_20*(1+alpha*(T_A-20));// Resistivity at operating temperature (in ohm*meter)
ac = Tm_rise_A/(p*s*10^(6)*c);// Maximum permissible specific electric loading
disp(ac,'Maximum allowable specific electric loading (ampere conductors per meter)=');
T_E = Tm_ambient+Tm_rise_E;// Operating temperature of copper conductors (in degree celsius)
//for Class E insulation
p = p_20*(1+alpha*(T_E-20));// Resistivity at operating temperature (in ohm*meter)
ac = Tm_rise_E/(p*s*10^(6)*c);// Maximum permissible specific electric loading
disp(ac,'Maximum allowable specific electric loading (ampere conductors per meter)=');
//in book answers are 21600 (ampere conductors per meter) and 26700 (ampere conductors per meter) respectively.  The answers vary due to round off error
