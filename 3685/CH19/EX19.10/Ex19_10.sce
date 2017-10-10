clc
// Given that
N = 300 // Speed in RPM
// Intake condition of compressor
p1 = 0.98 // Pressure in bar
T1 = 305 // Temperature in K

p6 = 20// Delivery pressure in bar
p3 = 5 // Intermediate pressure in bar
C = .04 // Ratio of clearance volume to the stroke volume
v = 3 // Volume flow rate of compressure in m^3/min
p = 1 // pressure in bar
t = 25 // Temperautre in degree centigrade
n = 1.3 // Polytropic index
R = 0.287 // Gas constant in kJ/kgK
printf("\n Example 19.10\n")
T = t+273
r0 = 1+C // Where r0 = v1/vs
r1 = C*(p3/p1)^(1/n)// Where r1 = v4/vs
r2=r0-r1//Where r2 is the ratio of volume of air taken at 0.98 bar,305 k and vs
r3 = r2*(T/T1)*p1/p // Where r3 is the ratio of volume of air taken at free air conditions and vs
n_vol = r3
m = p*(1e5)*(v/60)/(R*1000*T)
T2 = T1*((p3/p1)^((n-1)/n))
// For perfect intercooling
T5 = T1
p5 = p3
T6 = T5*((p6/p5)^((n-1)/n))
Wc = (n/(n-1))*m*R*((T2-T1)+(T6-T5))
m_a_s = m*60/N
v_fa_s = m_a_s *(R*1000)*T/(p*1e5)
d = ((v_fa_s/n_vol)*(4/%pi))^(1/3)
l = d // As given in the question
P_iso = m*R*T1*(log(p6/p1))
n_iso = P_iso/Wc
printf("\n The power required to drive the compressor = %f kW,\n Diameter of cylinder = %f cm, \n Storke of the cylinder = %f cm,\n Isothermal efficiency = %f percent",Wc,d*100,l*100,n_iso*100)
//The answers given in the book contain calculation error

