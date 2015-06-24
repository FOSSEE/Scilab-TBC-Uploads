//pathname=get_absolute_file_path('18.10.sce')
//filename=pathname+filesep()+'18.10-data.sci'
//exec(filename)
//Operating temperature(in K):
T1=-20+273
T3=40+273
//Pressures(in bar):
p2=9.61
p1=1.51
n=1.13
//Speed(in rpm):
N=1200
h1=178.61 //kJ/kg
h3=73.53 //kJ/kg
h4=h3
s1=0.7082 //kJ/kg.K
s2=s1
sg=0.682 //kJ/kg.K
Cpg=0.747 //kJ/kg.K
hg=203.05 //kJ/kg
vg=0.1088 //m^3/kg
m1=2.86 //ton
//Clearance volume:
C=0.02
//Temperature of state 2(in K):
T2=T3*(%e)^((s1-sg)/Cpg)
//Enthalpy after compression(in kJ/kg):
h2=hg+Cpg*(T2-T3)
//Compression work(in kJ/kg):
Wc=h2-h1
//Refrigeration effect(in kJ/kg):
r=h1-h4
//Mass flow rate(in kg/s):
m=m1*3.5/r
//COP:
COP=r/Wc
//Volumetric efficiency:
nv=1+C-C*(p2/p1)^(1/n)
//Piston displacement(in m^3):
V=m*60*vg/(nv*N)
printf("\n RESULT \n")
printf("\nCOP = %f",COP)
printf("\nPiston displacement = %f cm^3",V*10^6)