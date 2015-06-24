//pathname=get_absolute_file_path('5.02.sce')
//filename=pathname+filesep()+'5.02-data.sci'
//exec(filename)
//Mass of water(in kg):
m=5
//Atmospheric temperature(in K):
T1=27+273.15
//Temperature of evaporation(in K):
T2=100+273.15
//Temperature at which steam is generated(in K):
T3=400+273
//Specific heat of water(in kJ/kg.K):
Cp=4.2
//Heat of vaporisation(in kJ/kg):
q2=2260
//For steam, Cp is given by:
//Cps=R(3.5+1.2*T+0.14*T^2)
//Heat added for increasing water temperature from 27ºC to 100ºC(in kJ):
Q1=m*Cp*(T2-T1)
//Entropy change during water temperature rise(in kJ/K):
dS1=Q1/T1
//Heat of vaporization(in kJ):
Q2=m*q2
//Entropy change during water to steam change(in kJ/K):
dS2=Q2/T2
//Entropy change during steam temperature rise(in kJ/K):
dS3=m*10^(-3)*(1.617*log(T3/T2)+0.5544*(T3-T2)+0.065*(T3^2-T2^2)/2)
//Total entropy change(in kJ/K):
dS=dS1+dS2+dS3
printf("\nRESULT\n")
printf("\nTotal change in entropy of universe = %f kJ/K",dS)