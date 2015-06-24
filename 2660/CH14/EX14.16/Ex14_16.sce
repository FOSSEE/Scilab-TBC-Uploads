clc
t = 0.127 // uncut chip thickness in mm
b = 6.35 // width of cut in mm
v = 1.20 // cutting speed in m/min.
alpha = 10 // rake angle in degrees
fc = 556.25 // cutting force in N
ft = 222.50 // thrust force in N
tc = 0.229 // chip thickness in mm
r = t/tc // chip thickness ratio
R = sqrt((fc^2)+(ft^2))
bita = (acos(fc/R)) + alpha*%pi/180 //
f = R*sin(bita) // 
fe = f*r // friction energy
p = (f*r*100)/fc // percentage of fricton enrgy and total energy 
printf("\n The percentage of total energy that goes into overcoming friction at tool chip interface = %0.2f percent" , p)
// 'Answers vary due to round off error'
