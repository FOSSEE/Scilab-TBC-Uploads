//pathname=get_absolute_file_path('8.11.sce')
//filename=pathname+filesep()+'8.11-data.sci'
//exec(filename)
//Pressure of the steam entering the boiler(in bar):
p1=150
//Temperature of the steam entering the turbine(in C):
T1=450
//Condensor pressure(in bar):
p6=0.05
//Pressure of steam bled out between 1st & 2nd stage and 2nd & 3rd(in bar):
p3=10
p4=1.5
//Temperature of feed water leaving closed water heater(in C):
T11=150
//Mass flow rate(in kg/s):
m=300
//From steam tables:
h2=3308.6 //kJ/kg
s2=6.3443 //kJ/kg.K
s3=s2
s4=s2
s5=s2
h3=2667.26 //kJ/kg
h4=2355.18 //kJ/kg
h5=1928.93 //kJ/kg
h6=137.82 //kJ/kg
v6=0.001005 //m^3/kg
h8=467.11 //kJ/kg
v8=0.001053 //m^3/kg
h10=1610.5 //kJ/kg
v10=0.001053 //m^3/kg
//Enthalpy at state 7(in kJ/kg):
h7=h6+v6*(p4-p6)*10^2
//Enthalpy at state 9(in kJ/kg):
h9=h8+v8*(p1-p4)*10^2
//Enthalpy at state 12(in kJ/kg):
h12=h10+v10*(p1-p3)*10^2
//Mass of steam bled out in closed feed water heater(in kg/kg of steam generated):
m1=(4.18*T11-h9)/(h3-h9+4.18*T11-h10)
m2=((1-m1)*(h8-h7))/(h4-h7)
//Enthalpy at state 1(in kJ/kg):
h1=(4.18*T11)*(1-m1)+m1*h12
//Net work output per kg of steam generated(in kJ/kg):
Wnet=(h2-h3)+(1-m1)*(h3-h4)+(1-m1-m2)*(h4-h5)-((1-m1-m2)*(h7-h6)+(1-m1)*(h9-h8)+m1*(h12-h10))
//Heat added(in kJ/kg):
Q=h2-h1
//Cycle thermal efficiency:
n=Wnet/Q*100
printf("\n RESULT \n")
printf("\nCycle thermal efficiency = %f percent",n)
printf("\nNet power developed = %f kW",Wnet)