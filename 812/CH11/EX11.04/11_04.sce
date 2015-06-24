//pressure and change//
pathname=get_absolute_file_path('11.04.sce')
filename=pathname+filesep()+'11.04-data.sci'
exec(filename)
//Mach number at entry:
M1=V1/sqrt(k*R*T1)
//Stagnation pressure at entry(in kPa):
p01=p1*(1+(k-1)/2*M1^2)^(k/(k-1))
//Stagnation temperature at entry(in K):
T01=T1*(1+(k-1)/2*M1^2)
//Static pressure at exit(in kPa):
p2=p02/(1+(k-1)/2*M2^2)^(k/(k-1))
//Temperature at exit(in K):
T2=T02/(1+(k-1)/2*M2^2)
//Change in entropy(in kJ/kg-K):
ds=cp*log(T2/T1)-R/1000*log(p2/p1)
printf("\n\nRESULTS\n\n")
printf("\n\nStagnation pressure at entry: %.3f kPa\n\n",p01)
printf("\n\nStagnation temperature at entry: %.3f K\n\n",T01)
printf("\n\nStatic pressure at exit: %.3f kPa\n\n",p2)
printf("\n\nTemperature at exit: %.3f K\n\n",T2)
printf("\n\nChange in entropy: %.3f kJ/kg-K\n\n",ds)
