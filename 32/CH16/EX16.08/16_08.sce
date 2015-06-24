//pathname=get_absolute_file_path('16.08.sce')
//filename=pathname+filesep()+'16.08-data.sci'
//exec(filename)
//Speed(in rpm):
N=200
//Mass flow rate(in kg/min):
m=4
//Pressure(in bar):
p1=1
p6=25
//Temperatures(in K):
T1=17+273
T5=T1
//Clearance volumes:
Clp=0.04
Chp=0.05
//Index of compression:
n=1.25
//Gas constant(in kJ/kg.K):
R=0.287
//Specific heat(in kJ/kg.K):
Cp=1.0032
//Pressure ratio:
r=sqrt(p6/p1)
//Temperature at state 2(in K):
T2=T1*r^((n-1)/n)
//Temperature at state 6(in K):
T6=T5*r^((n-1)/n)
//Actual compression work requirement(in kJ/min):
W=2*n/(n-1)*m*R*T1*(r^((n-1)/n)-1)
//Work required if process is isothermal(in kJ/min):
Wi=m*R*T1*log(p6/p1)
//Isothermal efficiency:
ni=Wi/W
//Free air delivered(in m^3/min):
Vf=m*R*T1/(p1*10^2)
//Heat transferred in HP & LP cylinder(in kJ/min):
Q=W/2-m*Cp*(T2-T1)
//Volumetric efficiency of HP cylinder:
nvhp=1+Chp-Chp*r^(1/n)
//Volumetric efficiency of LP cylinder:
nvlp=1+Clp-Clp*r^(1/n)
//Stroke volume of HP cylinder(in m^3):
Vshp=Vf/(r*N*nvhp)
//Clearance volume Of HP cylinder(in m^3):
Vchp=Chp*Vshp
//Total HP cylinder volume(in m^3):
Vthp=Vshp+Vchp
//Stroke volume of LP cylinder(in m^3):
Vslp=Vf/(N*nvlp)
//Clearance volume of LP cylinder(in m^3):
Vclp=Clp*Vslp
//Total LP cylinder volume(in m^3):
Vtlp=Vslp+Vclp
printf("\n RESULT \n")
printf("\nPower required = %f hp",W/(60*0.7457))
printf("\nIsothermal efficiency = %f percent",ni*100)
printf("\nFree air delivered = %f m^3/min",Vf)
printf("\nHeat transferred in HP & LP cylinder = %f kJ/min",Q)
printf("\nHP cylinder volume = %f m^3",Vthp)
printf("\nLP cylinder volume = %f m^3",Vtlp)