// Caption: Finding current in feeder wires
clear;
close;
clc;
V_s=2400/sqrt(3);
X_eqs=2.76/3;//per phase
X_eqr=1.82/3;//at recieving end
total_X=X_eqs+X_eqr+0.8;
I_win=594/sqrt(3);//at 2400V windings
I_feeder=1385/2.33;//at 2400V feeder