//pathname=get_absolute_file_path('16.11.sce')
//filename=pathname+filesep()+'16.11-data.sci'
//exec(filename)
//Bore(in m):
D=0.10
//Stroke(in m):
L=0.08
//Speed(in rpm):
N=500
//Acceleration due to gravity(in m/s^2):
g=9.81
//Atmospheric temperature(in K):
T=27+273
//Radius of arm of spring balance(in m):
r=0.30
//Mechanical efficiency:
nm=0.90
//Free air delivery(in m^3/min):
f=15/60
//Volume of cylinder(in m^3):
V=%pi*D^2*L/4
//Volumetric efficiency:
nv=f/(V*N)*100
printf("\n RESULT \n")
printf("\nVolumetric efficiency = %f percent",nv)
//Shaft output(in hp):
W=2*%pi*N*100*g*r*10^(-3)/(60*0.7457)
//Shaft output per m^3 of free air per min:
W1=W/f
printf("\nShaft output per m^3 of free air = %f hp per m^3 of free air per minute",W1)