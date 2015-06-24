//pathname=get_absolute_file_path('16.02.sce')
//filename=pathname+filesep()+'16.02-data.sci'
//exec(filename)
//Pressure of air entering(in kPa):
p1=1*10^2
//Index of compression:
n=1.2
//Delivery pressure(in kPa):
p2=12*10^2
//Speed(in rpm):
N=240
//Initial temperature(in K):
T1=20+273
//L/D ratio:
r1=1.8
//Mechanical efficiency:
nm=0.88
V1=1 //m^3
//Gas constant(in kJ/kg.K):
R=0.287
//Mass of air delivered per minute:
m=p1*V1/(R*T1)
//Temperature at the end of compression(in K)
T2=T1*(p2/p1)^((n-1)/n)
//Work required during compression process(in kJ/min):
W=(n/(n-1))*m*R*(T2-T1)
//Capacity of drive required to run compressor(in hp):
C=W/nm
//Isothermal work required for same compression(in kJ/min):
Wiso=m*R*T1*log(p2/p1)
//Isothermal efficiency:
niso=Wiso/W*100
//Volume of aur entering per cycle:
v=1/N
//Bore diameter(in cm):
D=(v*4/(%pi*r1))^(1/3)*100
//Stroke length(in cm):
L=r1*D
printf("\n RESULT \n")
printf("\nIsothermal efficiency = %f percent",niso)
printf("\nCylinder dimension, D = %f cm",D)
printf("\n                    L = %f cm",L)
printf("\nRating of drive = %f hp",C)