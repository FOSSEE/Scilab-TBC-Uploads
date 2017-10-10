v=6.5;
r=2.5;
rl=10;
disp("Part a");
i=v/(r+rl);
disp("the current (in A) through the load is"); disp(i);
disp("Part b");
vr=i*r;
disp("the internal voltage drop (in V) is"); disp(vr);
disp("Part c");
vt=v-vr;
disp("the terminal voltage (in V) of the battery under load is"); disp(vt);
disp("Part d");
r1=5;
i1=v/(r1+rl);
vt1=v-i1*r1;
disp("the terminal voltage (in V) of the battery is"); disp(vt1)