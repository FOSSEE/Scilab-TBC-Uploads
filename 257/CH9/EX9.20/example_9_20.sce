s=%s
sys=syslin('c',(s+1)*k/(s*(s-1)*(s^2+5*s+20)))
evans(sys)

//stability

[Ki,s]=kpure(sys)
disp(Ki)