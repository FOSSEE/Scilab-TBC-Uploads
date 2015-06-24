// Scilab Code Ex4.7 : Page-195  
clc;clear;
f1 = 4;....// Focal length of thin convex lens, cm 
f2 = 12;....// Focal length of thin convex lens, cm 
d = 8;....// Separation distance between the lenses, cm
F = f1*f2/(f1+f2-d);....// Equivalent focal length of the combination, cm
L1H1 = d*F/f2;    // Distance of first principal point H1 from first lens, cm
printf("\nThe distance of the first principal point H1 from the first lens = %d cm", L1H1);
L2H2 = -d*F/f1;    // Distance of first principal point H2 from second lens, cm
printf("\nThe distance of the second principal point H2 from the second lens = %d cm", L2H2);
L1F1 = -F*(1-d/f2);    // Distance of first focal point F1 from first lens, cm
printf("\nThe distance of the first focal point F1 from the first lens = %d cm", L1F1);
L2F2 = F*(1-d/f1);    // Distance of second focal point F2 from first lens, cm
printf("\nThe distance of the second focal point F2 from the second lens= %d cm", L2F2);

// Result
// The distance of the first principal point H1 from the first lens = 4 cm
// The distance of the second principal point H2 from the second lens = -12 cm
// The distance of the first focal point F1 from the first lens = -2 cm
// The distance of the second focal point F2 from the second lens= -6 cm 