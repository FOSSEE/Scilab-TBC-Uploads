// Example 13.6: Thermal resistance, Power rating at 70°C, Junction temperature at 100 mW
clc, clear
TAo=25; // in °C
PDo=200; // in mili-watts
Tj_max=150; // Maximum junction temperature in °C
T=70; // in °C
P=100; // in mili-watts
TA=50; // Ambient temperature in °C
theta=(Tj_max-TAo)/PDo; // Thermal resistance in °C per mili-watts
PR=(Tj_max-T)/theta; // Power rating at 70 °C in mili-watts
Tj=TA+theta*P; // Junction temperature at 100 mW in °C
disp(theta,"Thermal resistance (°C/mW) =");
disp(PR,"Power rating at 70 °C (mW) =");
disp(Tj,"Junction temperature at 100 mW (°C) =");