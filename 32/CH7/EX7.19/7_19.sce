//pathname=get_absolute_file_path('7.19.sce')
//filename=pathname+filesep()+'7.19-data.sci'
//exec(filename)
//From steam tables:
vg=0.12736
vf=0.001157
p205=1.7230
p195=1.3978
T=200+273
hfga=1940.7
//Value of vfg(in m^3/kg):
vfg=vg-vf
//Value of dp/dT(in MPa/K):
r=(p205-p195)/(205-195)
//By Clapeyron equation(in kJ/kg):
hfg=T*vfg*r*10^3
printf("\nRESULT")
printf("\nCalculated enthalpy of vaporization = %f kJ/kg",hfg)
printf("\nEnthalpy of vaporization from steam table = %f kJ/kg",hfga)