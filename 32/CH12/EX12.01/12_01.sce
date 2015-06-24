//pathname=get_absolute_file_path('12.01.sce')
//filename=pathname+filesep()+'12.01-data.sci'
//exec(filename)
//Pressure at which steam is supplied(in MPa):
p1=0.2
//Temperature of steam(in C):
T=250
//Pressure upto which steam is expanded(in bar):
p2=0.3
//Pressure at which it is finally released(in bar):
p3=0.05
//From steam tables:
h1=2971 //kJ/kg
s1=7.7086 //kJ/kg.K
s2=s1
h2=2601.97 //kJ/kg
v2=5.1767 //m^3/kg
hf=137.82 //kJ/kg
Tmax=393.23 //K
Tmin=305.88 //K
//Work output from engine cycle per kg of steam(in kJ/kg):
W=h1-h2+v2*(p2-p3)*10^2
//Heat input per kg of steam(in kJ/kg):
Q=h1-hf
//Efficiency of modified Rankine cycle:
n=W/Q*100
//Carnot efficiency:
nc=(1-Tmin/Tmax)*100
printf("\n RESULT \n")
printf("\nModified Rankine cycle efficiency = %f percent",n)
printf("\nCarnot efficiency = %f percent",nc)