clear ;
clc;

// Example 2.8
printf('Example 2.8\n\n');
//Page no. 63
// Solution

// 1 kg of the air/HCN mixture
// (a)
m1 = 27.03 ;//[g]
m2 = 29.0 ;//[g]
cn = (10*m1*1000*1000)/(10^6*m2) ;//[mgHCN/kg air]
printf('(a) 10.0 ppm HCN is %.2f mg HCN/kg air.\n',cn);

// (b)
ld = 300 ;//[mg/kg air]
fr = cn/ld;
printf(' (b) Fraction of lethal dose is 10.0 ppm is  %.3f.',fr);