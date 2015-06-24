cp = 1.005;
Tmax = 1073; Tmin = 300;
Wnet_max = cp*(sqrt(Tmax)-sqrt(Tmin))^2;
n_cycle = 1-sqrt(Tmin/Tmax);
n_carnot = 1-(Tmin/Tmax);
r = n_cycle/n_carnot;
disp("kJ/kg",Wnet_max,"Maximum work done per kg of air is")
disp("%",n_cycle*100,"cycle efficiency is")
disp(r,"ratio of brayton and carnot efficiency is")