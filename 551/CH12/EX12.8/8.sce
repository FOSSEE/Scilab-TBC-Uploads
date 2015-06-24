clc
IP=35; // Power developed by the engine in kW
S=284; //Steam combustion in kg/h
p2=0.14; //Condenser pressure in bar
p1=15; //bar

h1=2923.3; //kJ/kg
s1=6.709; //kJ/kg K

h_f=220; //kJ/kg
h_fg=2376.6; //kJ/kg
s_f=0.737; //kJ/kg K
s_fg=7.296; //kJ/kg K

x2=(s1-s_f)/s_fg;
disp("(i) Final condition of steam =")
disp(x2)

h2=h_f+x2*h_fg;

disp("(ii) Rankine efficiency=")
n_rankine=(h1-h2)/(h1-h_f);
disp(n_rankine)

disp("(iii) Relative efficiency")
n_thermal=IP/(S/3600)/(h1-h_f);

n_relative=n_thermal/n_rankine;
disp("relative efficiency=")
disp(n_relative)
