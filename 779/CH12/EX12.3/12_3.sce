P1 = 0.08; // in bar
sf = 0.5926; x2s = 0.85; sg = 8.2287; 
s2s = sf+(x2s*(sg-sf));
s1 = s2s;
P2 = 16.832; // by steam table opposite to s1 in bar
h1 = 3165.54;
h2s = 173.88 + (0.85*2403.1);
h3 = 173.88;
vfp2 = 0.001;
h4s = h3 + (vfp2*(P2-P1)*100);
Q1 = h1-h4s;
Wt = h1-h2s;
Wp = h4s-h3;
n_cycle = 100*((Wt-Wp)/Q1);
Tm = (h1-h4s)/(s2s-sf);
disp("bar",P2,"The greatest allowable steam pressure at the turbine inlet is")
disp("%",n_cycle,"Rankine cycle efficiency is")
disp("K",Tm,"Mean temperature of heat addition is")
