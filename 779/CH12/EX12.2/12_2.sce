h1 = 3159.3; s1 = 6.9917;
h3 = 173.88; s3 = 0.5926; sfp2 = s3; hfp2 = h3;
hfgp2 = 2403.1; sgp2 = 8.2287;
vfp2 = 0.001008; sfgp2 = 7.6361;
x2s = (s1-sfp2)/(sfgp2);
h2s = hfp2+(x2s*hfgp2);
// Part (a)
P1 = 20e02; P2 = 0.08e02;
h4s = vfp2*(P1-P2)+h3 ; 
Wp = h4s-h3;
Wt = h1-h2s;
Wnet = Wt-Wp;
Q1 = h1-h4s;
n_cycle = Wnet/Q1;
disp("kJ/kg",Wnet,"Net work per kg of steam is")
disp(n_cycle,"Cycle efficiency is")
// Part (b)
n_p = 0.8; n_t = 0.8;
Wp_ = Wp/n_p;
Wt_ = Wt*n_t;
Wnet_ = Wt_-Wp_;
P = 100*((Wnet-Wnet_)/Wnet) ;
n_cycle_ = Wnet_/Q1;
P_ = 100*((n_cycle-n_cycle_)/n_cycle);
disp("%",P,"Percentage reduction in net work per kg of steam is")
disp("%",P_,"Percentage reduction in cycle efficiency is")