clc;
pathname=get_absolute_file_path('4_10_soln.sce')
filename=pathname+filesep()+'4_10_data.sci'
exec(filename)

// Solution:
// specific weight of oil,
gamma1=SG_oil*9800; //N/m^3
// acceleration due to gravity,
g=9.80; //m/s^2
// Since, There is no hydraulic motor,
Hm=0; //m
// oil in tank is at rest,
v1=0; //m/s
// velocity head at station 1,
K1=(v1^2)/(2*g); //m
// velocity through pipe,
v2=Q/((%pi*(D^2))/4); //m/s
// velocity head at station 2,
K2=(v2^2)/(2*g); //m
// Reynolds Number,
N_R=((v2*D)/(nu/1000000));
// friction factor,
f=64/N_R;
// From table of "K factors of common valves and fittings",
K=0.9;
// equivalent length of standard elbow,
Le_std_elbow=((K*(D/12))/f); //m
// Total equivalent length,
Le_tot=L1+L2+Le_std_elbow; //m
// head loss due to friction between Station 1 and 2,
H_L=((f*Le_tot*K2)/D); //m
// Pump head,
Hp=((1000*HHP)/(Q*gamma1)); //m
// Pressure at station 2,
p2=(Z+(p1/gamma1)+K1+Hp-Hm-H_L-K2); //m ,Modified Bernoulli equation
p2=((p2*gamma1)/1000); //kPa

// Results:
printf("\n  Results:  ")
printf("\n The Pressure available at the inlet to hydraulic motor is %.0f kPa.",p2)
printf("\n The answer in the program is different than that in textbook. It may be due to no.s of significant digit in data and calculation")


