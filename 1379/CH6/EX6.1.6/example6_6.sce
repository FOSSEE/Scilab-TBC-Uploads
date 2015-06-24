
//example 6.6
clc; funcprot(0);
//exapple 6.6 
// Initialization of Variable
rhos=1830;//density of acid
atp=104.2*1000;//atmospheric pressure
temp=11+273;//temp in kelvin
M=28.8/1000;//molar mass of air
R=8.314;//universal gas constant
g=9.81;//acceleration of gravity
pi=3.14;
d=2.45;//diameter of tank
l=10.5;//length of tank
h_s=1.65;//height of surface of acid from below
effi=0.93//efficiency
//calculation
mliq=pi*d^2*l*rhos/4;
h_atm=atp/rhos/g;//height conversion of atp
h_r=4.3-1.65;//height difference
mair=g*h_r*mliq*M/(effi*R*temp*log(h_atm/(h_atm+h_s)));//mass of air
disp(mair,"mass of air required to lift the sulphuric acid tank");
disp("The negative sign indicates air is expanding & work done is magnitude of value in kg:");
m=abs(mair/mliq);
disp(m, "The mass of air required for per kilo of acid transferred:");

