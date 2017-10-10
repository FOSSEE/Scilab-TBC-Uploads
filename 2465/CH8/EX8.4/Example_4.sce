//Chapter-8,Example 4,Page 196
clc();
close();

alpha1=0.02

Ka=1.8*10^-5 

//at equilibrium..
//[CH3COOH] = C1* (1-alpha1)
//[H+] = C1* alpha1
//[CH3COO-] = C1* alpha1
//  Ka =[H+] * [CH3COO-]/[CH3COOH]
//  Ka = C1* alpha1*C1* alpha1/(C1 (1-alpha1))

C1=Ka*(1-alpha1)/alpha1^2

printf('the molar concentration of CH3COOH is C = %.4f molar',C1)

C2=0.01

alpha2= sqrt(Ka/C2)

printf('\n alpha = %.4f ',alpha2)
