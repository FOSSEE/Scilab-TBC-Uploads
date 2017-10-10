syms s Td
G=(1+s*Td)/(s*(s+1.6))
H=1
T=G/(1+G*H)

omegaN=2;      //comparing the denominator with standard form
zeta=1        //zeta=(1.6+4*Td)/(4)
Td=(4-1.6)/4
disp(Td,"Td = ")
Ts=4/(zeta*omegaN)
disp(Ts," Ts = ")



