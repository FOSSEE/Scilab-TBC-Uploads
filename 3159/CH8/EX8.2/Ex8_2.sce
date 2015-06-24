// Calculate maximum time till which material can be kept at 550 degree Celsius
clc
D_0 = 0.24e-4 // diffusion coefficient
Q = 121e3
R = 8.314// Universal gas constant
T = 550 // temperature in Celsius
k = 0.2 // thickness of pure Al sheet in mm
d = 0.1 // penetration depth in mm
c_x = 0.4 // concentration in percentage
A  = 2 // Constant in percentage
B = 2// Constant in percentage
printf("\n Example 8.2")
x = d-k
D_cu_al = D_0*exp(-Q/(R*(T+273))) 
k = (A-c_x)/B
if k ==0.8 then
    z = 0.9 // from table
end
t = (x*1e-3)^2/(z^2*4*D_cu_al)// time in sec

printf("\n Material can be kept at %d degree Celsius for nearly %d minute",T,t/60)// answer in book is 100 min

