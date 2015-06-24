//pathname=get_absolute_file_path('13.10.sce')
//filename=pathname+filesep()+'13.10-data.sci'
//exec(filename)
//Mass flow rate(in kg/s):
m=5/60
//Pressure at which steam is discharged(in bar):
p3=1
//Initial pressure(in bar):
p1=10
//Initial temperature(in K)
T1=200+273
//Adiabatic index of compression:
n=1.3
//From steam tables:
h1=2827.9 //kJ/kg
s1=6.6940 //kJ/kg.K
v1=0.2060 //m^3/kg
h2a=2711.23 //kJ/kg
s2a=6.6749 //kJ/kg.K
s3=s2a
h3=2420.08 //kJ/kg
v3=1.5025 //m^3/kg
psat=3.44 //bar (at T=138.18 C)
Tsat=155.12 //C (at p=5.45 bar)
//Pressure at throat(in bar):
p2=p1*(2/(n+1))^(n/(n-1))
//Velocity at exit(in m/s):
C3=sqrt(2*(h1-h3)*10^3)
//Exit area(in m^2):
A3=m*v3/C3
//Diameter of nozzle at exit(in m):
d=sqrt(A3*4/%pi)
//Temperature at throat(in K):
T2=T1*(p2/p1)^((n-1)/n)
//Degree of supersaturation:
d1=p2/psat
//Amount of undercooling(in C):
u=Tsat-(T2-273)
printf("\nRESULT\n")
printf("\nDegree of supersaturation = %f",d1)
printf("\nAmount of undercooling = %f C",u)