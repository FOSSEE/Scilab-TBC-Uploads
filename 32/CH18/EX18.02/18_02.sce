//pathname=get_absolute_file_path('18.02.sce')
//filename=pathname+filesep()+'18.02-data.sci'
//exec(filename)
//Operating temperature(in K):
T1=-5+273
T2=27+273
//Specific heats(in kJ/kg.K):
Cpw=4.18
//Latent heat(in kJ/kg):
L=335
//Capacity(in tons):
C=800
//Heat extraction rate(in kJ/s):
q=C*3.5
//Heat to be removed per kg of water(in kJ/kg):
q1=Cpw*(27-0)+L
//Ice formation rate(in kg/s):
m=q/q1
printf("\n RESULT \n")
printf("\nMass rate of ice formation = %f kg/s",m)
//COP:
COP=(T1/(T2-T1))
//Work done(in hp):
W=q/COP/0.7457
printf("\nHP required = %f hp",W)