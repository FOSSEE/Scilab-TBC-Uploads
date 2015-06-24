//pathname=get_absolute_file_path('12.04.sce')
//filename=pathname+filesep()+'12.04-data.sci'
//exec(filename)
//Steam is admitted at pressure(in bar):
p1=15
//Pressure at which steam exhausts(in bar):
p3=0.75
//Cut-off occuring at:
r1=0.25
//Power produced by the engine(in hp):
P=150
//Rpm of engine:
n=240
//Mechanical efficiency:
nm=0.85
//Diagram factor:
d1=0.7
//Brake thermal efficiency:
nb=0.2
//Stroke to bore ratio:
r2=1.5
//From steam tables:
h15=2803.3
hf=384.39
//Expansion ratio:
r=1/r1
//Hypothetical mean effective pressure(in bar):
mep=p1/r*(1+log(r))-p3
//Actual mean effective pressure(in bar):
mepa=mep*d1
//Indicated horse power(in kW):
IP=P/nm
//Diameter of bore(in m):
d=((IP*4*60*0.7457)/(mepa*10^2*r2*%pi*n))^(1/3)
//Stroke length(in m):
L=d*r2
//Heat added per kg of steam(in kJ/kg):
Q=h15-hf
//Specific steam consumption(in kg/hp.hr):
m=0.7457*3600/(nb*Q)
printf("\n RESULT \n")
printf("\nBore = %f cm",d*100)
printf("\nStroke = %f cm",L*100)
printf("\nSpecific steam consumption = %f kg/hp.hr",m)