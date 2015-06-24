//pathname=get_absolute_file_path('12.11.sce')
//filename=pathname+filesep()+'12.11-data.sci'
//exec(filename)
//Pressure at which steam is supplied(in kPa):
p1=1.4*10^3
//Pressure at exhaust(in kPa):
p4=25
//Expansion ratio:
r=8
//Rpm of engine:
N=240
//Bore diameter(in m):
d=0.60
//Stroke length(in m):
L=0.60
//Diagram factor:
d1=0.8
//Area of cylinder(in m^2):
A=%pi*d^2/4
//Hypothetical mep(in kPa):
mep=p1/r*(1+log(r))-p4
//Actual mep(in kPa):
mepa=mep*d1
//Indicated power(in kW):
IP=mepa*L*A*N/60*2
//Work done in HP cylinder(in kJ):
W=mepa*A*L/2
//Volume at state 1(in m^3):
V1=%pi*d^2*L/(4*8)
//Volume at state 2(in m^3):
V2=2.71^(W/(p1*V1))*V1
//Diameter of HP cylinder(in m):
D=sqrt(V2*4/(L*%pi))
//Intermediate pressure(in kPa):
p2=p1*V1/V2
printf("\n RESULT \n")
printf("\nIndicated power = %f kW",IP)
printf("\nDiameter of HP cylinder = %f cm",D*100)
printf("\nIntermediate pressure = %f kPa",p2)