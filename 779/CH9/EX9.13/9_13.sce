x1 = 1; x2 = 0.8;
// at 0.2MPa
vg = 0.8857; v1 = vg; hg = 2706.7; h1 = hg; 
m1 = 5 ; V1 = m1*v1;
// at 0.5MPa
m2 = 10; 
hf = 640.23; hfg = 2108.5
vf = 0.001093; vfg = 0.3749;
v2 = vf+(x2*vfg);
V2 = m2*v2;
//
Vm = V1+V2;
m = m1+m2;
vm = Vm/m;
u1 = h1;
h2 = hf+(x2*hfg);
u2 = h2;
m3 = m;
h3 = ((m1*u1)+(m2*u2))/m3;
u3 = h3; 
v3 = vm;
// From mollier diagram
x3 = 0.870; p3 = 3.5; s3 = 6.29;
s1 = 7.1271;
sf = 1.8607; sfg = 4.9606;
s2 = sf+(x2*sfg);
E = m3*s3-((m1*s1)+(m2*s2));
disp("bar",p3,"Final pressure is")
disp(x3,"Steam quality is")
disp("kJ/K",E,"Entropy change during the process is")


