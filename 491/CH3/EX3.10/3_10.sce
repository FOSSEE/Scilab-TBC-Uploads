Ta = 100 ; // Torque in N-m at A
Tb = 150; // Torque in N-m at B
L = 1.6 ; // Length of shaft in meter
G = 80e09 ; // Modulus of elasticity
Ip = 79.52e-09; // polar moment of inertia in m4
Ua = ((Ta^2)*L)/(2*G*Ip) // Strain energy at A
disp("joule",Ua,"Torque acting at free end")
Ub = ((Tb^2)*L)/(4*G*Ip)  // Strain energy at B
disp("joule",Ub,"Torque acting at mid point")
a = (Ta*Tb*L)/(2*G*Ip) // dummy variabble
Uc = Ua+a+Ub ; // Strain energy at C
disp("joule",Uc,"Total torque")