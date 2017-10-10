rl1=4;
rl2=8;
rl3=16;
rl4=100;
v=40;
r=8;
disp("when load is 4 Ω");
vl1=v*rl1/(rl1+r);
disp("the load voltage (in V) is"); disp(vl1);
pl1=vl1^2/rl1;
p1=v^2/(rl1+r);
n1=pl1*100/p1;
disp("the efficiency (in %) is"); disp(n1);
disp("when load is 8 Ω");
vl2=v*rl2/(rl2+r);
disp("the load voltage (in V) is"); disp(vl2);
pl2=(vl2^2)/rl2;
p2=(v^2)/(rl2+r);
n2=pl2*100/p2;
disp("the efficiency (in %) is"); disp(n2);

disp("when load is 16 Ω");
vl3=v*rl3/(rl3+r);
disp("the load voltage (in V) is"); disp(vl3);
pl3=vl3^2/rl3;
p3=v^2/(rl3+r);
n3=pl3*100/p3;
disp("the efficiency (in %) is"); disp(n3);
disp("when load is 100 Ω");
vl4=v*rl4/(rl4+r);
disp("the load voltage (in V) is"); disp(vl4);
pl4=vl4^2/rl4;
p4=v^2/(rl4+r);
n4=pl4*100/p4;
disp("the efficiency (in %) is"); disp(n4);