//pathname=get_absolute_file_path('12.02.sce')
//filename=pathname+filesep()+'12.02-data.sci'
//exec(filename)
//Pressure at which steam is supplied(in bar):
p1=10
//Diameter of the cylinder(in m):
d=0.3
//Length of stroke(in m):
L=0.6
//Pressure to which steam is expanded(in bar):
p2=0.75
//Pressure at which steam is released in the condensor(in bar):
p3=0.25
//From steam tables:
h1=2676.2 //kJ/kg
s1=7.3614 //kJ/kg.K
s2=s1
v2=2.1833 //m^3/kg
h2=2628.35 //kJ/kg
h4=271.93 //kJ/kg
s6=s2
h6=2459.38 //kJ/kg
s6=7.3614 //kJ/kg.K
v6=5.784 //m^3/kg
//Work output from engine cycle per kg of steam(in kJ/kg):
W=h1-h2+v2*(p2-p3)*10^2
//Heat input per kg of steam(in kJ/kg):
Q=h1-h4
//Efficiency of modified Rankine cycle:
n=W/Q*100
//Volume of the cylinder(in m^3):
V=%pi*d^2*L/4
//Mass of steam in a stroke(in kg):
m=V/v2
//Volume requiremnet at 6(in m^3):
V1=m*v6
//New stroke length(in m):
L1=V1*4/(%pi*d^2)
printf("\n RESULT \n")
printf("\nModified Rankine cycle efficiency = %f percent",n)
printf("\nNew stroke length = %f cm",L1*100)