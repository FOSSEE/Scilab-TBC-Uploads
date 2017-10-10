s=%s
sys=syslin('c',(k)/(s*(s+5)*(s+10)))
clf
evans(sys)

//stability

[Ki,s]=kpure(sys)
disp(Ki)