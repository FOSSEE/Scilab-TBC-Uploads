//pathname=get_absolute_file_path('16.17.sce')
//filename=pathname+filesep()+'16.17-data.sci'
//exec(filename)
//Temperature(in K):
T0=300
//Velocity(in m/s):
V1=50
//Mass flow rate(in kg/min):
m=18
//Specifc heat(in kJ/kg.K):
Cp=1.0032
//Mechanical efficiency:
nm=0.90
//Isentropic efficiency:
ni=0.75
//Pressure ratio:
r1=4
//Adiabatic index of compression:
r=1.4
//Stagnation temperature(in K):
T1=T0+V1^2/(2*Cp*10^3)
T2a=T1*r1^((r-1)/r)
T2=(T2a-T1)/ni+T1
printf("\n RESULT \n")
printf("\nTotal head temperature at exit = %f K",T2)
//Brake power required(in hp):
BP=m*Cp*(T2-T1)/(60*nm*0.7457)
printf("\nBrake power required = %f hp",BP)