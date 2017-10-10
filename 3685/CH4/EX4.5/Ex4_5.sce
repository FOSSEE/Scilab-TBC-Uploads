clc
V1 = 0.03 // initial volume in m^3
P1 = 170 // Initial pressure in kPa
P2 = 400 // Final pressure in kPa
V2 = 0.06 // Final volume in m^3
U = 3.15*(P2*V2-P1*V1) // internal energy in kJ
B = [P1 P2]' 
A = [1 V1 ; 1 V2] 
x = inv(A)*B 
a = x(1) ; b = x(2) 
function P=pressure(V) 
  P = a+b*V 
endfunction 
W = intg(V1,V2,pressure)  
Q = U+W // heat flow into the system in kJ

printf("\n Example 4.5")
printf("\n The work done by the system is %f kJ",W)
printf("\n The heat flow into the system is %f kJ",Q)


