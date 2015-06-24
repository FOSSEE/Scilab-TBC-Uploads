clc;
pathname=get_absolute_file_path('4_9_soln.sce')
filename=pathname+filesep()+'4_9_data.sci'
exec(filename)

// Solution:
// specific weight of oil,
gamma1=SG_oil*62.4; //lb/ft^3
// acceleration due to gravity,
g=32.2; //ft/s^2
// Since, There is no hydraulic motor,
Hm=0; //ft
// oil in tank is at rest,
v1=0; //ft/s
// velocity head at station 1,
K1=(v1^2)/(2*g); //ft
// velocity through pipe,
v2=(Q/449)/((%pi*((D/12)^2))/4); //ft/s
v2=fix(v2)+(fix(floor((v2-fix(v2))*10))/10); //ft/s ,rounding off the answer
// velocity head at station 2,
K2=(v2^2)/(2*g); //ft
K2=fix(K2)+(fix(ceil((K2-fix(K2))*10))/10); //ft ,rounding off the answer
// Reynolds Number,
N_R=round((7740*v2*D)/nu);
// friction factor,
f=64/N_R;
// From table of "K factors of common valves and fittings",
K=0.9;
// equivalent length of standard elbow,
Le_std_elbow=((K*(D/12))/f); //ft
// Total equivalent length,
Le_tot=21+Le_std_elbow; //ft
// head loss due to friction between Station 1 and 2,
H_L=round((f*Le_tot*K2)/(D/12)); //ft
// Pump head,
Hp=ceil((3950*HHP)/(Q*SG_oil)); //ft
// Pressure at station 2,
p2=round(Z+(p1/gamma1)+K1+Hp-Hm-H_L-K2); //ft ,Modified Bernoulli equation
p2=round((p2*gamma1)/144); //psi
// Pressure increase across the pump,
delp=ceil((gamma1*Hp)/144); 

// Results:
printf("\n  Results:  ")
printf("\n The Pressure available at the inlet to hydraulic motor is %.0f psi.",p2)


