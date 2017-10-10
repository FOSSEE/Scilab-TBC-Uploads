clc
// Given that
N = 10000 // Speed in RPM
V = 1.2 // Volume flow rate of free air in m^3/s
p1 = 1 // Inlet pressure in bar
t1 = 27 // Inlet temperature in degree centigrade
r = 5 // Pressure ratio
vf = 60 // Velocity flow rate in m/s
sigma = 0.9 // Slip factor
n_iso = 0.85 // Isentropic efficiency
gama = 1.4
R = 0.287
cp = 1.005
printf("\n Example 19.18\n")
T1 = t1+273
T2s = T1*((r)^((gama-1)/gama))
T2 = T1 +(T2s-T1)/n_iso
m = p1*100*V/(R*288)
Wc = m*cp*(T2-T1)
Vb2 = (Wc*1000/(m*sigma))^(1/2)
D = Vb2*60/(%pi*N)
Vb1 = Vb2/2
beta1 = atand(vf/Vb1)
alpha = atand(vf/(sigma*Vb2))
printf("\n The temperature of air at outlet = %f degree centigrade,\n Power input = %f kW,\n Diameter of impeller = %f m, \n Blade inlet angle = %d degree,\n Diffuser inlet angle = %f degree ",T2-273,Wc,D,beta1,alpha)
// The answers given in the book vary due to round off error
 
