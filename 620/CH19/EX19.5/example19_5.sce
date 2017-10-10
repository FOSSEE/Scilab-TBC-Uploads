l=30*10^(-3);
r=2*10^3;
v=50;
disp("Part a");
t=l/r;
disp("the time constant (in μs) of the circuit is"); disp(t*10^6);
disp("Part b");
disp("the initial voltage (in V) across the coil is"); disp(v);
disp("Part c");
t1=7.5*10^(-6);
t0=t1/t;
v1=0.6*v;..........//from the curve
disp("the steady state voltage (in V) across the coil is"); disp(v1);
disp("Part d");
i=v/r;
disp("the steady state current (in mA) in the circuit is");disp(i*10^3);
disp("Part e");
t2=45*10^(-6);
t01=t2/t;
i1=0.95*i;...........//from the curve
disp("the current (in mA) 45 μs after closing the switch is");disp(i1*10^3);
disp("Part f");
v2=37.5;
v0=v2/v;
t3=1.4*t;............//from the curve
disp("the time taken (in μs) to reach 37.5 V is"); disp(t3*10^6);
disp("Part g");
t4=5*t;
disp("the time taken (in μs) for voltage across coil to drop to zero is"); disp(t4*10^6);