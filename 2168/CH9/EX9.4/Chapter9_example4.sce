clc
clear
//Input data
D=[10,12]//Dimensions of four cylinder in 10 cm* 12 cm
n=4//Four cylinder
N=2000//Speed in r.p.m
d=0.03//Venturi throat in m
nv=70//Volumetric efficiency of the engine in percent
Ca=0.8//Coefficient of air flow
da=1.29//Density of air in kg/m^3

//Calculations
Vs=(3.14/4)*(D(1)/100)^2*(D(2)/100)//Stroke volume of one cylinder in m^3
Va=(Vs*n*(nv/100)*(N/2))//Volume of air drawn per minute in m^3
w=(Va*da)/60//Weight of air drawn per sec
dp=((w/((3.14/4)*d^2*Ca))^2/(2*9.81*da))//Venturi depression in kg/cm^2

//Output
printf('The venturi depression is %3.1f kg/m^2',dp)
