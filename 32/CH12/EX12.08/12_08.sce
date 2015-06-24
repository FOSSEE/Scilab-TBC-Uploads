//pathname=get_absolute_file_path('12.08.sce')
//filename=pathname+filesep()+'12.08-data.sci'
//exec(filename)
//Diameter of cylinder(in m):
D=0.2
//Length of stroke(in m):
L=0.3
//Clearance volume(in cm^3):
Vc=2*10^3
//Mass of steam used per stroke(in kg):
ms=0.05
//Point at which compression starts:
c=0.80 //of stroke
//Pressure of steam when compression starts(in bar):
p4=1
//Cut-off point:
r1=0.10 //of stroke
//Release:
r2=0.90 //of stroke
//Pressure at states 1 & 2(in bar):
p1=15
p2=3
//From steam tables:
v4=1.6940 //m^3/kg
vg15=0.13177 //m^3/kg
vg3=0.6058 //m^3/kg
u1=1590.79 //kJ/kg
u2=1216.73 //kJ/kg
//Clearance volume(in m^3):
V6=Vc*10^(-6)
V5=V6
//Stroke volume(in m^3):
Vs=%pi*D^2/4*L
//Volume at state 3(in m^3):
V3=V6+Vs
//Volume at state 4(in m^3):
V4=V3-c*(V3-V6)
//Mass of steam at state 4(in kg):
m4=V4/v4
//Total mass of steam during expansion(in kg):
m=m4+ms
//Volume at cut-off point(in m^3):
V1=V6+r1*(V3-V6)
//Dryness fraction at cut-off point:
x1=V1/(m*vg15)
//Volume at point of release(in m^3):
V2=V6+r2*(V3-V6)
//Dryness fraction at point of release:
x2=V2/(m*vg3)
//Index of expansion:
n=log(p1/p2)/log(V2/V1)
//Work done in a stroke(in kJ):
W=(p1*V1-p2*V2)/(n-1)
//Work done per kg of steam(in kJ/kg):
Ws=W/m
//Change in internal energy(in kJ/kg):
du=u2-u1
//Heat transfer(in kJ/kg):
dQ=du+Ws
printf("\n RESULT \n")
printf("\nTotal mass of steam during expansion = %f kg",m)
printf("\nDryness fraction at cut-off and release = %f,%f",x1,x2)
printf("\nHeat leakage = %f kJ/kg steam",-dQ)