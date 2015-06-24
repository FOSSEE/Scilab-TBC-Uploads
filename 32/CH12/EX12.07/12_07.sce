//pathname=get_absolute_file_path('12.07.sce')
//filename=pathname+filesep()+'12.07-data.sci'
//exec(filename)
//Power produced(in bhp):
P=60
//Pressure at which steam is admitted(in bar):
p1=12
//Pressure at exhaust(in bar):
p3=1
//Rpm of engine:
n=240
//Piston speed(in m/s):
v=2
//Diameter of piston(in m):
d=0.04
//Occurence of cut-off:
n=0.60
//Clearance volume to stroke volume ratio:
r1=0.05
//Diagram factor:
d1=0.8
//Mechanical efficiency:
nm=0.90
//Expansion ratio:
r=(1+r1)/n
//Mean effective pressure(in bar):
mep=(p1*12*(1+log(r))-1*21-(12-1))/(21-1)
//Actual mean effective pressure(in bar):
mepa=mep*d1
//Effective area(in m^2):
A=P*0.7457/(nm*mepa*10^2*v)
//Bore diameter(in m):
D=sqrt((A-%pi*d^2/4)*4/(2*%pi))
printf("\n RESULT \n")
printf("\nBore = %f cm",D*100)