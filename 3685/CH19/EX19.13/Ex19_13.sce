
clc
// Given that
d = 450 // Bore of low pressure cylinder in mm
l = 300 // Stroke in mm
c = 0.05 // Ratio of clearance volume to swept volume
p1 = 1 // Intake pressure in bar
t1 = 18 // Intake temperature in degree centigrade
p4 = 15 // Delivery pressure in bar
n = 1.3 // Compression and expansion index
R = 0.29 // Gas constant in kJ/kgK
printf("\n Example 19.13\n")
T1 = t1+273
r = (p4/p1)^(1/3)
p2 = p1*r
p3 = p2*r
Vs = (%pi/4)*((d*1e-3)^2)*(l*1e-3)
V11 = c*Vs
V1 = Vs +V11
V12 = V11*((r)^(1/n))
Vs_e = V1 - V12
T3 = T1
T5 = T3
T6 = T1*(r^((n-1)/n))
t6 = T6-273
V6_7 = (p1/p4)*(T6/T1)*(V1 - V12)
W = (3*n*R*T1/(n-1))*((p2/p1)^((n-1)/n)-1)
printf("\n The intermediate pressure are - \n p2 = %f bar,\n p3 = %f bar,\n The effective swept volume = %f m^3,\n Temperature of air delivered per stroke at 15 bar = %f degree centigrade,\n The work done per kg of air = %f kJ",p2,p3,Vs,t6,W)
// The answers given in the book vary due to round off error
 
