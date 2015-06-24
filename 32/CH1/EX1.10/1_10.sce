//pathname=get_absolute_file_path('1.10.sce')
//filename=pathname+filesep()+'1.10-data.sci'
//exec(filename)
//Pressure in compartment A(in kPa):
Pa=400
//Pressure in compartment B(in kPa):
Pb=150
//Reading of barometer(in m):
h=720*10^-3
//Density of mercury(in kg/m^3):
d=13.6*10^3
//Acceleration due to gravity(in m/s^2):
g=9.81
//Atmospheric pressure from barometer reading(in kPa):
Patm=d*g*h*10^-3
//Absolute pressure in compartment A(in kPa):
PaA=Pa+Patm
//Absolute pressure in compartment B(in kPa):
PaB=Pb+Patm
printf("\n\n RESULT \n\n")
printf("\n\n Absolute pressure in compartment A=%f kPa",PaA)
printf("\n Absolute pressure in compartment B=%f kPa \n\n",PaB)