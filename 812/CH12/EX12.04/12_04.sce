//throat//
pathname=get_absolute_file_path('12.04.sce')
filename=pathname+filesep()+'12.04-data.sci'
exec(filename)
//Temperature at the throat(in K):
Tt=T0/(1+(k-1)/2*Mt^2)
//Pressure at throat(in kPa):
pt=p0*(Tt/T0)^(k/(k-1))
//Density at throat(in kg/m^3):
dt=pt*1000/R/Tt
//Velocity at the throat(in m/s):
Vt=Mt*sqrt(k*R*Tt)
//Value of At/A*:
Ax=1/Mt*((1+(k-1)/2*Mt^2)/(1+(k-1)/2))^((k+1)/(2*(k-1)))
//Stagnation properties are constant
//As a result pressure at exit, 
pe=pb;
//The Mach number at the exit is therefore given by
Me=sqrt(((p0/pe)^((k-1)/k)-1)*2/(k-1))
//Calculating the value of Ae/A*:
Ay=1/Me*((1+(k-1)/2*Me^2)/(1+(k-1)/2))^((k+1)/(2*(k-1)))
//Value of A*(in m^2):
A_star=Ae/Ay
//Area at throat(in m^2):
At=Ax*A_star
printf("\n\nRESULTS\n\n")
printf("\n\nTemperature at the throat: %.3f K\n\n",Tt)
printf("\n\nPressure at throat: %.3f kPa\n\n",pt)
printf("\n\nDensity at throat: %.3f kg/m^3\n\n",dt)
printf("\n\nVelocity at the throat: %.3f m/sec\n\n",Vt)
printf("\n\nMach number at the exit: %.3f\n\n",Me)
printf("\n\nArea at throat: %.3f m^2\n\n",At)
