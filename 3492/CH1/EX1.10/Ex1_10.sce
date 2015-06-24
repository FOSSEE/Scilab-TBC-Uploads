clc
//Chapter1
//Ex_1.10
//Given
NA=6.023*10^23 //mol^-1
d=2.33 //density of Si in g/cm3
Mat=28.09//g/mol
Ev=2.4 //ev/atom
Ev=2.4*1.6*10^-19 //J/atom
k=1.38*10^-23 //J/K
T=300 //kelvin
T1=1000//degree celcius
T1=T1+273 //in kelvin
N= (NA*d)/Mat
//at room temperature
nv=N*exp(-(Ev/(k*T)))
disp(nv,"concentration of vacancies in a Si crystal at room temperature in cm^-3 is")
//at 1000 degree celcius
nv=N*exp(-(Ev/(k*T1)))
disp(nv,"concentration of vacancies in a Si crystal at 1000 degree celcius in cm^-3 is")
