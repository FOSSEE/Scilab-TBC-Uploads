//pathname=get_absolute_file_path('9.01.sce')
//filename=pathname+filesep()+'9.01-data.sci'
//exec(filename)
//Compression ratio:
r=6
//Swept volume(in m^3):
v=0.15
//Pressure at the beginning of compression(in kPa):
p1=98
//Temperature at the beginning of compression(in K):
T1=60+273.15
//Heat supplied(in kJ/kg):
Q23=150
//Value of Cp(in kJ/kg):
Cp=1
//Value of Cv(in kJ/kg):
Cv=0.71
//Adiabatic compression factor:
n=Cp/Cv
//Gas constant(in kJ/kg.K):
R=Cp-Cv
//Volume at point 2(in m^3):
v2=v/(r-1)
//Total cylinder volume(in m^3):
v1=r*v2
//Mass(in kg):
m=p1*v1/(R*T1)
//Pressure at point 2(in kPa):
p2=p1*(v1/v2)^n
//Temperature at state 2(in K):
T2=p2*v2*T1/(p1*v1)
//Temperature at state 3(in K):
T3=Q23/(m*Cv)+T2
v3=v2
//Pressure at point 3(in kPa):
p3=p2*v2*T3/(v3*T2)
v4=v1
//Pressure at point 4(in kPa):
p4=p3*(v3/v4)^n
//Temperature at point 4(in K):
T4=p4*v4*T3/(p3*v3)
//Entropy change(in kJ/K):
dS=m*Cv*log(T4/T1)
//Heat rejected(in kJ):
Q41=m*Cv*(T4-T1)
//Net work done(in kJ):
W=Q23-Q41
//Efficiency:
e=W/Q23
//Mean effective pressure(in kPa):
mep=W/v
printf("\nRESULT")
printf("\nm.e.p = %f kPa",mep)