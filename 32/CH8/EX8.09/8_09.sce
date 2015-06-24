//pathname=get_absolute_file_path('8.09.sce')
//filename=pathname+filesep()+'8.09-data.sci'
//exec(filename)
//Pressure of steam entering(in bar):
p1=30
//Temperature(in C):
T1=300
//Pressure of steam leaving the first stage(in bar):
p3=6
//Steam leaving second stage at pressure(in bar):
p4=1
//Pressure of steam leaving the third stage(in bar):
p5=0.075
//Condenstate temperature(in C):
T=38
//Temperature of water after leaving first and second heater(in C):
T8=150
T13=95
//Efficiency of turbine:
n=0.8
//Turbine output(in MW):
W=15
//From steam tables:
h2=3230.9 //kJ/kg
s2=6.9212 //kJ/kg.K
s3=s2
T3=190.97 //K(by interpolation)
h3=2829.63 //kJ/kg
s3a=7.1075 //kJ/kg.K
s4=s3a
sf1=1.3026 //kJ/kg.K
sfg1=6.0568 //kJ/kg.K
hf1=417.46 //kJ/kg
hfg1=2258 //kJ/kg
h5=234.64 //kJ/kg
hf6=670.56 //kJ/kg
h11=hf6
//Actual enthalpy at state 3(in kJ/kg):
h3a=h2-n*(h2-h3)
//Dryness fraaction at state 4:
x4=(s4-sf1)/sfg1
//Enthalpy at state 4(in kJ/kg):
h4=hf1+x4*hfg1
//Actual enthaly at state 4(in kJ/kg):
h4a=h3a-n*(h3a-h4)
//Actual dryness fraction at state 4:
x4a=(h4a-hf1)/hfg1
//Actual entropy at state 4(in kJ/kg.K):
s4a=sf1+x4a*sfg1
//Entropy at state 5(in kJ/kg.K):
s5=s4a
//Dryness fraction:
x5=0.8735
//Enthalpy at state 5(in kJ/kg):
h5=2270.43
//Actual enthalpy at state 5(in kJ/kg):
h5a=h4a-n*(h4a-h5)
//By calculation:
m1=0.1293 //kg
m2=0.1059 //kg
//Turbine output(in kJ/kg):
Wt=(h2-h3a)+(1-m1)*(h3a-h4a)+(1-m1-m2)*(h4a-h5a)
//Rate of steam generation required(in kg/hr):
r=W*10^3/Wt*3600
//Capacity of drain pump(in kg/hr):
c=(m1+m2)*r
printf("\n RESULT \n")
printf("\nCapacity of drain pump = %f kg/hr",c)