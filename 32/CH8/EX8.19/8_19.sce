//pathname=get_absolute_file_path('8.19.sce')
//filename=pathname+filesep()+'8.19-data.sci'
//exec(filename)
//Turbine efficiency:
nt=0.85
//Generator efficiency:
ng=0.90
//Mechanical efficiency:
nm=0.95
//Specific heat of water:
Cpw=4.18
//From steam tables:
h1=3450.02 //kJ/kg
s1=6.6923 //kJ/kg.K
h3=3576.99 //kJ/kg
s3=7.52411 //kJ/kg.K
h2=3010 //kJ/kg
h9=3175 //kJ/kg
h4=2300 //kJ/kg
h5=137.82 //kJ/kg
v5=0.001005 //m^3/kg
h8=962.11 //kJ/kg
h12=1407.56 //kJ/kg
h10=670.56 //kJ/kg
v10=0.001101 //m^3/kg
//Enthalpy at state 2'(in kJ/kg):
h2a=h1-(h1-h2)*nt
//Enthalpy at state 9'(in kJ/kg):
h9a=h3-(h3-h9)*nt
//Enthalpy at state 4'(in kJ/kg):
h4a=h3-(h3-h4)*nt
//Enthalpy at state 6(in kJ/kg):
h6=h5+v5*(6-0.05)*10^2
//Enthalpy at state 6'(in kJ/kg):
h6a=h5+(h6-h5)/ng
//Enthalpy at state 11(in kJ/kg):
h11=h10+v10*(100-6)*10^2
//Enthalpy at state 11'(in kJ/kg):
h11a=h10+(h11-h10)/ng
//Mass flow rate(in kg/kg steam):
m1=(h11a-h12)/(h8-h2a)
m2=(h10-m1*h8-(1-m1)*h6a)/(h9-h6a)
//Work from HP turbine(in kJ/kg):
Whp=h1-h2a
//Work from LP turbine(in kJ/kg):
Wlp=(1-m1)*(h3-h9a)+(1-m1-m2)*(h9a-h4a)
//Pump work:
Wp=(1-m1-m2)*(h6a-h5)+(h11a-h10)
//Net work(in kJ/kg):
Wnet=Whp+Wlp-Wp
//Specific steam consumption(in kg/kw.h):
ssc=3600/(Wnet*ng*nm)
ssc=3.93
//Overall thermal efficiency:
no=Wnet*nm*ng/((h1-h12)+(1-m1)*(h3-h2a))*100
//Mass of steam required(in kg/hr):
m=ssc*120*103
m=471600
printf("\n RESULT \n")
printf("\nSpecific steam consumption = %f kg/kw.h",ssc)
printf("\nOverall efficiency = %f percent",no)
printf("\nMass of steam bled from HP turbine = %f kg/hr",m1*m)
printf("\nMass of steam bled from LP turbine = %f kg/hr",m2*m)