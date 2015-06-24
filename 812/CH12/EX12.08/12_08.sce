//velocity and entropy//
pathname=get_absolute_file_path('12.08.sce')
filename=pathname+filesep()+'12.08-data.sci'
exec(filename)
//Density at section 1(in lbm/ft^3):
d1=p1*144/R/T1
//Velocity at section 2(in ft/sec):
V2=(p1-p2)*144/d1/V1*32.2+V1
//Density at section 2(in lbm/ft3):
d2=d1*V1/V2
//Temperature at section 2(in R):
T2=p2/d2/R*144
//Mach number at section 2:
M2=V2/sqrt(k*R*32.16*T2)
//Stagnation Temperature at section 2(in R):
T02=T2*(1+(k-1)/2*M2^2)
//Stagnation pressure at section 2 (in psia):
p02=p2*(T02/T2)^(k/(k-1))
//Mach Number at section 1:
M1=V1/sqrt(k*R*32.16*T1)
//Stagnation temperature at section 1(in R):
T01=T1*(1+(k-1)/2*M1^2)
//Energy added(in Btu/lbm):
E=Cp*(T02-T01)
//Change in entropy(in Btu/(lbm-R)):
dS=Cp*log(T2/T1)-(Cp-Cv)*log(p2/p1)
printf("\n\nRESULTS\n\n")
printf("\n\nVelocity at section 2: %.3f ft/sec\n\n",V2)
printf("\n\nDensity at section 2: %.3f lbm/ft^3\n\n",d2)
printf("\n\nTemperature at section 2: %.3f R\n\n",T2)
printf("\n\nStagnation Temperature at section 2: %.3f R\n\n",T02)
printf("\n\nStagnation pressure at section 2: %.3f psia\n\n",p02)
printf("\n\nEnergy added: %.3f Btu/lbm\n\n",E)
printf("\n\nChange in entropy: %.3f Btu/(lbm-R)\n\n",dS)
