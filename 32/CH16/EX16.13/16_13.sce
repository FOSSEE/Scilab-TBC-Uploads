//pathname=get_absolute_file_path('16.13.sce')
//filename=pathname+filesep()+'16.13-data.sci'
//exec(filename)
//Pressures(in bar):
p1=1
p10=20
//Temperatures(in K):
T1=300
T5=T1
T9=T1
//Clearance:
C=0.04
//Bore(in m):
D=0.30
//Stroke(in m):
L=0.20
//Index of compression:
n=1.25
//Gas constant(in kJ/kg.K):
R=0.287
//Pressure at stage 2(in bar):
p2=p1*(20)^(1/3)
p6=p10/(20^(1/3))
//Volumetric efficiency of LP stage:
nvlp=1+C-C*(p2/p1)^(1/n)
//LP swept volume(in m^3):
Vs=%pi*D^2/4*L
//Effective swept volume(in m^3):
Vsa=nvlp*Vs
//Temperature of air delivered(in K):
T10=T9*(p10/p6)^((n-1)/n)
//Volume of air delivered(in m^3):
Vd=p1/p10*Vsa*T10/T1
//Total work done(in kJ/kg of air):
W=3*(n/(n-1))*R*T1*((p2/p1)^((n-1)/n)-1)
printf("\n RESULT \n")
printf("\nIntermediate pressure = %f bar, %f bar",p2,p6)
printf("\nEffective swept volume of LP cylinder = %f m^3",Vsa)
printf("\nTemperature of air delivered = %f K",T10)
printf("\nVolume of air delivered = %f m^3",Vd)
printf("\nWork done = %f kJ/kg of air",W)