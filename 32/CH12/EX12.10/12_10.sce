//pathname=get_absolute_file_path('12.10.sce')
//filename=pathname+filesep()+'12.10-data.sci'
//exec(filename)
//Pressure at which steam is supplied(in kPa):
p1=1.5*10^3
//Dryness fraction:
x1=0.9
//Pressure at exhaust(in kPa):
p4=40
//Diagram factor reffered to LP cylinder:
d1LP=0.8
//Stroke length(in m):
L=0.38
//Bore of HP cylinder(in m):
dHP=0.20
//Bore of LP cylinder(in m):
dLP=0.30
//Rpm of engine:
N=240
//Area of HP cylinder(in m^2):
AHP=%pi*(dHP^2)/4
//Area of LP cylinder(in m^2):
ALP=%pi*(dLP^2)/4
//Intermediate pressure(in kPa):
p2=192
//Volume at state 2(in m^3):
V2=AHP*L
//Volume at state 1(in m^3):
V1=V2*p2/p1
//Volume of LP cylinder(in m^3):
VLP=ALP*L
//Expansion ratio throughout the engine:
r=VLP/V1
//Mean effective pressure(in kPa):
mep=p1/r*(1+log(r))-p4
//Actual mep(in kPa):
mepa=mep*d1LP
//Indicated power(in kW):
IP=mepa*L*ALP*N/60*2
//Volume of steam admitted per hour(in m^3):
Vs=V1*N*2*60
//Specific volume of steam being admitted(in m^3/kg):
v1=0.1187
//Steam consumption(in kg/hr):
m=Vs/v1
printf("\n RESULT \n")
printf("\nIndicated power = %f kW",IP)
printf("\nSteam consumption = %f kg/hr",m)