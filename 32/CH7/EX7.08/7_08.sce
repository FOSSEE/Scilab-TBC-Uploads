//pathname=get_absolute_file_path('7.08.sce')
//filename=pathname+filesep()+'7.08-data.sci'
//exec(filename)
//Mass flow rate(in kg/s):
m=5
//At inlet to turbine,
p1=5 //MPa
T1=500+273.15 //ºK
h1=3433.8 //kJ/kg
s1=6.9759 //kJ/kg.K
//At exit from turbine.
p2=0.2 //MPa
T2=140+273.15 //ºK
h2=2748 //kJ/kg
s2=7.228 //kJ/kg·K
//At dead state,
p0=101.3 //kPa
T0=25+273.15 //ºK
h0=104.96 //kJ/kg
s0=0.3673 //kJ/kg · K
//Heat loss(in kJ/s):
Q=600
//Availablity of steam at inlet(in kJ):
A1=m*((h1-h0)-T0*(s1-s0))
printf("\nRESULT")
printf("\nAvailability of steam at inlet = %f kJ",A1)
//Turbine output(in kW):
W=m*(h1-h2)-Q
printf("\n\nTurbine output = %f kW",W)
//Maximum output(in kW):
Wmax=m*((h1-h2)-T0*(s1-s2))
printf("\n\nMaximum output = %f kW",Wmax)
//Irreversibilty(in kW):
I=Wmax-W
printf("\n\nIrreversibility = %f kW",I)