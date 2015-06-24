//pathname=get_absolute_file_path('12.05.sce')
//filename=pathname+filesep()+'12.05-data.sci'
//exec(filename)
//Steam consumption rate(in kg/a):
m=18/60
//Indicated power(in kW):
IP=100
//Rpm of engine:
n=240
//Bore diameter(in m):
d=0.3
//Stroke length(in m):
L=0.4
//Pressure at which steam is admitted(in bar):
p1=10
//Exhaust pressure(in bar):
p3=0.75
//Occurance of cut-off:
r1=0.25
//Enthalpy of steam(in kJ/kg):
h1=2875.3 //kJ/kg
hf=384.39 //kJ/kg
//Heat added per kg of steam(in kJ/kg):
Q=h1-hf
//Expansion ratio:
r=1/r1
//Hypothetical mean effective pressure(in bar):
mep=p1/r*(1+log(r))-p3
//Theoretical indicated power(in kW):
IPt=mep*L*%pi*d^2*n*10^2/(60)
//Diagarm factor:
d1=IP/IPt
//Indicated thermal efficiency:
n=IPt/(m*Q)*100
printf("\n RESULT \n")
printf("\nDiagram factor = %f",d1)
printf("\nIndicated thermal efficiency = %f percent",n)