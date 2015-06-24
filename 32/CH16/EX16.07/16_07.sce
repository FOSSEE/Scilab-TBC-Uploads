//pathname=get_absolute_file_path('16.07.sce')
//filename=pathname+filesep()+'16.07-data.sci'
//exec(filename)
//Pressures(in bar):
p1=1
p2=4
p3=16
//Index of compression:
n=1.3
//Gas constant(in kJ/kg.K):
R=0.287
//Temperature(in K):
T1=17+273
//Volumetric efficiency:
nv=0.90
//Bore diameters(in m):
Dhp=0.06
Dlp=0.12
//Work required(in kJ/kg):
W=n/(n-1)*R*T1*((p2/p1)^((n-1)/n)+(p3/p2)^((n-1)/n)-2)
printf("\n RESULT \n")
printf("\nWork = %f kJ/kg",W)