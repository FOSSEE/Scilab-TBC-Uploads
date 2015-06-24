//pressure and area//
pathname=get_absolute_file_path('12.01.sce')
filename=pathname+filesep()+'12.01-data.sci'
exec(filename)
//Here the stagnation quantities are constant.
// Stagnation temperature(in K):
T0=T1*(1+(k-1)/2*M1^2)
//Stagnation pressure(in kPa):
p0=p1*((1+(k-1)/2*M1^2)^(k/(k-1)))
//Finding T2/T1:
T=t2/t1
//Temperature at exit(in K):
T2=T*T1
//Finding p2/p1:
P=P2/P1
//Pressure at exit(in kPa):
p2=P2*p1
//Density of air at exit(in kg/m^3):
d2=p2*10^3/R/T2
//Velocity of air at exit(in m/sec):
V2=M2*sqrt(k*R*T2)
//Finding A2/A1:
a=a2/a1
//Area at exit(in m^2):
A2=a*A1
printf("\n\nRESULTS\n\n")
printf("\n\nStagnation temperature: %.3f K\n\n",T0)
printf("\n\nStagantion pressure: %.3f kPa\n\n",p0)
printf("\n\nTemperature a exit %.3f K\n\n",T2)
printf("\n\nPressure at exit: %.3f kPa\n\n",p2)
printf("\n\nDensity of air at exit: %.3f kg/m^3\n\n",d2)
printf("\n\nVelocity of air at exit: %.3f m/sec\n\n",V2)
printf("\n\nArea at exit: %.3f \n\n",A2)
