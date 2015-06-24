//pathname=get_absolute_file_path('5.21.sce')
//filename=pathname+filesep()+'5.21-data.sci'
//exec(filename)
//Volume of the tanks(in m^3):
va=4
vb=4
vc=4
//Pressure in tank A(in bar):
pa=6
//Temperature in tank A(in K):
Ta=90+273
//Pressure in tank B(in bar):
pb=3
//Temperature in tank B(in K):
Tb=300+273
//Pressure in tank C(in bar):
pc=12
//Temperature in tank C(in K):
Tc=50+273
//Gas constant for air(in kJ/kg.K):
Ra=0.287
//Gas constant for nitrogen(in kJ/kg.K):
Rn=0.297
//Adiabatic index of compression for air:
ra=1.4
//Adiabatic index of compression for nitrogen:
rn=1.4
//Value of Cp(in kJ/kg.K):
Cp=1.005
//Value of Cv(in kJ/kg.K):
Cv=0.718
//Part (i)
//Mass in tank A(in kg):
ma=pa*10^2*va/(Ra*Ta)
//Mass in tank A(in kg):
mb=pb*10^2*vb/(Ra*Tb)
//Final temperature(in K):
Td=(ma*Ta+mb*Tb)/(ma+mb)
//Final pressure(in bar):
pd=Ra*Td*(ma+mb)/((va+vb)*10^2)
//Entropy change(in kJ/K):
dS1=ma*Cp*log(Td/Ta)-ma*Ra*log(pd/pa)+mb*Cp*log(Td/Tb)-mb*Ra*log(pd/pb)
printf("\nRESULT\n")
printf("\nEntropy change in case 1 = %f kJ/K",dS1)
//Part (ii)
//Mass in tank C(in kg):
mc=pc*10^2*vc/(Rn*Tc)
//Mass in tank D(in kg):
md=ma+mb
//Value of Cv for nitrogen(in kJ/kg.K):
Cvn=Rn/(rn-1)
//Value of Cp for nitrogen(in kJ/kg.K):
Cpn=rn*Cvn
//Total mass(in kg):
mf=md+mc
//Final Cv(in kJ/kg.K):
CvF=(md*Cv+mc*Cvn)/mf
//Final gas constant(in kJ/kg.K):
RF=(md*Ra+mc*Rn)/mf
//Final temperature(in K):
TF=(md*Cv*Td+mc*Cvn*Tc)/(mf*CvF)
//Final volume(in m^3):
VF=va+vb+vc
//Final pressure(in kPa):
pF=mf*RF*TF/VF
//Change in entropy(in kJ/K):
dS2=md*(Cp*log(TF/Td)-Ra*log(pF/(pd*10^2)))+mc*(Cpn*log(TF/Tc)-Rn*log(pF/(pc*10^2)))
printf("\nEntropy change in case 2 = %f kJ/K",dS2)