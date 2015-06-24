d = 0.004 ; // thickness of wire in m
R0 = 0.5 ; // radius of cylinder in m
E = 200e09 ; // Modulus of elasticity of steel
s = 1200e06 ; // proportional limit of steel
M = (%pi*E*d^4)/(32*(2*R0+d)) ; // Bending moment in wire in N-m
disp("N-m",M,"Bending moment in the wire is ")
s_max = (E*d)/(2*R0+d) ; // Maximum bending stress in wire in Pa
disp("Pa",s_max,"Maximum bending stress in the wire is ")
