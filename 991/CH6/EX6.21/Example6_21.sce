//Example 6.21.
clc
format(6)
ICBO=0.2*10^-6
ICEO=18*10^-6
IB=30*10^-3
disp("The leakage current  ICBO = 0.2 uA")
disp("                     ICEO = 18 uA")
disp("Assume that          IB = 30 mA")
disp("IE = IB + IC")
disp("IC = IE - IB = (beta*IB)+((1+beta)*ICBO)")
disp("We know that,  ICEO = ICBO/(1-alpha) = (1+beta)*ICBO")
beta=(ICEO/ICBO)-1
disp(beta,"beta = (ICEO / ICBO)-1 = ")
IC=(beta*IB)+((1+beta)*ICBO)
disp(IC,"IC(A) = (beta*IB) + ((1+beta)*ICBO) = ")
alpha_dc=1-(ICBO/ICEO)
disp(alpha_dc,"alpha_dc = 1 - (ICBO / ICEO) = ")
format(4)
beta_dc=(IC-ICBO)/(IB-ICEO)
disp(beta_dc,"beta_dc = (IC-ICBO) / (IB-ICEO) = ")