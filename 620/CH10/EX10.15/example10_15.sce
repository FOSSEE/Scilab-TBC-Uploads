r1=0.4;
r2=1;
rl=2;
v1=12;
v2=15;
i1=v1/r1;
i2=v2/r2;
vx=(i1+i2)/(1/r1+1/r2+1/rl);
disp("the load voltage (in V) is");disp(vx);