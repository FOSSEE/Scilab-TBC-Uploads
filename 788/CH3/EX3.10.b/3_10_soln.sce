clc;
pathname=get_absolute_file_path('3_10_soln.sce')
filename=pathname+filesep()+'3_10_data.sci'
exec(filename)

// Solution:
// Acceleration due to gravity,
g=32.2; //ft/s^2
// Energy Equation between Station 1 and Station 2 is given by,
// (Z1+P1+K1+Hp-Hm-Hl)=(Z2+P2+K2)
// since, There is no Hydraulic motor between Station 1 and 2,
// Therefore Motor Head,
Hm=0; //ft
// also, cross section of oil tank is very large, as a result oil is at rest,
v1=0; //ft/s
// Kinetic Energy Head at inlet,
K1=(v1^2)/(2*g); //ft
// Height of Station 1 from Datum,
Z1=0; //ft
// Height of Station 2 from Datum,
Z2=20; //ft
// Pressure Head at inlet,
P1=p1/SG; //ft
// Pump Head,
Hp=ceil((3950*HHP)/(Q*SG)); //ft
// Pump flow,
Q_1=Q/449; //ft^3/s
// Area of pipe,
A=((%pi)*((D/12)^2))/4; //ft^2
// Therefore, velocity in pipe,
v2=Q_1/A; //ft/s
// Kinetic Energy head at Station 2,
K2=(v2^2)/(2*g); //ft
// Therefore, Pressure Head at outlet,
P2=Z1+P1+K1+Hp-Hm-Hl-Z2-K2; //ft
// specific weight of oil,
gamma1=SG*62.4; //lb/ft^3
// Pressure available at inlet of hydraulic motor at station 2,
p2=P2*gamma1; // lb/ft^2
p2=floor(p2/144); //psi

// Results:
printf("\n  Results:  ")  
printf("\n The Pressure available at inlet of hydraulic motor at Station 2 is %.0f psig.",p2)




