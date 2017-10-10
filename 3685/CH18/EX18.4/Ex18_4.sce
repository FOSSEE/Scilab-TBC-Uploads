clc
h = 17.4 // Convective heat transfer coefficient in W/m^2K
K = 52.2 // Thermal conductivity in W/mK
t = 120 // Heat reservoir wall temperature in degree celcius
t0 = 35 // Ambient temperature in degree celcius
L = 0.4 // Lenght of rod in m
b  = .050 // width of rod in mm
H = .050 // Heigth of rod in mm

printf("\n Example 18.4\n")
l= L/2
A = b*H
m = sqrt(4*h*b/(K*b*H))
t1 = (t-t0)/cosh(m*l) + t0 // Midway temperature of rod
Q1 = 2*5.12*K*A*(t-t0)*tanh(m*l) // Heat loss rate 
printf("\n Midway temperature of rod is %f degree Celcius",t1)
printf("\n Heat loss rate is %fW",Q1)
//The answers vary due to round off error

