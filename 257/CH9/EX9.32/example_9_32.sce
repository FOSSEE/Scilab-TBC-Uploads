//given characteristic equation we get GH
s=%s
sys=syslin('c',k/(s*(s^2+8*s+20)))
clf
evans(sys)

//stability

[Ki,s]=kpure(sys)
disp(Ki)


//damping ratio is 0.95

f=(-1.8+%i*0.55)
disp("k for damping ratio 0.95 is")
disp(abs((f*(f^2+8*f+20))))


f=(-03.6+%i*1.1)
disp("k for damping ratio 0.95 is")
disp(abs((f*(f^2+8*f+20))))
