// given Qi(s)=0.04/s^2
s=%s
syms K J f
Qi=0.04/s^2;
e=limit(s*Qi*H,s,0)
disp(e,"Steady stste eror=")