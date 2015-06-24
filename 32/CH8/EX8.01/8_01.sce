//pathname=get_absolute_file_path('8.01.sce')
//filename=pathname+filesep()+'8.01-data.sci'
//exec(filename)
//Lower pressure limit(in kPa):
p1=7
//Higher pressure limit(in MPa):
p2=7
//From gas tables:
//Enthalpy at state 2(in kJ/kg):
h2=2772.1
//Entropy at state 2(in kJ/kg.K):
s2=5.8133
//Enthalpy at state 3(in kJ/kg):
h3=1267
//Entropy at state 3(in kJ/kg.K):
s3=3.1211
//Value of sf at 7 kPa(in kJ/kg.K):
sf1=0.5564
//Value of sfg at 7 kPa(in kJ/kg.K):
sfg1=7.7237
//Value of hf at 7 kPa(in kJ/kg):
hf1=162.60
//Value of hfg at 7 kPa(in kJ/kg):
hfg1=2409.54
//Entropy at state 1(in kJ/kg.K):
s1=s2
//Dryness fraction at state 1:
x1=(s1-sf1)/sfg1
//Enthalpy at state 1(in kJ/kg):
h1=hf1+x1*hfg1
//Entropy at state 4(in kJ/kg.K):
s4=s3
//Dryness fraction for state 4:
x4=(s4-sf1)/sfg1
//Enthalpy at state 4(in kJ/kg):
h4=hf1+x4*hfg1
//Expansion work per kg(in kJ/kg):
W1=h2-h1
//Compression work per kg(in kJ/kg):
W2=h3-h4
//Heat added per kg(in kJ/kg):
H=h2-h3
//Net work done(in kJ/kg):
W=W1-W2
//Thermal efficiency:
n=W/H
printf("\n\nRESULTS\n\n")
printf("\n\n Thermal Efficincy = %f ",n)
printf("\n Turbine work = %f ",W1)
printf("\n Compression work = %f ",W2)