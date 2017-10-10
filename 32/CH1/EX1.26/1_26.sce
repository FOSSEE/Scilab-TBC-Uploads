//pathname=get_absolute_file_path('1.26.sce')
//filename=pathname+filesep()+'1.26-data.sci'
//exec(filename)
//Mass of Hydrogen(in kg):
mh=18
//Mass of Nitrogen(in kg):
mn=10
//Mass of Carbon dioxide(in kg):
mc=2
//Initial temperature(in K):
t1=27+273.15
//Final temperature(in K):
t2=2*t1
//Universal gas constant(in kJ/kg-K):
R=8.314
//Molecular weight of Hydrogen:
mwh=2
//Molecular weight of Nitrogen:
mwn=28
//Molecular weight of Carbon dioxide:
mwc=44
//Initial pressure of the gases(in kPa)
p1=101.325
//Gas constant for Hydrogen(in kJ/kg-K):
Rh=R/mwh
//Gas constant for Nitrogen(in kJ/kg-K):
Rn=R/mwn
//Gas constant for Carbon dioxide(in kJ/kg-K):
Rc=R/mwc
//Gas constant for the mixture(in kJ/kg-K):
Rm=(mh*Rh+mn*Rn+mc*Rc)/(mh+mn+mc)
//Capacity of the vessel(in m^3):
V=(mh+mn+mc)*Rm*t1/p1
//Final pressure of the mixture(in kPa):
p2=p1*t2/t1
printf("\n\n RESULT \n\n")
printf("\n\n Volume of the vessel = %f m^3",V)
printf("\n Final pressure of the mixture =%f kPa",p2)