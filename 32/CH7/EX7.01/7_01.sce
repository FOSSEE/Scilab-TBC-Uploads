//pathname=get_absolute_file_path('7.01.sce')
//filename=pathname+filesep()+'7.01-data.sci'
//exec(filename)
//Pressure of entering steam(in MPa):
p1=1.6
//Temperature of entering steam(in K):
T1=300+273
//Pressure of leaving steam(in MPa):
p2=0.1
//Temperature of leaving steam(in K):
T2=150+273
//Velocity of the leaving steam(in m/s):
c2=150
//Surrounding temperature(in K):
T0=15+273
//Mass flow rate(in kg/s):
m=2.5
//From steam tables:
h1=3034.8 //kJ/kg
s1=6.8844 //kJ/kg.K
h2=2776.4 //kJ/kg
s2=7.6134 //kJ/kg.K
//Maxiimum work possible(in kW):
Wmax=(h1-h2)-T0*(s1-s2)-(c2^2)/2*10^(-3)
printf("\nRESULT")
printf("\nMaximum work possible = %f kW",m*Wmax)