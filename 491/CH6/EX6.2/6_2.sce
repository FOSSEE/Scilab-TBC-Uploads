M = 3000 ; // moment in N-m
t = 0.005 ; // thickness of alluminiun in m
E1 = 72e09 ; // Modulus of elasticity of alluminium in Pa
E2 = 800e06 ; // Modulus of elasticity of Plastic core in Pa
b = 0.2 ; // Width of cross section in m
h = 0.160 ; // Height of cross section in m
hc = 0.150 ; // Height of Plastic core cross section in m
I1 = (b/12)*(h^3 - hc^3) ; // Moment of inertia of alluminium cross section
I2 = (b/12)*(hc^3) ; // Moment of inertia of Plastic core cross section
f = (E1*I1) + (E2*I2) ; // Flexural rigidity of the cross section
s1_max = (M*(h/2)*E1)/f ;
s1c = -s1_max ; // Maximum compressive stress in alluminium core in Pa
s1t = s1_max ;  // Maximum tensile stress in alluminium core in Pa
disp("Pa",s1c," Maximum compressive stress on alluminium face by the general theory for composite beams is")
disp("Pa",s1t," Maximum tensile stress on alluminium face by the general theory for composite beams is")
s2_max = (M*(hc/2)*E2)/f ;
s2c = -s2_max ; // Maximum compressive stress in Plastic core in Pa
s2t = s2_max ;  // Maximum tensile stress in Plastic core in Pa
disp("Pa",s2c," Maximum compressive stress in plastic core by the general theory for composite beams is")
disp("Pa",s2t," Maximum tensile stress in plastic core by the general theory for composite beams is")
// Part (b) : Calculation from approximate theory of sandwitch
s1_max1 = (M*h)/(2*I1) ;
s1c1 = -s1_max1 ; // Maximum compressive stress in alluminium core in Pa
s1t1 = s1_max1 ;  // Maximum tensile stress in alluminium core in Pa
disp("Pa",s1c1," Maximum compressive stress on alluminium core by approximate theory of sandwitch is")
disp("Pa",s1t1," Maximum tensile stress on alluminium core by approximate theory of sandwitch is")
