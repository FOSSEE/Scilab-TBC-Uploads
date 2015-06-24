//pathname=get_absolute_file_path('18.15.sce')
//filename=pathname+filesep()+'18.15-data.sci'
//exec(filename)
//Mass flow rate(in kg/s):
m1=3
m2=2
//Specific heat(in kJ/kg.K):
Cp=1.005
//Specofoc heat of stream(in kJ/kg.K):
Cps=1.86
//Relative humidity:
r1=0.30
r2=0.85
//From psychometric chart:
pvsat1=0.04246 //bar
pvsat2=0.005628
hg1=2520.7 //kJ/kg
hg2=2559.9 //kJ/kg
T1=30 //C
Tdp1=10.5
T2=35 
Tdp2=32
//Partial pressure of vapour at 1(in bar):
pv1=pvsat1*r1
//Specific humidity:
w1=0.622*pv1/(1.013-pv1)
//Enthalpy at state 1(in kJ/kg):
h1=Cp*T1+w1*(hg1-Cps*(T1-Tdp1))
//Partial pressure at state 2(in bar):
pv2=pvsat2*r2
//Specific humidity:
w2=0.622*pv2/(1.013-pv2)
//Enthalpy at state 1(in kJ/kg):
h1=Cp*T2+w2*(hg2-Cps*(T2-Tdp2))
//Enthalpy of mixture(in kJ/kg):
hmix=1/(m1+m2)*(h1*m1/(1+w1)+h2*m2/(1+w2))
//Mass of vapour:
mmix=1/(m1+m2)*(w1*m1/(1+w1)+w2*m2/(1+w2))
//Specific humidity of mixture:
wmix=mmix/(1-mmix)
//Partial pressure of water vapour(in bar):
pv=1.013*wmix/0.622/(1+w/0.622)
printf("\n RESULT \n")
printf("\nSpecific humidity of mixture = %f kg/kg of dry air",wmix)
printf("\nPartial pressure of water vapour in mixture = %f bar",pv)