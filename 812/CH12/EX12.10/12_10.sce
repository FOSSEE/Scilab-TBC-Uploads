//Temperature//
pathname=get_absolute_file_path('12.10.sce')
filename=pathname+filesep()+'12.10-data.sci'
exec(filename)
//Density at section 1(in kg/m^3):
d1=p1*1000/R/T1
//Mach number at section 1:
M1=V1/sqrt(k*R*T1)
//Stagnation temperature at section 1(in K):
T01=T1*(1+(k-1)/2*M1^2)
//Stagnation pressure at section 1(in kPa):
p01=p1*(1+(k-1)/2*M1^2)^(k/(k-1))
//The following values are obtained from the appendix:
//po2/p01:
p0=0.7209;
//T2/T1:
T=1.687;
//p2/p1:
p=4.5;
//V2/V1:
V=0.3750;
//Temperature at section 2 (in K):
T2=T*T1
//Pressure at section 2(in kPa):
p2=p*p1
//Velocity at section 2(in m/sec):
V2=V*V1
//Density at section 2 (in kg/m^3):
d2=p2*1000/R/T2
//Stagnation pressure at section 2(in kPa):
p02=p0*p01
//Stagnation temperature at section 2(in K):
T02=T01;
//Change in entropy(in kJ/(kg-K)):
dS=-R/1000*log(p0)
printf("\n\nRESULTS\n\n")
printf("\n\nTemperature at section 2 : %.3f K\n\n",T2)
printf("\n\nPressure at section 2: %.3f kPa\n\n",p2)
printf("\n\nVelocity at section 2: %.3f m/sec\n\n",V2)
printf("\n\nDensity at section 2 : %.3f kg/m^3\n\n",d2)
printf("\n\nStagnation pressure at section 2: %.3f kPa\n\n",p02)
printf("\n\nChange in entropy: %.3f kg-K\n\n",dS)
printf("\n\nStagnation temperature at section 2: %.3f K\n\n",T02)
