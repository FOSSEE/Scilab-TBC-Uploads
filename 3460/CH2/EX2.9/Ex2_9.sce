clc;
V_S=20 //in volt
X_L=1.41*1e3 //in ohm
X_C=1.41*1e3 //in ohm
R=100 //in ohm
pi=3.14
fr=22.5*1e3 //in Hz
L=X_L/(2*pi*fr);
disp(+'henry',L,'L=')
C=1/(2*pi*fr*X_C);
disp(+'faraday',C,'C=')
Q=X_L/R;
disp(Q,'Q-factor =')
BW=fr/Q;
disp(+'Hz',BW,'bandwidth=')
