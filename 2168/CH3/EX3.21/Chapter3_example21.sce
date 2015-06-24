clc
clear
//Input data
CV=10000//Calorific value of petrol in kcal/kg
pe=[30,70]//Percentage of compression strokes in percent
p=[1.33,2.66]//Pressures in the cylinder corresponding to the compression strokes in kg/cm^2
n=1.33//Polytropic constant
rn=50//Relative efficiency in percent
g=1.4//ratio of specific heats

//Calculations
v=(p(2)/p(1))^(1/n)//Ratio of specific volumes
r=((pe(2)/100)*v-(pe(1)/100))/((pe(2)/100)-((pe(1)/100)*v))//Compression ratio
na=(1-(1/r)^(g-1))*100//Air standard efficiency in percent
ith=(rn*na)/100//Indicated thermal efficiency in percent
q=(4500*60)/(427*(ith/100))//Heat supplied in kcal/i.h.p.hr
Sc=(q/CV)//Specific consumption in kg/i.h.p.hr

//Output
printf('Compression ratio is %3.2f \n Specific consumption is %3.3f kg/i.h.p.hr',r,Sc)
