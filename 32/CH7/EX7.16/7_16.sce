//pathname=get_absolute_file_path('7.16.sce')
//filename=pathname+filesep()+'7.16-data.sci'
//exec(filename)
//Minimum temperature(in K):
Tmin=30+273
//Maximum temperature(in K):
Tmax=700+273
//Temperature of surroundings(in K):
T0=17+273
//Rate at which engine receives heat(in kJ/min):
Q1=2*10^4
//Measured output of the engine(in kW):
Wu=0.13*10^3
//Efficiency:
nrev=1-Tmin/Tmax
//Availability or reversible work(in kJ/s):
Wrev=nrev*Q1/60
//Rate of irreversibility(in kJ/s):
I=Wrev-Wu
//Second law efficiency:
n2=Wu/Wrev
printf("\nRESULT")
printf("\nAvailability = %f kJ/min",Wrev*60)
printf("\nRate of irreversibility = %f kW",I)
printf("\nSecond law efficiency = %f percent",n2*100)