//pathname=get_absolute_file_path('12.03.sce')
//filename=pathname+filesep()+'12.03-data.sci'
//exec(filename)
//Diameter of the bore(in m):
d=0.3
//Length of the stroke(in m):
L=0.6
//Occerance od cut-off:
r1=0.4
//Pressure at which steam enters(in bar):
p1=7.5
//Pressure at exhaust(in bar):
p3=0.1
//Rpm of the engine:
n=180
//Diagram factor:
d1=0.6
//Expansion ratio:
r=1/r1
//Hypothetical mean effective pressure(in bar):
mep=p1/r*(1+log(r))-p3
//Actual mean effective pressure(in bar):
mepa=mep*d1
//Indicated power(in kW):
IP=mepa*L*%pi*d^2*2*n*10^2/(4*60)
printf("\n RESULT \n")
printf("\nIndicated power = %f kW",IP)