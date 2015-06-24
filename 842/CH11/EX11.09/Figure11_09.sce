//clear//
//Figure11.9:Root locus analysis of Linear feedback systems
s = %s;
beta_b1 = 1;
beta_b2 = -1;
G1 = syslin('c',[2*beta_b1/s]);
G2 = syslin('c',[2*beta_b2/s]);
H = syslin('c',[s/(s-2)]);
F1 = G1*H;
F2 = G2*H;
clf;
evans(F1,2)
figure
evans(F2,2)
