//mass and volume//
pathname=get_absolute_file_path('12.06.sce')
filename=pathname+filesep()+'12.06-data.sci'
exec(filename)
//Mach umber at section 1:
M1=sqrt((2/(k-1)*((p0/p1)^((k-1)/k)-1)))
//Temperature at section 1(in K):
T1=T0/(1+(k-1)/2*M1^2)
//Density at section 1(in kg/m^3):
d1=p1*1000/R/T1
//Velocity at section1(in m/sec):
V1=M1*sqrt(k*R*T1)
//Area at section 1(in m^2):
A1=%pi/4*D^2
//Mass flow rate(in kg/sec):
m=d1*A1*V1
//Mach number at section 2:
M2=sqrt((2/(k-1))*((T0/T2)-1))
//Velocity at section 2(in m/sec):
V2=M2*sqrt(k*R*T2)
//Density at section 2(in kg/m^3):
d2=d1*V1/V2
//Pressure at section 2(in kPa):
p2=d2/1000*R*T2
//Stagnation pressure at section 2(in kPa):
p02=p2*(1+(k-1)/2*M2^2)^(k/(k-1))
//Force exerted on control volume by duct wall(in N):
F=(p2-p1)*1000*A1+m*(V2-V1)
printf("\n\nRESULTS\n\n")
printf("\n\nMass flow rate: %.3f kg/sec\n\n",m)
printf("\n\nLocal isentropic stagnation pressure at section 2:%.3f kPa\n\n",p02)
printf("\n\nForce exerted on control volume by duct wall:%.3f N\n\n",F)
