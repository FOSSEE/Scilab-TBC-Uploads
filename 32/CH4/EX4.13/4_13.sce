//pathname=get_absolute_file_path('4.13.sce')
//filename=pathname+filesep()+'4.13-data.sci'
//exec(filename)
//Temperature of the reservoir(in K):
T3=3+273
//Lower temperature limit(in K):
T1=77+273
//Higher temperature limit(in K):
T2=1077+273
//Energy supplied to the reservoir(in kJ/s):
E=100
//Efficiency:
n=1-T1/T2
//Energy taken from the reservoir Q1 can be found by solving the simultaneous equations
//n=1-Q2/Q1
//We get Q2=0.2593*Q1
//COP for heat pump = Q4/(Q4-Q3) = T1/(T1-T3)
//We get Q4=1.27*Q3
//It is given that Q2+Q4=E
//Solving all the equations, we get:
Q1=26.71 
printf("\nRESULT\n")
printf("\nEnergy taken from reservoir at 1077 degree celcius = %f kJ",Q1)