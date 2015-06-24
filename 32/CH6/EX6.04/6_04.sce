//pathname=get_absolute_file_path('6.04.sce')
//filename=pathname+filesep()+'6.04-data.sci'
//exec(filename)
//Mass of steam(in kg):
m=5
//Pressure(in MPa):
p=2
//Temperature of superheated steam(in K):
Tss=300+273.15
//Specific heat of super heated steam(in kJ/kg.K):
Cps=2.1
//Specific heat of water(in kJ/kg.K):
Cpw=4.18
//From steam tables:
hfg=1890.7
//Saturation temperature(in K):
Tsat=212.42+273.15
//Entropy of unit mass of superheated steam with reference to absolute zero(in kJ/kg.K):
s=Cpw*log(Tsat/273.15)+hfg/Tsat+Cps*log(Tss/Tsat)
//Entropy of 5 kg of steam(in kJ/K):
S=m*s
printf("\nRESULT\n")
printf("\nEntropy of steam = %f kJ/K",S)