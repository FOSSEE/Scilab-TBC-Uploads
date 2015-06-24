//pathname=get_absolute_file_path('18.13.sce')
//filename=pathname+filesep()+'18.13-data.sci'
//exec(filename)
//Relavite humidity;
r=0.6
//Saturation pressure(in bar):
pvsat=0.0425
//Gas constant(in kJ/kg.K):
R=0.287
//Surrounding temperature(in K):
Ta=303
hg=2504.1 //kJ/kg
//Specific heat(in kJ/kg.K):
Cp=1.005
//Partial pressure of air(in bar):
pa=1.013-r*pvsat
printf("\n RESULT \n")
printf("\nPartial pressure of air = %f bar",pa)
//Humidity ratio:
w=0.622*(pv/(1.013-pv))
printf("\nHumidity ratio = %f jg/kg of dry air",w)
//Dew point temperature(in C):
T=21.4 //from steam table
printf("\nDew point temperature = 21.4 C")
//Density of mixture(in kg/m^3):
d=1.013*10^2*(1+w)/(R*Ta)
printf("\nDensity = %f kg/m^3",d)
//Enthalpy of mixture(in kJ/kg of dry air):
h=Cp*30+w*(hg+1.860*(30-T))
printf("\nEnthalpy of mixture = %f kJ/kg of air",h)