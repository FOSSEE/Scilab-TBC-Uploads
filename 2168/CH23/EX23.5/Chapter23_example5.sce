clc
clear
//Input data
d=20//Bore in cm
l=37.5//Stroke in cm
r=6//Compression ratio
IPm=5//Indicated Mean effective pressure in kg/cm^2
ag=6//Air to gas ratio
CV=3070//Calorific value of gas in kcal/cu.m
T=75+273//Temperature in K
p=0.975//Pressure in kg/cm^2
RPM=240//Speed in r.p.m
g=1.4//Ratio of specific heats

//Calculations
Vs=(3.14/4)*d^2*l//Stroke Volume in cu.m
Vg=(1/(r+1))*Vs//Volume of gas in cylinder in cu.m per cycle
x=(Vg*(p/1.03)*(273/T))//Volume at 'Vg' cu.m at 'p' kg/cm^2 and 'T' K are equivalent in cu.m
q=(CV*x)/10^6//Heat added in kcal per cycle
IHP=(IPm*(Vs/100)*(RPM/2))/4500//Indicated horse power
nth=((IHP*4500)/(427*q*(RPM/2)))*100//Thermal efficiency in percent
na=(1-(1/r^(g-1)))*100//Air standard efficiency in percent
rn=(nth/na)*100//Relative effeciency in percent

//Output
printf('The thermal efficiency is %3.1f percent \n The relative efficiency is %3.1f percent \n Indicated horese power is %3.1f H.P',nth,rn,IHP)
