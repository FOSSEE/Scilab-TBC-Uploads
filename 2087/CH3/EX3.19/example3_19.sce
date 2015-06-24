

//example 3.19
//calculate
//consumptive use of rice using penman's formula in january
clc;
//Given
L=20;             //latitude of place(degree North)
T=15;             //mean monthly temperature(degree celcius)
RH=0.5;            //relative humidity
E=250;            //elevation of area
V=25;             //wind velocity at 2 m heigth
//from table 3.10
VP=12.79;         //saturation vapour pressure
s=0.8;            //slope of curve between vapur pressure and temperature
//from table 3.11
R=10.8;
//from table 3.12
N=11.1;
//from table 3.9
n=7.74;
p=n/N;
e=VP*RH;
Ea=0.002187*(160+V)*(VP-e);
r=0.2;
alpha=0.49;
sigma=2.01D-9;
Ta=293;
H=R*(1-r)*(0.29*cos(%pi/9)+0.55*p)-sigma*Ta^4*(0.56-0.092*e^0.5)*(0.10+0.9*p);
Et=(s*H+alpha*Ea)*31/(s+alpha);
Et=round(Et*10)/10;
mprintf("consumptive use of rice in january=%f mm of water.",Et);

