//pathname=get_absolute_file_path('12.12.sce')
//filename=pathname+filesep()+'12.12-data.sci'
//exec(filename)
//Pressure at which steam is supplied(in kPa):
p1=1.5*10^3
//Pressure at exhaust(in kPa):
p4=25
//Power output(in kW):
P=250
//Expansion ratio:
r=12
//Diameter of LP cylinder(in m):
d=0.40
//Stroke length(in m):
L=0.60
//Diagram factor:
d1=0.75
//Expansion ratio in HP cylinder:
r1=2.5
//Area of cylinder(in m^2):
A=%pi*d^2/4
//Hypothetical mep(in kPa):
mep=p1/r*(1+log(r))-p4
//Actual mep(in kPa):
mepa=mep*d1
//Rpm of engine:
N=P/(mepa*L*A*2)*60
printf("\n RESULT \n")
printf("\nSpeed of engine = %d rpm",N)
//Volume of LP cylinder(in m^3):
V3=A*L
V4=V3
//Cut-off volume in HP cylinder(in m^3):
Vc=V4/r
//Total volume in HP cylinder(in m^3):
Vt=Vc*r1
//Diameter of HP cylinder(in m):
D=sqrt(Vt*4/(L*%pi))
printf("\nDiameter of HP cylinder = %f cm",D*100)