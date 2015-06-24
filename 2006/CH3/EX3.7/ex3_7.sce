clc;
p=6000; // Pressure of nitrogen gas in kPa
T=150; // Temperature of nitrogen gas in kelvin
V=250; // Volume of tank in litres
R_1=8.3143; // Universal gas constant in kJ/kmol K
M=28.1013; // Molecular mass
// (a).Beattie - Bridgeman equation of state
// Constants for nitrogen gas
c=4.2*10^4; Ao=136.2315; a=0.02617; Bo=0.05046; b=-0.00691;
// By substituting these values in the following equation 
// p=(R_1*T/v^2)*(1-(c/(vT^3)))*(v+Bo*(1-(b/v)))-(Ao/v^2*(1-(a/v)))
// By trial and error we get
v=0.1222; // specific volume in m^3/kmol
m=(M*V/1000)/v; // Mass of nitrogen gas
disp ("m^3/kmol",v,"specific volume of nitrogen gas = ","kg",m,"Mass of nitrogen gas = ","(a).Beattie - Bridgeman equation of state");
// (b).Nitrogen tables
// From property table of nitrogen fas
v=0.004413;  // specific volume in m^3/kg
m=(V/1000)/v; //  Mass of nitrogen gas
disp ("m^3/kg",v,"specific volume of nitrogen gas = ","kg",m,"Mass of nitrogen gas = ","(b).Nitrogen tables");
// (c).Ideal gas equation of state
m=(p*V/1000)/(R_1*T/M); //Mass of nitrogen gas
disp ("kg",m,"Mass of nitrogen gas = ","(c).Ideal gas equation of state");
// (d).Generalized compressibility chart
// The crictical properties for nitrogen gas 
Tc=126.2; // Temperature in kelvin
Pc=3.349; // Pressure in MPa
// Reduced properties are
Pr=p/Pc; Tr=T/Tc;
z=0.6; // From chart
m=(p*V/1000)/(z*R_1*T/M); //Mass of nitrogen gas
disp ("kg",m,"Mass of nitrogen gas = ","(d).Generalized compressibility chart");
disp ("Ideal gas equation of state","Generalized compressibility chart","Beattie - Bridgeman equation of state","Nitrogen tables"," (e).Arrangement the methods in order of percentage error : ");
