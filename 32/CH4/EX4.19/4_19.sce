//pathname=get_absolute_file_path('4.19.sce')
//filename=pathname+filesep()+'4.19-data.sci'
//exec(filename)
//Volume of 1st tank(in m^3):
v1=1.8
//Volume of 2nd tank(in m^3):
v2=3.6
//Initial pressure(in bar):
p1=12
//Initial temperature(in K):
T1=40+273
//Gas constant for argon(in kJ/kg.K):
R=0.208
//By gas law for final and initial state:
pf=p1*v1/(v1+v2)
printf("\nRESULT\n")
printf("\nFinal pressure = %d bar",pf)
//As there is no heat transfer, change in internal energy is 0:
Tf=T1
dH=0
W=0
printf("\nChange in enthalpy = %d",dH)
printf("\nWork done =%d",W)