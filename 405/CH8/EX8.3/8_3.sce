clear;
clc;
printf("\t\t\tExample Number 8.3\n\n\n");
// shape-factor algebra for open ends of cylinder
// Example 8.3 (page no.-395) 
// solution

d1 = 0.1;// [m] diameter of first cylinder
d2 = 0.2;// [m] diameter of second cylinder
L = 0.2;// [m] length of cylinder
// we use the nomenclature of figure 8-15(page no.-388) for this problem and designate the open ends as surfaces 3 and 4.
// we have 
L_by_r2 = L/(d2/2);
r1_by_r2 = 0.5;
// so from figure 8-15 or table 8-2(page no.-389) we obtain
F21 = 0.4126;
F22 = 0.3286;
// using the reciprocity relation (equation 8-18) we have
F12 = (d2/d1)*F21;
// for surface 2 we have F12+F22+F23+F24 = 1.0
// and from symmetry F23 = F24 so that
F23 = (1-F21-F22)/2;
F24 = F23;
// using reciprocity again,
A2 = %pi*d2*L;// [m^2]
A3 = %pi*(d2^2-d1^2)/4;// [m^2]
F32 = A2*F23/A3;
// we observe that F11 = F33 = F44 = 0 and for surface 3 F31+F32+F34 = 1.0
// so, if F31 can be determined, we can calculate the desired quantity F34. for surface 1 F12+F13+F14 = 1.0
// and from symmetry F13 = F14 so that
F13 = (1-F12)/2;
F14 = F13;
// using reciprocity gives
A1 = %pi*d1*L;// [square meter]
F31 = (A1/A3)*F13;
// then 
F34 = 1-F31-F32;
printf("shape factor between the open ends of the cylinder is %f ",F34);







