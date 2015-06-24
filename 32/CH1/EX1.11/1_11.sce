//pathname=get_absolute_file_path('1.11.sce')
//filename=pathname+filesep()+'1.11-data.sci'
//exec(filename)
//Atmospheric pressure(in kPa):
Patm=90
//Density of water(in kg/m^3):
dw=1000
//Density of oil(in kg/m^3):
doil=850
//Density of mercury(in kg/m^3):
dm=13600
//Height of water column(in m):
h1=0.15
//Height of oil column(in m):
h2=0.25
//Height of mercury column(in m):
h3=0.40
//Acceleration due to gravity(in m/s^2):
g=9.81
//Pressure due to water column at reference line(in kPa):
Pw=dw*g*h1*10^-3
//Pressure due to oil column at reference line(in kPa):
Po=doil*g*h2*10^-3
//Pressure due to mercury column at reference line(in kPa):
Pm=dm*g*h3*10^-3
//Pressure due to air(in kPa):
Pa=Patm+Pm-Pw-Po
printf("\n\n RESULT \n\n")
printf("\n\n Air pressure=%f kPa \n\n",Pa)