// Scilab Code Ex4.8: Page-195 (2011)
clc;clear;
f1 = 25;....// Focal length of thin convex lens, cm 
f2 = -15;....// Focal length of thin concave lens, cm 
d = 15;....// Separation distance between the lenses, cm  
// We know that, F = f1*f2/f1+f2-d then
F = f1*f2/(f1+f2-d);....// The equivalent focal length of the combination
L1H1 = d*F/f2;    // The distance of the first principal point H1 from the first lens, cm
printf("\nThe distance of the first principal point H1 from the first lens = %d cm", L1H1);
L2H2 = -d*F/f1;    // The distance of the second principal point H2 from the first lens, cm
printf("\nThe distance of the second principal point H2 from the second lens = %d cm", L2H2);
L1F1 = -F*(1-d/f2);    // The distance of the first focal point F1 from the first lens, cm
printf("\nThe distance of the first focal point H1 from the first lens = %d cm", L1F1);
L2F2 = F*(1-d/f1);    // The distance of the second principal point F2 from the first lens, cm
printf("\nThe distance of the second focal point H2 from the second lens= %d cm", L2F2);

//Result
// The distance of the first principal point H1 from the first lens = -75 cm
// The distance of the second principal point H2 from the second lens = -45 cm
// The distance of the first focal point H1 from the first lens = -150 cm
// The distance of the second focal point H2 from the second lens= 30 cm 