clc;
pathname=get_absolute_file_path('3_17_soln.sce')
filename=pathname+filesep()+'3_17_data.sci'
exec(filename)

// Solution:
// Acceleration due to gravity,
g=9.81; //m/s^2
// Energy Equation between Station 1 and Station 2 is given by,
// (Z+P1+K1+Hp-Hm-Hl)=(P2+K2)
// since, There is no Hydraulic motor between Station 1 and 2,
// Therefore Motor Head,
Hm=0; //m
// also, cross section of oil tank is very large, as a result oil is at rest,
v1=0; //m/s
// Kinetic Energy Head at inlet,
K1=(v1^2)/(2*g); //m
// Pressure Head at inlet,
P1=p1/SG; //m
// specific weight of oil,
gamma1=round(SG*9797); //N/m^3
// Pump Power,
W=HHP*1000; //W
// Pump Head,
Hp=(W/(Q*gamma1)); //m
// Area of pipe,
A=((%pi)*(D^2))/4; //m^2
// Therefore, velocity in pipe,
v2=Q/A; //m/s
// Kinetic Energy head at Station 2,
K2=(v2^2)/(2*g); //m
// Therefore, Pressure Head at outlet,
P2=Z+P1+K1+Hp-Hm-Hl-K2; //m
// Pressure available at inlet of hydraulic motor at station 2,
p2=floor((P2*gamma1)/1000); // kPa gage

// Results:
printf("\n  Results:  ")  
printf("\n The Pressure available at inlet of hydraulic motor at Station 2 is %.0f kPa gage.",p2)



