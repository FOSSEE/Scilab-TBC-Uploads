disp("example1.1")
printf("\n")
disp("given")
printf("\n")
disp("C=C0(1-coswt)")
disp("angular frequency=500rad/sec")
w=500;
t=0:0.001:0.015
disp("initial capacitance=1 micro farad")
disp("i=d(CV)/dt")
disp("supply voltage=3V")
C0=1*(10^-6)
C=C0*(1-cos(w*t))
V=3;
i= w*C0*V*sin(w*t)//differentiating CV wrt t ,V is constant, i=d(CV)/dt
subplot(221)
plot(t,i)
xtitle('i vs t','t','i')
subplot(222)
plot(t,C)//variation of capacitance with time
xtitle('C vs t','t','C')