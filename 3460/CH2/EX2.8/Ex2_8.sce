clc;
V_S=10 //in volt
X_L=1*1e3 //in ohm
X_C=1*1e3 //in ohm
R=50 //in ohm
fr=1.59*1e6 //in Hz
Q=X_L/R;
disp(Q,'Q-factor =')
BW=fr/Q;
disp(+'Hz',BW,'bandwidth=')
V_L=Q*V_S;
V_C=Q*V_S;
disp(+'volt',V_L,'V_L =')
disp(+'volt',V_C,'V_C =')
