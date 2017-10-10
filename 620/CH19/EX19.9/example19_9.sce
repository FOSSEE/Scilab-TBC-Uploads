vp=12;
f=2.5*10^3;
l=20*10^(-3);
r=500;
disp("Part a");
t1=0.1*10^(-3);
i=vp/r;
t0=l/r;
i1=0.008*i;..........//from the curve
disp("the current (in mA) 0.1ms after the input voltage goes to zero is"); disp(i1*10^3);
disp("Part b");
t2=20*10^(-6);
v1=0.6*vp;
disp("the voltage (in V) across the coil after the input voltage goes to zero is"); disp(v1);
disp("Part c");
disp("Both i and vl are approximately zero after 0.2 ms");