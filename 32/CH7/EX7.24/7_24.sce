//pathname=get_absolute_file_path('7.24.sce')
//filename=pathname+filesep()+'7.24-data.sci'
//exec(filename)
//Pressure at which steam enters(in bar):
p1=50
//Temperature at which steam enters(in K):
T1=600+273
//Velocity at which steam enters(in m/s):
c1=150
//Pressure at which steam leaves(in bar):
p2=0.1
//Velocity at which steam leaves(in m/s):
c2=50
//Work delivered(in kJ/kg):
W=1000
//Dead state temperature(in K):
T0=25+273
//From steam tables:
h1=3666.5 //kJ/kg
s1=7.2589 //kJ/kg.K
h2=2584.7 //kJ/kg
s2=8.1502 //kJ/kg.K
//Inlet stream availability(in kJ/kg):
A1=h1+c1^2/2*10^(-3)-T0*s1
//Exit stream availability(in kJ/kg):
A2=h2+c2^2/2*10^(-3)-T0*s2
//Reversible work(in kJ/kg):
Wrev=A1-A2
//Irreversibility(in kJ/kg):
I=Wrev-W
printf("\nRESULT")
printf("\nInlet stream availability = %f kJ/kg",A1)
printf("\nExit stream availability = %f kJ/kg",A2)
printf("\nIrreversibility = %f kJ/kg",I)