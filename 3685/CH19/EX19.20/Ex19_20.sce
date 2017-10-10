clc
// Given that
N = 16000 // Speed in RPM
t1 = 17 // Intake temperture of gas in degree centigrade
rp = 4 // Pressure ratio
sigma = 0.85// Slip factor
n_iso = 0.82 // Isentropic efficiency
alpha_wirl = 20 // Pre-wirl angle in degree
d1 = 200 // Mean diameter of impeller eye in mm
V1 = 120 //Absolute air velocity in m/s
gama = 1.4 // Ratio of heat capacities
cp = 1.005 // Heat capacity in kJ/kgK
printf("\n Example 19.20\n")
T1 = t1 + 273
T2s = T1*((rp)^((gama-1)/gama))
delta_Ts = T2s-1
delta_T = delta_Ts/n_iso
Wc = 1 *cp*delta_T
Vb1 = (%pi*d1*(1e-3)*N)/60
Vw1 = V1*sind(alpha_wirl)
Vb2 = 459.78 // By solving quadratic equation 172.81e3=0.85*Vb2^2-167.55*41.05
d2 = Vb2*60/(%pi*N)

printf("\n Impeller tip diameter = %f mm",d2*1000)
// The answer given in the book varies due to round off error
 
