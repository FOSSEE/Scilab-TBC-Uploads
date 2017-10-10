s=%s
sys=syslin('c',((k)*(s^2-2*s+5))/((s+2)*(s-0.5)))
clf
evans(sys)

//stability

[Ki,s]=kpure(sys)
disp(Ki)

//damping ratio 0.5

f=(-0.3+%i*0.55)
disp("k for damping ratio 0.5 is")
disp(abs(((f+2)*(f-0.5)))/(f^2-2*f+5))

