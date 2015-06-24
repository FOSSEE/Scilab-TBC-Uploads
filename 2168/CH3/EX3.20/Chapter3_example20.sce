clc
clear
//Input data
T=[50+273,345+273]//Temperatures at the beginning and end of compression in K
g=1.4//ratio of specific heats 
IHP=25//Indicated horse power in h.p
m=5.44//Mass of fuel consumed per hour in kg
CV=10300//Calorific value in kcal/kg

//Calculations
na=(1-(T(1)/T(2)))*100//Air standard efficiency in percent
r=(T(2)/T(1))^(1/(g-1))//Compression ratio
qIHP=(IHP*4500)/427//Heat equivalent of I.H.P in kcal/min
q=(m*CV)/60//Heat supplied per minute in kcal/min
Ith=(qIHP/q)*100//Indicated thermal efficiency in percent
nr=(Ith/na)*100//Efficiency ratio

//Output
printf('The air standard efficiency is %3.1f percent \n The compression ratio is %3.2f \n Indicated thermal efficiency is %3.1f percent \n Efficiency ratio is %3.1f percent',na,r,Ith,nr)
