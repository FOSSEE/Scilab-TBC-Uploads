clc
P1 = 0.5 // Initial pressure in MPa
V1 = 0.2  // Initial volume in m^3
V2 = 0.05 // Final volume in m^3
n = 1.3 // Polytropic index


printf("\n Example 7.7")
P2 = P1*(V1/V2)^n 
function y = f(p)
  y = ((P1*V1^n)/p)^(1/n) 
endfunction
H = integrate('f','p',P1,P2)  // H = H2-H1
U = H-(P2*V2-P1*V1) 
W12 = -U 
printf("\n Change in enthalpy is %f kJ",H*1e3)
printf("\n Change in internal energy is %f kJ",U*1000)
printf("\n The change in entropy and heat transfer are is %d kJ",0)
printf("\n The work transfer during the process is %f kJ",W12*1000)
//The answers vary due to round off error

