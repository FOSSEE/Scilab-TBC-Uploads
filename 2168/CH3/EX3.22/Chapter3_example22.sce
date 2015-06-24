clc
clear
//Input data
n=4//Four cylinder four stroke
d=7.5//Bore in cm
L=8.75//Stroke in cm
r=6//Compression ratio
n1=55//Efficiency in percent
g=1.4//ratio of specific heats
N=2400//Speed in r.p.m
pm=7//Brake mean effective pressure in kg/cm^2
m=9//Mass of fuel per hour in kg
CV=10500//Calorific Value in kcal/kg

//Calculations
an=(1-(1/r)^(g-1))*100//Air standard efficiency in percent
In=(an*n1)/100//Indicated thermal efficiency in percent. In textbook, answer is wrong
BHP=(pm*(3.14/4)*d^2*(L/100)*(N/2)*n)//Brake horse power in kg.m/min
Bth=((BHP*60)/(427*CV*m))*100//Brake thermal efficiency in percent
nm=(Bth/In)*100//Mechanical efficiency in percent
Sc=((4500*60)/(427*(Bth/100)*CV))//Specific consumption in g/i.h.p.hr

//Output
printf('Indicated thermal efficiency is %3.1f percent \n Brake thermal efficiency is %3.1f percent \n Mechanical efficiency is %3.1f percent \n Specific fuel consumption is %3.3f kg/i.h.p.hr',In,Bth,nm,Sc)
