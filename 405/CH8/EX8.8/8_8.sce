clear;
clc;
printf("\t\t\tExample Number 8.8\n\n\n");
// open hemisphere in large room
// Example 8.8 (page no.-406-408) 
// solution

d = 0.3;// [m] diameter of hemisphere
T1 = 500+273;// [degree celsius] temperature of hemisphere
T2 = 30+273;// [degree celsius] temperature of enclosure 
E = 0.4;// surface emissivity of hemisphere
sigma = 5.669*10^(-8);// [W/square meter K^(4)] constant
// the object is completely surrounded by a large enclosure but the inside surface of the sphere is not convex.
// in the given figure example 8-8(page no.-407) we take the inside of the sphere as surface 1 and the enclosure as surface 2.
// we also create an imaginary surface 3 covering the opening.
// then the heat transfer is given by
Eb1 = sigma*T1^(4);// [W/square meter]
Eb2 = sigma*T2^(4);// [W/square meter]
A1 = 2*%pi*(d/2)^(2);// [square meter] area of surface 1
// calculating the surface resistance 
R1 = (1-E)/(E*A1); 
// since A2 tends to 0 so R2 also tends to 0
R2 = 0; 
// now at this point we recognize that all of the radiation leaving surface 1 which will eventually arrive at enclosure 2 will also hit the imaginary   surface 3(F12 = F13). we also recognize that A1*F13 = A3*F31. but 
F31 = 1.0;
A3 = %pi*(d/2)^(2);// [square meter]
F13 = (A3/A1)*F31;
F12 = F13; 
// then calculating space resistance 
R3 = 1/(A1*F12);
// we can claculate heat transfer by inserting the quantities in equation (8-40):
q = (Eb1-Eb2)/(R1+R2+R3);// [W]
printf("net radiant exchange is %f W",q);





