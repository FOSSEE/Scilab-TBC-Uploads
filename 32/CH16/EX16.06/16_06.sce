//pathname=get_absolute_file_path('16.06.sce')
//filename=pathname+filesep()+'16.06-data.sci'
//exec(filename)
//Rate at which air is delivered(in m^3/min):
m=2
//Initial pressure(in bar):
p1=1
T1=300 //K
p=150 //bar
//Polytropic index of compression:
n=1.25
p2=3.5
p3=12.25
p4=42.87
//Gas constant(in kJ/kg.K):
R=0.287
printf("\n RESULT \n")
printf("\nIntermediate pressure: %f bar, %f bar, %f bar",p2,p3,p4)
//Temperature at the end of fourth stage(in K):
T=T1*(p2/p1)^((n-1)/n)
//Mass of air(in kg):
m=p*10^2*2/(R*T)
//Work required(in kW):
W=n/(n-1)*m*R*T1*((p2/p1)^((n-1)/n)-1)*4/(60*0.7457)
printf("\nWork input = %f hp",W)