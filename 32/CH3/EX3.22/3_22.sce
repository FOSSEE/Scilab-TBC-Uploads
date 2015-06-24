//pathname=get_absolute_file_path('3.22.sce')
//filename=pathname+filesep()+'3.22-data.sci'
//exec(filename)
//Pressure at state 1(in bar):
p1=1.5
//Temperature at state 1(in K):
T1=77+273
//Pressure at state 2(in bar):
p2=7.5
//Mass of the air(in kg):
m=3
//Value of n:
n=1.2
//Gas constant for air(in kJ/kg.K):
Ra=0.287
//Temperature at state 2(in K):
T2=T1*(p2/p1)^((n-1)/n)
//Initial volume(in m^3):
v1=m*Ra*T1/(p1*10^2)
//Volume at state 2(in m^3):
v2=(p1*(v1^n)/p2)^(1/n)
//Temperature at state 3(in K):
T3=T1
//Volume at state 3(in m^3):
v3=v2*T3/T2
//Pressure at state 3(in bar):
p3=7.5
//Compression work during process 1-2(in kJ):
W12=m*Ra*(T2-T1)/(1-n)
//Work during process 2-3(in kJ):
W23=p2*(10^2)*(v3-v2)
//Work during process 3-1(in kJ):
W31=p3*10^2*v3*log(v1/v3)
//Net work(in kJ):
Wn=W12+W23+W31
printf("\nRESULT\n")
printf("\nHeat transferred from the system = %f kJ",-Wn)