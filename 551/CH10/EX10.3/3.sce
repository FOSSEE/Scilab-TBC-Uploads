clc
phi=0.55;
p_vs=0.0425; //bar
p_t=1.0132; //bar

p_v=phi*p_vs;
W=0.622*p_v/(p_t-p_v);

//Specific humidity after removing o.oo4 kg of water vapour
Wnew=W-0.004;
p_v=p_t*Wnew/(Wnew+0.622);
p_vs=0.0234; //bar

disp("(i) Relative humidity")
phi=p_v/p_vs;
disp("phi=")
disp(phi)


disp("(ii) Dew point temperature")

disp("Corresponding to 0.0171 bar, from steam tables")
t_dp=15; //0C
disp("t_dp=")
disp(t_dp)
disp("0C")