clc;
p2=276; // Pressure at inlet in kPa
p=6.5; // gauge pressure at outlet in cm Hg
T3=110; // Temperature at outlet in degree celcius
pa=756; // Barometric pressure in mm Hg
mc=760;// Mass of condensed steam in g
ms=25; // Mass of separated water in g
den=13600; // Density of mercury in kg/m^3
g=9.81; // Acceleration due to gravity in m/s^2
z=(pa*10^-3)+(p*10^-2);// absolute pressure in m Hg
p3=den*g*z; // Pressure after throttling
h3=2697.4;// specific enthalpy in kJ/kg 
hf2=545.31; hfg2=2175.2; // specific enthalpy in kJ/kg 
x2=(h3-hf2)/hfg2; // Quality of steam
x1=(mc/(mc+ms))*x2; // Quality of steam in the main line
disp (x1,"Quality of steam in the main line =");
