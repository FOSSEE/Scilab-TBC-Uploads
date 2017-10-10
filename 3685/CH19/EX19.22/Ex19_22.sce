clc
// Given that
D = 0.5 // Mean diameter of impeller in m
N = 15000 // Speed in RPM
Vf = 230 // Velocity of flow in m/s
p1 = 1  // Inlet pressure in bar
T1 = 300 // Inlet temperature in K
Vw1 = 80 // Velocity of whirl at inlet in m/s
n_s = 0.88 // Stage efficiency
rp = 1.5 // Pressure ratio
gama = 1.4 
cp = 1.0005
printf("\n Example 19.22\n")
Vb = (%pi*D*N/60)
Ts = T1*((rp)^((gama-1)/gama))
T = T1 + (Ts-T1)/n_s
Wc = cp*(T-T1)
Vw2 = Vw1 + (Wc*1000)/(Vb)
beta1 = atand(Vf/(Vb-Vw1))
beta2 =  atand(Vf/(Vb-Vw2))
theta = beta2-beta1
R = 1-((Vw1+Vw2)/(2*Vb))

printf("\n Fluid deflection angle = %f degree,\n Power input = %f kJ/kg,\n The degree of reaction = %d percent",theta,Wc,R*100)
// The answers given in the book vary because of round off error
 
