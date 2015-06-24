//pathname=get_absolute_file_path('13.13.sce')
//filename=pathname+filesep()+'13.13-data.sci'
//exec(filename)
//Initial pressure(in bar):
p1=20
//Final pressure(in bar):
p3=5
n=1.3
//From steam tables:
T1=212.42+273 //K
Tsat=186.43+273 //K (at 11.6 bar)
psat=5.452 //bar (at 155.14 C)
h1=2799.5 //kJ/kg
v1=0.009963 //m^3/kg
s1=6.3409 //kJ/kg.K
s2aa=s1
h2aa=2693.98 //kJ/kg
s2a=6.5484 //kJ/kg.K
s3a=s2a
h3a=2632.76 //kJ/kg
s3=s1
h3=2544.21 //kJ/kg
//Pressure at throat(in bar):
p2=p1*0.58
//Temperature at state 2(in K):
T2=T1*(p2/p1)^((n-1)/n)
//Degree of supersaturation:
d=p2/psat
//Degree of undercooling:
d1=Tsat-T2
printf("\nRESULT\n")
printf("\nDegree of supersaturation = %f",d)
printf("\nDegree of undercooling = %f",d1)
//Isentropic enthalpy drop:
h12=(n/(n-1))*p1*10^2*v1*(1-(T2/T1))
//Enthalpy at state 2(in kJ/kg):
h2=h1-h12
//Heat drop with no saturation(in kJ/kg):
h12aa=h1-h2aa
//Loss of available heat drop(in kJ/kg):
L=h12aa-h12
//Increase in entropy(in kJ/kg.K):
s12a=L/Tsat
//Loss due to undercooling(in kJ/kg):
L1=h3a-h3
//Percentage loss:
p=L1/(h1-h3)*100
printf("\n\nEntropy change = %f kJ/kg.K",s12a)
printf("\nLoss due to undercooling = %f kJ/kg",L1)
printf("\nPercentage loss = %f percent",p)