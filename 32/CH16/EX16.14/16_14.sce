//pathname=get_absolute_file_path('16.14.sce')
//filename=pathname+filesep()+'16.14-data.sci'
//exec(filename)
//Pressures(in bar):
p1=1
p2=6
p6=30
p5=p2
//Temperatures(in K):
T6=273+150
T5=273+35
T1=300
//Clearance volumes:
Clp=0.05
Chp=0.07
//Mass flow rate(in kg/s):
m=2
//Gas constant(in kJ/kg.K):
R=0.287
//Specific heat(in kJ/kg.K):
Cp=1.0032
Cv=0.72
//Adiabatic index of compression:
r=1.4
//Index of compression:
n=1/(1-log(T6/T5)/log(p6/p5))
//Volumetric efficiency of LP cylinder:
nvlp=1+Clp-Clp*(p2/p1)^(1/n)
//Volumetric efficiency of HP cylinder:
nvhp=1+Chp-Chp*(p6/p5)^(1/n)
//Swept volume of LP cylinder(in m^3/min):
Vslp=m*R*T1*60/(p1*10^2*nvlp)
printf("\n RESULT \n")
printf("\nSwept volume of LP cylinder = %f m^3/min",Vslp)
//Swept volume of HP cylinder(in m^3/min):
Vshp=m*R*T5*60/(p2*10^2*nvhp)
printf("\nSwept volume of HP cylinder = %f m^3/min",Vshp)
//Temperature at state 2(in K):
T2=T1*(p2/p1)^((n-1)/n)
//Cooling required in intercooler(in kW):
Q=m*Cp*(T2-T5)
printf("\nHeat picked up in the intercooler = %f kW",Q)
//Work input required(in kW):
W=n/(n-1)*m*R*((T1*((p2/p1)^((n-1)/n)-1))+(T5*((p6/p5)^((n-1)/n)-1)))
printf("\nTotal work required = %f kW",W)
//Heat transferred in LP cylinder(in kW):
Qlp=m*(r-n)/(n-1)*Cv*(T2-T1)
printf("\nAmount of cooling required in LP cylinder = %f kW",Qlp)
//Heat transferred in HP cylinder(in kW):
Qhp=m*(r-n)/(n-1)*Cv*(T6-T5)
printf("\nAmount of cooling required in HP cylinder = %f kW",Qhp)