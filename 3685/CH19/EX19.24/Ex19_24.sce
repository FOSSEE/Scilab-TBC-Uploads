clc
// Given that
N0 = 9000 // Rotational speed in RPM
Q = 6 // Volume flow rate in m^3/s
p1 = 1 // Initial pressure in bar
t1 = 25 // Initial temperature in degree centigrade
p2 = 2.2 // Compressed pressure in bar
n = 1.33 // Compression index
Vf = 75 // Velocity of flow in m/s
beta1 = 30 // Blade angle at inlet in degree
beta2 = 55 // Blade angle at outlet in degree
d = 0.75 // Diameter of impeller in m
cp = 1.005 
printf("\n Example 19.24\n")
T1 = t1+273
T2 = T1*(p2/p1)^((n-1)/n)
Wc = cp*(T2-T1)
x = Wc // Where x = Vw2*Vb2
y = Vf/tand(beta2)// Where y = Vb2-Vw2(Equation 1)
z = (y^2 +4*x*1000)^(0.5) // Where z = Vw2+Vb2(Equation 2)
// By solving Equation 1 and Equation 2
Vb2 = (y+z)/2
Vw2 = ((z-y)/2)
N = Vb2*60/(%pi*d)
Vb1 = Vf/tand(beta1)
D1 = Vb1*60/(%pi*N)
b1 = Q/(%pi*D1*Vf)
Q_ = Q* (1/p2)*(T2/T1)
b2 = Q_/(%pi*d*Vf)
printf("\n Speed of impeller = %f RPM,\n Impeller width at inlet = %f cm,\n Impeller width at outlet = %f cm,",N,b1*100,b2*100)
// The answers given in the book vary because of round off error
 
