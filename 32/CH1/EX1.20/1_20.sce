//pathname=get_absolute_file_path('1.20.sce')
//filename=pathname+filesep()+'1.20-data.sci'
//exec(filename)
//Diameter of the balloon(in m):
d=5
//Atmospheric pressure(in N/m^2):
p=1.013*10^5
//Temperature of the surroundings(in K):
t=17+273
//Universal gas constant(in J/kg-K):
R=8.314*10^3
//Molecular weight of hydrogen:
mw=2
//Gas constant for air(in J/kg-K):
Ra=287
//Volume of the balloon(in m^3):
v=4/3*%pi*(5/2)^3
//Gas constant for H2(in kJ/kg-K):
Rh=R/mw
//Mass of H2 in balloon(in kg):
mh=p*v/(Rh*t)
//Volume of air displaced(in m^3):
vd=v
//Mass of air displaced(in kg):
ma=p*vd/(Ra*t)
//Load lifting capacity due to buoyant force(in kg):
L=ma-mh
printf("\n\n RESULT \n\n")
printf("\n\n Load lifting capacity = %f \n\n",L)