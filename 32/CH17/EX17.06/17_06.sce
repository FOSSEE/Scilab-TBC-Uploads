//pathname=get_absolute_file_path('17.06.sce')
//filename=pathname+filesep()+'17.06-data.sci'
//exec(filename)
//Volumetric efficiency
n=0.7
//Air fuel ratio:
r=19
//Speed(in rpm):
N=3000
//Fuel consumption rate(in litres/hr):
m=5
//Specific gravity:
sg=0.7
//Piston speed(in m/min):
s=500
//Mep(in kPa):
p=6*10^2
//Gas constant(in kJ/kg.K):
R=0.287
//Mechanical efficiency:
nm=0.8
//Stroke length(in m):
L=s/(2*N)
//Air requirement(in kg/min):
ma=r*m*sg/60
//Volume of air sucked(in m^3/min):
Va=ma*R*288/(1.013*10^2)
//Bore diameter(in m):
D=sqrt(Va*4/(%pi*L*N*2*n))
//Indicated power(in kW):
IP=p*L*(%pi*D^2/4*N*2)/60
//Brake power(in kW):
BP=IP*nm
printf("\n RESULT \n")
printf("\nBrake power = %f W",BP)