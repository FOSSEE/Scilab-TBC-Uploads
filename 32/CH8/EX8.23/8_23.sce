//pathname=get_absolute_file_path('8.23.sce')
//filename=pathname+filesep()+'8.23-data.sci'
//exec(filename)
//Alternator efficiency:
na=0.975
//Turbine efficiency:
nt=0.80
//Turbine's losses(in kW):
L=50
//Electric power developed(in mW):
p=8
//Condenser discharge(in kg/s):
m=8
//From steam tables:
h1=3137 //kJ/kg
s1=6.9563 //kJ/kg.K
h1a=h1
s1a=7 //kJ/kg.K
s2=s1a
h2=2830 //kJ/kg
h4=2210 //kJ/kg
hf=376.92 //kJ/kg
//Enthalpy at state 2'(in kJ/kg):
h2a=h1a-(h1a-h2)*nt
h3=h2a
//Enthalpy at state 4'(in kJ/kg):
h4a=h3-(h3-h4)*nt
//Power available to the alternator(in MW):
P=m/na
//Total power produced(in kW):
Pt=P*10^3+L
//Power produced by LP turbine(in kW):
plp=m*(h3-h4)
//Power produced by LP turbine(in kW):
php=Pt-plp
//Mass flow rate through HP turbine(in kg/s):
m1=php/(h1a-h2a)
//Heat available for process heating(in kW):
ph=(m1-m)*(h2-hf)
printf("\n RESULT \n")
printf("\nHeat available for process heating = %f kW",ph) 