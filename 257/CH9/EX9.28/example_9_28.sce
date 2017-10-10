s=%s
sys=syslin('c',k/((s+16)*(s^2+2*s+2)))
evans(sys)

//stability

[Ki,s]=kpure(sys)
disp("k marginal is")
disp(Ki)
