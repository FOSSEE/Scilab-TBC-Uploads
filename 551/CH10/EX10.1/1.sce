clc
t_db=293; //K
W=0.0095; //kg/kg of dry air
p_t=1.0132; 
disp("(i) Partial pressure of vapour")
p_v=p_t*W/(W+0.622);
disp("p_v=")
disp(p_v)
disp("bar")


disp("(ii) Relative humidity phi :")
p_vs=0.0234; //bar; From steam tables corresponding to 20 0C
phi=p_v/p_vs;
disp("relative hmidity =")
disp(phi)


disp("(iii) Dew point temperature")
t_dp=13 + (14-13)/(0.01598 - 0.0150)*(0.01524-0.0150); //From stea table by interpolation
disp("t_dp=")
disp(t_dp)
disp("0C")