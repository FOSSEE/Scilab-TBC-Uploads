//pathname=get_absolute_file_path('12.14.sce')
//filename=pathname+filesep()+'12.14-data.sci'
//exec(filename)
//Pressure at which steam is supplied(in bars):
p1=7
//Pressure at exhaust(in bars):
p5=0.25
//Diameter of HP and LP cylinder(in m):
dhp=0.25
dlp=0.50
//Cut-off point of HP and LP cylinders:
r1=0.30
r2=0.45
//Clearance volume of HP and LP cylinders:
c1=0.10
c2=0.05
//Diagram factors of HP and LP cylinders:
d1hp=0.8
d1lp=0.7
//Rpm pf engine:
N=100
//Let the length of stroke(in m):
L=1
//Volume of HP cylinder(in m^2):
VHP=%pi*dhp^2/4*L
//Volume of LP cylinder(in m^2):
VLP=%pi*dlp^2/4*L
//Clearance volume(in m^2):
V9=c1*VHP
V7=c2*VLP
//Total volume of cylinders(in m^3):
V2=VHP+V9
V5=VLP+V7
//Volume at cut-off in HP cylinder(in m^3):
V1=V9+r1*VHP
V3=V7+r2*VLP
//Expansion ratio:
rhp=V2/V1
rlp=V5/V3
//Pressure at state 3(in kPa):
p3=p1*10^2*V1/V3
//Actual mep for HP cylinder(in kPa):
mepahp=d1hp*(p1*10^2*V1*(1+log(rhp))-p3*V2-(p1*10^2-p3)*V9)/VHP
//Actual mep for LP cylinder(in kPa):
mepalp=62.96
//Actual mep of HP reffered to LP cylinder:
mepa=mepahp*VHP/VLP
//Total mep(in kPa):
mept=mepalp+mepa
//Total output(in kW):
W=mept*VLP*100/60
printf("\nRESULT\n")
printf("\nmep of Hp referred to LP = %f kPa",mepa)
printf("\nmep of LP = %f kPa",mepalp)
printf("\nTotal output = %f*L kW where L is stroke length",W)