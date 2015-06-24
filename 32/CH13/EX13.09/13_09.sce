//pathname=get_absolute_file_path('13.09.sce')
//filename=pathname+filesep()+'13.09-data.sci'
//exec(filename)
//Force on the plate(in N):
F=350
//Initial pressure(in bar):
p1=8
//Final pressure(in bar):
p3=1
//Throat cross-sectional area(in m^2):
A2=5*10^(-4)
//From steam tables:
h1=2769.1 //kJ/kg
s1=6.6628 //kJ/kg.K
s2=s1
s3=s1
x2=0.9717
h2=2685.17 //kJ/kg
v2=0.3932 //m^3/kg
x3=0.8238
h3=2277.6 //kJ/kg
//Enthalpy change(in kJ/kg):
h12=h1-h2
//Velocity at throat(in m/s):
C2=sqrt(2*h12*10^3)
//Discharge at throat(in kg/s):
m=A2*C2/v2
//Actual exit velocity(in m/s):
C3a=F/m
//Theoretical enthalpy drop(in kJ/kg):
h23=h2-h3
//Nozzle efficiency:
n=C3a^2/(2*h23*10^3)
printf("\nRESULT\n")
printf("\nDischarge at throat = %f kg/s",m)
printf("\nNozzle efficiency = %f percent",n*100)