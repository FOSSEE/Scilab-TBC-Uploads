// At dead state of 1 bar, 300K
u0 = 113.1; h0 = 113.2;
v0 = 0.001005; s0 = 0.0395;
T0 = 300; P0 = 100;
K = h0-(T0*s0);
// Part (a)
u = 376.9; h = 377; 
v = 0.001035; s = 1.193;
m = 3; 
fi = m*(h-(T0*s)-K); // As P = P0 = 1 bar
disp("kJ",fi,"Energy of system in Part (a) is")
// Part (b)
u = 3099.8; h = 3446.3; v = 0.08637; s = 7.090; // At P = 4 Mpa, t = 500 degree
m = 0.2;
fib = m*(u+P0*v-T0*s-K);
disp("kJ",fib,"Energy of system in Part (b) is")
// Part (c)
m = 0.4;
x = 0.85; // Quality
u = 192+x*2245;
h = 192+x*2392;
s = 0.649+x*7.499;
v = 0.001010+x*14.67;
fic = m*(u+P0*v-T0*s-K);
disp("kJ",fic,"Energy of system in Part (c) is")
// Part (d)
m = 3;
h = -354.1; s = -1.298; // at 1000kPa, -10 degree
fid = m*((h-h0)-T0*(s-s0));
disp("kJ",fid,"Energy of system in Part (d) is")
