// Example1_16_pg37.sce
// To measure the core loss of transformer
// Theory of Alternating Current Machinery by Alexander Langsdorf
// First Edition 1999, Thirty Second reprint
// Tata McGraw Hill Publishing Company
// Example in Page 37


clear; clc; close;

// Given data
f1 = 30; // Frequency, Hz
B1 = 8; // Flux Density, kilogauss
P1 = 0.135; // Core loss, watts per lb
f2 = 60; // Frequency, Hz
B2 = 12; // Flux Density, kilogauss
P2 = 0.75; // Core loss, watts per lb
P3 = 0.31; // Core loss, watts per lb

// Calculations
a = f2/f1;
x=(log(B2^2*(P2 - a^2 * P3)/((P2 - a*P3)*B1^2 - a*(a-1)*P1*B2^2)))/(log(B2/B1));
kh = (P2 - a^2 * P3)/(f2*(1 - a )*(B2^x));
ke = ((P2 - a*P3)*a)/((a-1)*f2^2*B2^2);
Ph1 = kh*f1*B1^x;  Pe1 = ke*f1^2*B1^2; // Hysteresis Power loss, watts
Ph2 = kh*f2*B2^x;  Pe2 = ke*f2^2*B2^2; // Hysteresis Power loss, watts
Ph3 = kh*f1*B2^x;  Pe3 = ke*f1^2*B2^2; // Hysteresis Power loss, watts
Pt1 = Ph1 + Pe1; // Total Power loss, watts
Pt2 = Ph2 + Pe2; // Total Power loss, watts
Pt3 = Ph3 + Pe3; // Total Power loss, watts
disp('Value of x is'); disp(x);
disp('Value of kh is'); disp(kh);
disp('Value of ke is'); disp(ke);

printf("\n  -------------------------------------------------------\n   f  | B,kilogauss | Ph,watts per lb | Pe,watts per lb   \n  -------------------------------------------------------\n   %d |       %d     |      %.3f      |      %.3f      \n   %d |      %d     |      %.3f      |      %.3f      \n   %d |      %d     |      %.3f      |      %.3f      \n  -------------------------------------------------------\n", f1, B1, Ph1, Pe1, f2, B2, Ph2, Pe2, f1, B2, Ph3, Pe3);

// Result
//   
// Value of x is   
// 
//    2.0637323  
// 
// Value of kh is   
// 
//    0.0000484  
// 
// Value of ke is   
// 
//    0.0000005  
//
//  -------------------------------------------------------
//   f  | B,kilogauss | Ph,watts per lb | Pe,watts per lb   
//  -------------------------------------------------------
//   30 |       8     |      0.106      |      0.029      
//   60 |      12     |      0.490      |      0.260      
//   30 |      12     |      0.245      |      0.065      
//  -------------------------------------------------------
