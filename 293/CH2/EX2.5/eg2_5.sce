L = 0.1; // inductance of the coil in henry 
t1 = [0:0.001:0.1];
t2 = [0.101:0.001:0.3];
t3 = [0.301:0.001:0.6];
t4 = [0.601:0.001:0.7];
t5 = [0.701:0.001:0.9]
//current variation as a function of time 
i1 = 100*t1;
i2 = (-50*t2) + 15;
i3 = -100*sin(%pi*(t3-0.3)/0.3);
i4 = (100*t4) - 60;
i5 = (-50*t5) + 45;

t = [t1,t2,t3,t4,t5];
i = [i1,i2,i3,i4,i5];
plot(t, i)

dt = 0.001;
di = diff(i);
V = L*di/dt; //voltage drop appearing across the inductor terminals
Tv = [0:0.001:0.899];
plot(Tv, V, "green")