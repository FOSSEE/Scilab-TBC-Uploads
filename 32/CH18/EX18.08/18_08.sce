//pathname=get_absolute_file_path('18.08.sce')
//filename=pathname+filesep()+'18.08-data.sci'
//exec(filename)
//Pressures(in bar):
p0=0.9
p1=1
p2=4
p3=p2
p4=p3
p5=1.03
//Temperatures(in K):
T6=298
T0=276
//Specific heat(in kJ/kg):
Cp=1.005
//Adiabatic index of compression:
r=1.4
//Refrigeration capacity:
C=15
//Isentropic efficiency for compressor:
nic=0.9
//Isentropic efficiency for turbine:
nit=0.8
//Temperature at state 1(in K):
T1=T0*(p1/p0)^((r-1)/r)
//Temperature at state 2'(in K):
T2a=T1*(p2/p1)^((r-1)/r)
//Temperature at state 2(in K):
T2=T1+(T2a-T1)/nic
//Temperature at state 3(in K):
T3=0.34*T2
//Temperature at state 4(in K):
T4=T3-10
//Temperature at state 5'(in K):
T5a=T4*(p5/p4)^((r-1)/r)
//Temperature at state 5(in K):
T5=T4-(T4-T5a)*nit
//Mass flow rate(in kg/s):
m=C*3.5/(Cp*(T6-T5))
//Work input(in kJ/s):
W=m*Cp*(T2-T1)
//COP:
COP=C*3.5/W
printf("\n RESULT \n")
printf("\nCOP = %f",COP)
printf("\nHP required = %f hp",W/0.7457)