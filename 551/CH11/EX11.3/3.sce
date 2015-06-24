clc
C=0.85; //Weight of Carbon present
H2=0.06; //Weight of Hydrogen present
O2=0.06; //Weight of Oxygen present

w_required=C*8/3 + H2*8; //Weight of O2 required 
w_needed=w_required-O2; //Weight of O2 to be supplied

w_air=w_needed*100/23;
disp("Weight of air needed=")
disp(w_air)
disp("kg")