clc
// Given that
V = 1 // Volume of the flask in litre
p = 1 // Pressure in atm
t = 300 // Temperature in K
r = 1.8e-10 // Radius of oxygen gas molecule in m
m = 5.31e-26 // Mass of oxygen molecule in kg
printf("\n Example 22.7 \n")
n = (p*(1.013e5))/((1.38e-23)*(t)*1000)
sigma = 4*%pi*(r^2)
v = ((8*(1.38e-23)*t)/(%pi*m))^(1/2)
z = sigma*n*v*1000
N = (1/4)*(n*0.1*v)
printf("\n No of collisions per sec are made by one molecule with the other molecule = %e,\nThe no of molecules strike the flask per sq. cm = %e,\n No of molecules in the flask = %e",z,N,n)

