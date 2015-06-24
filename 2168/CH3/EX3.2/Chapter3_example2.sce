clc
clear
//Input data
D=0.25//Bore in m
L=0.45//Stroke in m
Cv=5//Clearance volume in litres
g=1.4//Ratio of specific heats
IHP=32//Indicated Horse power in h.p
m=14//Gas consumption in m^3/hr
CV=4000//Calorific value of gas in kcal/m^3

//Calculations
Vs=(3.14/4)*D^2*L//Stroke volume in m^3
Vc=Cv/1000//Clearance volume in m^3
r=(Vs+Vc)/Vc//Compression ratio
na=(1-(1/r)^(g-1))*100//Air standard efficiency in percent
q=(m*CV)/60//Heat supplied in kcal/min
aI=(IHP*4500)/427//Heat equivalent of I.H.P in kcal/min
itn=(aI/q)*100//Indicated thermal efficiency in percent
rn=(itn/na)*100//Relative efficiency in percent

//Output
printf('The air standard efficiency is %3.1f percent \n Indicated thermal efficiency is %3.1f percent \n Relative efficiency is %3.1f percent',na,itn,rn)
 
