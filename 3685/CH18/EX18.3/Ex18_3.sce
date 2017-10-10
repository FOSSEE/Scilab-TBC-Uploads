clc
to = 20 // Environment temperature in degree Celsius
t = 100// Temperature of steam path in degree Celsius
ta1 =  26.76 // Temperature at other end in degree Celsius for rod A 
d = 10 // diameter of rod in mm
L = 0.25 // length of rod in m
h = 23 // heat transfer coefficient in W/m^2 K
tb1 =  32.00 // Temperature at other end in degree Celsius for rod B 
tc1 =  36.93 // Temperature at other end in degree Celsius for rod C 

printf("\n Example 18.3\n")
A = %pi/4 * (d*1e-3)^2 //Area of rod
p = %pi*d*1e-3 // perimeter of rod
// For rod A
a = (ta1-to)/(t-to) 
ma = (acosh(1/a))/L

Ka = (h*p)/(ma^2*A) // Thermal conductivity of rod A
printf("\n Thermal conductivity of rod A is %f W/mK",Ka)
// For rod B
b = (tb1-to)/(t-to) 
mb = (acosh(1/b))/L

Kb = (h*p)/(mb^2*A) // Thermal conductivity of rod B
printf("\n Thermal conductivity of rod B is %f W/mK",Kb)
c = (tc1-to)/(t-to) 
mc = (acosh(1/c))/L

Kc = (h*p)/(mc^2*A) // Thermal conductivity of rod A
printf("\n Thermal conductivity of rod C is %d W/mK",ceil(Kc))
//The answers vary due to round off error

