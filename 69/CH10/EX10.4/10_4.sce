clear; clc; close;

Beta = 75;
Rc = 10*10^(3);
ri = 11*10^(3);
Re = 200*10^(3);
ro = 200*10^(3);

Re = ro;
Ac = Beta*Rc/(ri+2*(Beta+1)*Re);

disp(Ac,'Common mode gain = ');


