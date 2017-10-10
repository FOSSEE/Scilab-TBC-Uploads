syms s T k
T=k/(T*s^2+s+k)

disp(sqrt(k/T)," omegaN = ")
disp(1/(2*sqrt(k*T))," zeta = ")

disp("in case1 we have k2=1/16*k1")
disp("in case2 we have 4=T2/T1")

disp("so T must be multiplied by 4 to reduce zeta from 0.6 to 0.3")
