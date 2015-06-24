//Change//
pathname=get_absolute_file_path('11.01.sce')
filename=pathname+filesep()+'11.01-data.sci'
exec(filename)
//Density of air at entry:
d1=p1*10^3/R/T1
//Area(in m^2):
A=m/d1/V1
//Change in enthalpy of air(in kJ/kg):
dh=cp*(T2-T1)
//Change in internal energy of air(in kJ/kg):
du=cv*(T2-T1)
//Change in entropy(in kJ/(kg-K)):
ds=cp*log(T2/T1)-R/1000*log(p2/p1)
printf("\n\nRESULTS\n\n")
printf("\n\nDuct Area: %.3f m^2\n\n",A)
printf("\n\nChange in enthalpy of air: %.3f kJ/kg\n\n",dh)
printf("\n\nChange in internal energy of air:%.3f kJ/kg\n\n",du)
printf("\n\nChange in entropy: %.3f kg-K\n\n",ds)
