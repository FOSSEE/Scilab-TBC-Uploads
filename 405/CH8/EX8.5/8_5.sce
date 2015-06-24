clear;
clc;
printf("\t\t\tExample Number 8.5\n\n\n");
// shape-factor algebra for cylindrical reflactor
// Example 8.5 (page no.-397-398) 
// solution

d = 0.6;// [m] diameter of long half-circular cylinder
L = 0.2;// [m] length of square rod
// we have given figure example 8-5(page no.-397) for solution of this problem and take the nomenclature as shown, 
// from symmetry we have 
F21 = 0.5;
F23 = F21;
// in general, F11+F12+F13 = 1. to aid in the analysis we create the fictious surface 4 shown in figure example 8-5 as dashed line.
// for this surface 
F41 = 1.0;
// now, all radiation leaving surface 1 will arrive either at 2 or at 3. likewise,this radiation will arrive at the imaginary surface 4, so that F41 = F12+F13 say eqn a
// from reciprocity
A1 = %pi*d/2;// [square meter]
A4 = L+2*sqrt(0.1^(2)+L^(2));// [square meter]
A2 = 4*L;// [square meter]
// so that 
F14 = A4*F41/A1;// say eqn b
// we also have from reciprocity
F12 = A2*F21/A1;// say eqn c
// combining a,b,c, gives
F13 = F14-F12;
// finally
F11 = 1-F12-F13;
printf("value of F12 is %f ",F12);
printf("\nvalue of F13 is %f ",F13);
printf("\nvalue of F11 is %f ",F11);





 