clc
// Given that
p1 = 700 // Intake pressure of compressor in kPa
t1 = 38 // Intake temperature in degree centigrade
c = 0.4 // Ratio of cutoff volume to stroke volume
p3 = 112 // Back pressure in kPa
r = 0.85 // Ratio of area of actual indicator diagram to the outlined in the question
n = 1.3 // Polytropic index
R = 0.287
m = 1.25 // Air mass in kg
printf("\n Example 19.12\n")
T1 = t1+273
T2 = T1/((1/c)^(n-1))
p2 = p1*(c^n)
V2 = m*R*T2/p2
v2 = V2/m
A = R*T1 + R*(T1-T2)/(n-1) - p3*v2
Io = A*r*m
printf("\n Indicated output = %f kJ",Io)
// The answer given in the book vary due to round off error
 
