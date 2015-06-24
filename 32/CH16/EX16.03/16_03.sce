//pathname=get_absolute_file_path('16.03.sce')
//filename=pathname+filesep()+'16.03-data.sci'
//exec(filename)
//Compression ratio:
r=7
//L/D ratio:
r1=1.2
//Speed(in rpm):
N=240
//Pressure(in bar):
p1=0.97
p2=r*p1
//Temperature(in K):
T1=35+273
//Volume(in m^3):
V=20
V3=0.05
V1=1.05
//Gas constant(in kJ/kg.K):
R=0.287
//Index of compression:
n=1.25
//Mass of air delivered(in kg/min):
m=10^2*V/(R*300)
//Temperature at state 2(in K):
T2=T1*r^((n-1)/n)
//Volume at state 4(in m^3):
V4=V3*r^(1/n)
//Volumetric efficiency:
nv=p1*300/T1*(V1-V4)*100
printf("\n RESULT \n")
printf("\nVolumetric efficiency = %f percent",nv)
//Swept volume(in m^3/cycle):
Vs=V/(4*N)
//Bore(in m):
D=(Vs*4/(%pi*r1))^(1/3)
//Stroke(in m):
L=r1*D
printf("\nBore = %f cm",D*100)
printf("\nStroke = %f cm",L*100)
//Work required in reciprocating compressor(in hp):
W=n/(n-1)*m*R*(T2-T1)/(60*0.7457)
//Work done in isothermal process(in hp):
Wiso=m*R*T1*log(r)/(60*0.7457)
//Isothermal efficiency:
ni=Wiso/W*100
printf("\nIsothermal efficiency = %f percent",ni)