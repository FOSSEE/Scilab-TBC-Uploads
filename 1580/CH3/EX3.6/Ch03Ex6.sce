// Scilab Code Ex3.6 : Page-3.8 (2004)
clc;clear;
a = 1;  // For simplicity we assume a to be unity, unit
h1 = 1, k1 = 0, l1 = 0;    // Indices of first set of parallel planes
d_100 = a/sqrt(h1^2 + k1^2 + l1^2);    // Interplanar spacing for (100) planes, unit
h2 = 1, k2 = 1, l2 = 0;    // Indices of second set of parallel planes
d_110 = a/sqrt(h2^2 + k2^2 + l2^2);    // Interplanar spacing for (110) planes, unit
h3 = 1, k3 = 1, l3 = 1;    // Indices of third set of parallel planes
d_111 = a/sqrt(h3^2 + k3^2 + l3^2);    // Interplanar spacing for (111) planes, unit
printf("\nd_100 : d_110 : d_111 = %1d : %4.2f : %4.2f", d_100, d_110, d_111);

// Result 
// d_100 : d_110 : d_111 = 1 : 0.71 : 0.58 
