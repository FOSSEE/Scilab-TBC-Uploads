
//Example No.6.5.
//Page No.187.
clc;clear;
a = 0.42;//Lattice constant -[nm].
//(h1,k1,l1) are the miller indices of the plane (101).
h1 = 1;
k1 = 0;
l1 = 1;
d1 = (a/sqrt(h1^(2)+k1^(2)+l1^(2)));//interplanar and interatomic distance of plane (101)
printf("\nFor (101) plane, the interplanar and interatomic distance is %.4f nm",d1);
// (h2,k2,l2) are the miller indices of the plane (221).
h2 = 2;
k2 = 2;
l2 = 1;
d2 = (a/sqrt(h2^(2)+k2^(2)+l2^(2)));//interplanar and interatomic distance of plane (221)
printf("\nFor (221) plane, the interplanar and interatomic distance is %.2f nm",d2);
