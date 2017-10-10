s=%s
sys=syslin('c',(k)/((s)*(s^2+8*s+17)))
clf
evans(sys)

//damping ratio 0.5

f=(-1.15+%i*2)
disp("k for damping ratio 0.5 is")
disp(abs(((f)*(f^2+8*f+17))))

