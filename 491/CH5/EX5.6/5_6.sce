P = 12000; // Lataeral load at the upper end in N
h = 2.5 ; // Height of post in m
Mmax = P*h ; // Maximum bending moment in Nm
// Part (a) : Wood Post
s1 = 15e06 ; // Maximum allowable stress in Pa
S1 = Mmax/s1 ;// Section Modulli in m3
d1 = ((32*S1)/%pi)^(1/3); // diameter in m
disp("m",d1,"the minimum required diameter d1 of the wood post is")
// Part (b) : Alluminium tube
s2 = 50e06 ; // Maximum allowable stress in Pa
S2 = Mmax/s2; // Section Modulli in m3
d2 = (S2/0.06712)^(1/3); // diameter in meter.....(1) 
// Here equation (1) , comes from solving following three equation 
// c = d2/2 (radius of tube)
// I2 = (%pi/64)*((d2^4)-((0.75*d2)^4)) (Moment of inertia)
// S2 = I2/c ;
disp("m",d2,"minimum required outer diameter d2 of the aluminum tube is")