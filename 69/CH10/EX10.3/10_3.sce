clear; clc; close;

Beta = 75;
Rc = 47*10^(3);
ri = 20*10^(3);
Re = 43*10^(3);

Ac = Beta*Rc/(ri+2*(Beta+1)*Re);

disp(Ac,'Common mode gain = ');
