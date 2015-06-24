//pathname=get_absolute_file_path('8.22.sce')
//filename=pathname+filesep()+'8.22-data.sci'
//exec(filename)
//Total power required(in kW):
P=4500
//Heat load(in kW):
Q=15000
//Efficiency of turbines:
n=0.80
//Steam consumption rate(in kg/s):
m=10
//From steam tables:
h1=3137 //kJ/kg
s1=6.9563 //kJ/kg.K
T2=179.18 //C
h2=2813.41 //kJ/kg
hf=640.23 //kJ/kg
//For case 1:
T2a=213.34 //C
s2a=7.125 //kJ/kg.K
s3=s2a
x3=0.853
h3=2221.11 //kJ/kg
//For case 2:
h2a=2878.13 //kJ/kg
h3aa=h2a
T3aa=210.04 //C
s3aa=7.138 //kJ/kg.K
s4=s3aa
x4=0.855
h4=2225.92 //kJ/kg
//Enthalpy at state 2'(in kJ/kg):
h2a=h1-(h1-h2)*n
//Heat available for process heating(in kJ/kg):
q=h2a-hf
//Mass flow rate(in kg/s):
msh=Q/q
//Enthalpy at state 3'(in kJ/kg):
h3a=h2-(h2a-h3)*n
//Mass of steam produced:
mshp=(P+msh*(h2a-h3a))/((h1-h2a)+(h2a-h3a))
//For case 2:
mshpn=10
mshn=6.7
//Power produced by HP turbine(in kW):
Pn=mshpn*(h1-h2a)
M3aa=mshpn-mshn
//Enthalpy at state 4'(in kJ/kg):
h4a=h3aa-(h3aa-h4)*n
//Power produced by LP turbine(in kW):
Pn1=M3aa*(h3aa-h4a)
//Total power produced(in kW):
Pt=Pn+Pn1
printf("\n RESULT \n")
printf("\nTotal power produced = %f kW",Pt)