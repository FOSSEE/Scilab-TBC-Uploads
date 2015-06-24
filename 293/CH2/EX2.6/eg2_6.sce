C = 0.01; // capacitance of the capacitor in Farads
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

// voltage across the capacitor as a function of time 
V1 = (1/C)*integrate('100*t','t',0,t1);
V2 = (1/C)*integrate('(-50*t)+15','t',0.101,t2);
V3 = (1/C)*integrate('-100*sin(%pi*(t-0.3)/0.3)','t',0.301,t3);
V4 = (1/C)*integrate('(100*t) - 60','t',0.601,t4);
V5 = (1/C)*integrate('(-50*t) + 45','t',0.701,t5);
V = [V1, V2, V3, V4, V5];

plot(t, V, "green")