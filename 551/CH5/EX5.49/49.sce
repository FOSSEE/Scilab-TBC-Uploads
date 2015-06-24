clc
m=1; //kg
T1=273; //K
T2=363; //K
c=4.187;

disp("(a)")
disp("(i) Entropy of water=")
ds_water=m*c*log(T2/T1);
disp(ds_water)
disp("kJ/kgK")


disp("(ii) Entropy change of the reservoir ")
Q=m*c*(T2-T1);
ds_reservoir=-Q/T2;
disp("ds_reservoir=")
disp(ds_reservoir)
disp("kJ/K")


disp("(iii) Entropy change of universe =")
ds_universe=ds_water+ds_reservoir;
disp(ds_universe)
disp("kJ/K")


disp("(b)")
T3=313; //K
ds_water=m*c*(log(T3/T1) + log(T2/T3));
ds_res1=-m*c*(T3-T1)/T3;
ds_res2=-m*c*(T2-T3)/T2;

ds_universe=ds_water+ds_res1+ds_res2;
disp("(iii) Entropy change of universe =")
disp(ds_universe)
disp("kJ/K")

disp("(c) The entropy change of universe would be less and less, if the water is heated in more and more stages, by bringing the water in contact successively with more and more heat reservoirs, each succeeding reservoir being at a higher temperature than the preceding one.")
disp("When water is heated in infinite steps, by bringing in contact with an infinite number of reservoirs in succession, so that at any instant the temperature difference between the water and the reservoir in contact is infinitesimally small, then the entropy change of the universe would be zero and the water would be reversibly heated.")