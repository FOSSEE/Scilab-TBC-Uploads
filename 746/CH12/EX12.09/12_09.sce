//Temperature and entropy//
pathname=get_absolute_file_path('12.09.sce')
filename=pathname+filesep()+'12.09-data.sci'
exec(filename)
//Mach nuber at section 1:
M1=V1/sqrt(k*R*T1)
//For these value of M1 and M2,the following values are obtained:
//(To/T0*)1:
t01=0.7934;
//(T0/T0*)2:
t02=0.9787;
//(p0/p0*)1:
P01=1.503;
//(p0/p0*)2:
P02=1.019;
//(T/T*)1:
t1=0.5289;
//(T/T*)2:
t2=0.9119;
//(p/p*)1:
P1=0.3636;
//(p/p*)2:
P2=0.7958;
//(V/V*)1:
v1=1.455;
//(V/V*)2:
v2=1.146;
//Value of T2/T1:
t=t2/t1
//Temperature at section 2(in K):
T2=t*T1
//Value of p2/p1:
p=P2/P1
//Pressure at section 2(in kPa):
p2=p*p1
//Value of V2/V1:
v=v2/v1
//Velocity at section 2(in m/sec):
V2=v*V1
//Density at section 2(in kg/m^3):
d2=p2*1000/R/T2
//At M1, T/T0=0.5556
T01=T1/0.5556
//At M2, T/T0=0.7764
T02=T2/0.7764
//Heat added(in kJ/kg):
E=Cp*(T02-T01)
//Change in entropy(kJ/kg-K):
dS=Cp*log(T2/T1)-R*log(p2/p1)/1000
printf("\n\nRESULTS\n\n")
printf("\n\nTemperature at section 2: %.3f K\n\n",T2)
printf("\n\nPressure at section 2: %.3f kPa\n\n",p2)
printf("\n\nVelocity at section 2: %.3f m/sec\n\n",V2)
printf("\n\nDensity at section 2: %.3f kg/m^3\n\n",d2)
printf("\n\nStagnation temperature at section 2: %.3f K\n\n",T02)
printf("\n\nHeat added: %.3f kJ/kg\n\n",E)
printf("\n\nChange in entropy: %.3f kJ/kg\n\n",dS)

