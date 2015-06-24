//Chapter 1,Example 1.3 Page 53
clc
clear
//employing equation Vb = K*d^n
//88 = K*4^n --- eq(1)  165 = K*8^n ---eq(2) 
//dividing eq(2)/q(1)
Vb1 = 88
Vb2 = 165
n1 = 0.6286/0.693
K1 = Vb1/4^n1
//135 = K*6^n --- eq(1)  212 = K*10^n ---eq(2) 
//dividing eq(2)/q(1) 
Vb1 = 135
Vb2 = 212
n2 = 0.4513/0.5128
K2 = Vb1/6^n2
n = (n1+n2)/2
K = (K1+K2)/2
printf (" n = %f (approx.) K = %f (approx.)",n,K)

//Answer may vary due to round of error 
