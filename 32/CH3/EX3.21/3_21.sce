//pathname=get_absolute_file_path('3.21.sce')
//filename=pathname+filesep()+'3.21-data.sci'
//exec(filename)
//Volume of bottle(in m^3):
v1=0.3
//Pressure in the bottle(in bar):
p1=35
//Temperature in the bottle(in K):
T1=40+273
//Turbo generator's actual output(in kJ/s):
w1=5
//Final prssure(in bar):
p2=1
//Final volume(in m^3):
v2=v1
//Gas constant for air(in kJ/kg.K):
Ra=0.287
//Compression ratio:
r=1.4
//% of output which is consumed= 60%
//Specific heat at const volume(in kJ/kg):
Cv=0.718
//Specific heat at const pressure(in kJ/kg):
Cp=1.005
//Final temperature(in K):
T2=T1*(p2/p1)^((r-1)/r)
//Initial mass in the bottle(in kg):
m1=p1*10^2*v1/(Ra*T1)
//Final mass in the bottle(in kg):
m2=p2*10^2*v2/(Ra*T2)
//Maximum work that can be obtained(in kJ):
W=(m1*Cv*T1-m2*Cv*T2)-(m1-m2)*Cp*T2
//Input to the turbo generator(in kJ/s):
i=w1/0.6
//Time duration(in s):
t=W/i
printf("\nRESULT\n")
printf("\nDuration = %f seconds",t)