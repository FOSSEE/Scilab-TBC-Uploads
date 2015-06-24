// Material removal rate and cutting force in turning
clc
D_o = 10 // diameter in mm
N = 360 // spindle rpm
D_i = 9 // machined diameter in mm
x = 1.75 // axial speed in mm/min
l = 125 // length in mm
rate = 4 // specific energy in W-s/mm^3
printf("\n Example 8.4")
V_o = %pi*D_o*1e-3*N
V_i =%pi*D_i*1e-3*N
d = (D_o-D_i)/2
f = x*100/N
mrr = %pi*(D_o-d)*d*f*N
t = l/(d*N)
power = rate*mrr/60
T = power/(2*%pi*N/60) // torque
F_c = T/((D_o-d)/(2*1000))
printf("\n Material removal rate is %.2f mm^3/min.",mrr)
// Answer in book is 2610.08 mm^3/min
printf("\n Cutting force is %d N.", F_c)
// Answer in book is 994N

