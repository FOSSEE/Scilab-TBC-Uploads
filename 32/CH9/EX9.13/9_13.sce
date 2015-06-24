//pathname=get_absolute_file_path('9.13.sce')
//filename=pathname+filesep()+'9.13-data.sci'
//exec(filename)
//Maximum temperature(in K):
T2=700
//Minimum temperature(in K):
T1=300
//Compression ratio:
r=3
//Total heat added(in kJ/s):
qa=30
//Regenerator efficiency:
E=0.90
//Pressure at the beginning of compression(in bar):
p=1
//Number of cycles:
n=100
//Value of Cv:
Cv=0.72
//Gas constant(in kJ/kg.K):
R=29.27
//Work done per kg of air(in kJ/kg):
W=R*(T2-T1)*log(r)
//Heat added per kg of air(in kJ/kg):
q=R*T2*log(r)+(1-E)*Cv*(T2-T1)
//Mass of air for 30 kJ/s of heat supplied(in kg/s):
m=qa/q
//Mass of air per cycle(in kg/cycle):
mc=m/n
//Brake output(in kW):
BP=W*m
//Stroke volume(in m^3):
V=mc*R*T1/(p*10^2)
printf("\nRESULT")
printf("\nBrake output = %f kW",BP)
printf("\nStroke volume = %f m^3",V)