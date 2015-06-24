clear;
clc;
printf("\t\t\tExample Number 8.4\n\n\n");
// shape-factor algebra for truncated cone
// Example 8.4 (page no.-396) 
// solution

d1 = 0.1;// [m] diameter of top of cone
d2 = 0.2;// [m] diameter of bottom of cone
L = 0.1;// [m] height of cone
// we employ figure 8-16(page no.-390) for solution of this problem and take the nomenclature as shown, designating the top as surface 2,
// the bottom as surface 1, and the side as surface 3. thus the desired quantities are F23 and F33. we have 
Z = L/(d2/2);
Y = (d1/2)/L;
// thus from figure 8-16(page no.-390)  
F12 = 0.12;
// from reciprcity(equatin 8-18)
A1 = %pi*d2^(2)/4;// [square meter]
A2 = %pi*d1^(2)/4;// [square meter]
F21 = A1*F12/A2;
//and
F22 = 0;
// so that 
F23 = 1-F21;
// for surface 3 F31+F32+F33 = 1,  so we must find F31 and F32 in order to evaluate F33. since F11 = 0 we have
F13 = 1-F12;
// and from reciprocity 
A3 = %pi*((d1+d2)/2)*[(d1/2-d2/2)^(2)+L^(2)]^(1/2);// [square meter]
// so from above equation
F31 = A1*F13/A3;
// a similar procedure is applies with surface 2 so that 
F32 = A2*F23/A3;
// finally from above equation 
F33 = 1-F32-F31;
printf("shape factor between the top surface and the side is %f ",F23);
printf("\nshape factor between the side and itself is %f ",F33);






















