// Example 9-3, Page No - 324

clear
clc

R=75
B=6*10^6  
T = 29+273
k =1.38*10^-23
Vn = (4*k*T*B*R)^0.5

printf('The input themal noise is %.2f microvolt',Vn*10^6)
