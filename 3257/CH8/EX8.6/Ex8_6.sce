// Calculation of material removal rate, power required and cutting time in face milling
clc
D = 160 // diameter in mm
w = 70 // width in mm
l = 450//length in mm
d = 3 // depth in mm
v = 0.5 // velocity in m/min
N= 120 // rotation in rpm
p_u = 1.1 // unit power for material
printf("\n Example 8.6")
a = w*d
mrr = a*v*1000
l_c = D/2
t = (l+2*l_c)/(v*1000)
f = v*1000/(d*N*10)
power = p_u*mrr/60

printf("\n Material removal rate is %d mm^3/min.",mrr)
printf("\n power required in milling is %.3f kW.",power/1000)
printf("\n Required time for milling is %.2f min.",t)

