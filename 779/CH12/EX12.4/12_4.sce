h1 = 3465; h2s = 3065; h3 = 3565;
h4s = 2300; x4s = 0.88; h5 = 191.83;
v = 0.001;
P = 150; // in bar
Wp = v*P*100;
h6s = 206.83;
Q1 = (h1-h6s)+(h3-h2s);
Wt = (h1-h2s)+(h3-h4s);
Wnet = Wt-Wp;
n_cycle = 100*Wnet/Q1;
sr = 3600/Wnet;
disp(0.88,"Quality at turbine exhaust is")
disp("%",n_cycle,"Cycle efficiency is")
disp("kg/kW h",sr,"steam rate is")