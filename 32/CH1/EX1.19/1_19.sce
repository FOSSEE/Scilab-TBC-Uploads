//pathname=get_absolute_file_path('1.19.sce')
//filename=pathname+filesep()+'1.19-data.sci'
//exec(filename)
//Pressure of steam(in kPa):
p=17672
//Temperature of steam(in K):
t=712
//Critical pressure(in kPa):
Pc=22.09*10^3
//Critical temperature(in K):
Tc=647.3
//Gas constant for steam(in kJ/kg-K):
Rs=0.4615
//Considering perfect gas:
//Specific volume(in m^3/kg)
vp=Rs*t/p
//Considering real gas:
//Reduced pressure:
Rp=p/Pc
//Reduced temperature:
Rt=t/Tc
//Value of compressibility factor(from chart for Rp & Rt):
Z=0.785
//Specific volume(in m^3/kg):
vr=Z*vp
printf("\n\n RESULT \n\n")
printf("\n\n Specific volume considering perfect gas = %f m^3/kg",vp)
printf("\n Specific volume considering real gas =%f m^3/kg \n\n",vr)