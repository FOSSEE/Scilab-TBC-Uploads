//pathname=get_absolute_file_path('8.02.sce')
//filename=pathname+filesep()+'8.02-data.sci'
//exec(filename)
//Lower pressure limit(in kPa):
p1=5
//Higher pressure limit(in kPa):
p2=5000
//From gas tables:
//Value of hf at 5 MPa(in kJ/kg):
hf5M=1154.23
//Value of sf at 5 MPa(in kJ/kg.K):
sf5M=2.92
//Value of hg at 5 MPa(in kJ/kg):
hg5M=2794.3
//Value of sg at 5 MPa(in kJ/kg.K):
sg5M=5.97
//Value of hf at 5 kPa(in kJ/kg):
hf5k=137.82
//Value of sf at 5 kPa(in kJ/kg.K):
sf5k=0.4764
//Value of hg at 5 kPa(in kJ/kg):
hg5k=2561.5
//Value of sg at 5 kPa(in kJ/kg.K):
sg5k=8.3961
///Value of vf at 5 kPa(in m^3/kg):
vf5k=0.001005
//Value of sfg at 5 kPa(in kJ/kg.K):
sfg5k=sg5k-sf5k
//Value of hfg at 5 kPa(in kJ/kg.K):
hfg5k=hg5k-hf5k
//CARNOT CYCLE:
//Entropy at point 2(in kJ/kg.K):
s2=sg5M
//As process 2-3 is isentropic:
s3=s2
//Dryness fraction at point 3:
x3=(s3-sf5k)/sfg5k
//Enthalpy at point 3(in kJ/kg):
h3=hf5k+x3*hfg5k
//Enthalpy at point 2(in kJ/kg):
h2=hg5M
//Entropy at point 1(in kJ/kg.K):
s1=sf5M
//Process 1-4 is isentropic:
s4=s1
//Dryness fraction at point 4:
x4=(s4-sf5k)/sfg5k
//Enthalpy at point 4(in kJ/kg):
h4=hf5k+x4*hfg5k
//Enthalpy at point 1(in kJ/kg):
h1=hf5M
//Efficiency:
n=((h2-h3)-(h1-h4))/(h2-h1)
printf("\n RESULT \n")
printf("For Carnot cycle,\n")
printf("Efficiency=%f",n)
//For RANKINE Cycle:
//Pump work:
Pw=vf5k*(p2-p1)
//Enthalpy at point 5(in kJ/kg):
h5=hf5k
//Enthalpy at point 6(in kJ/kg):
h6=h5+Pw
//Net work in the cycle:
Nw=(h2-h3)-(h6-h5)
//Heat added:
Ha=h2-h6
//Efficiency:
nr=Nw/Ha
printf("\nFor Rankine cycle,\n")
printf("Efficiency=%f",nr)