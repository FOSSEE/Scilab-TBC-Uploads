clc;
//FOR FIG=2-17.......................................
//PART-(A)
pi=3.14;
fr=2*1e3; //in Hz
L=10*1e-3; //in henry
R=20; //in ohm
X_L=2*pi*fr*L; //in ohm
Q=X_L/R;
disp(Q,'Q-factor at resonance for fig 2-17 =')

//PART-(B)
X_C=125.6;//in ohm
X_L=125.6; //in ohm
C=1/(2*pi*fr*X_C);
disp(+'faraday',C,'capacitance for fig 2-17 =')

//FOR FIG=2-18............................................
fr1=5*1e3; //in Hz
L=150*1e-3; //in henry
R=50; //in ohm
X_L=2*pi*fr1*L; //in ohm
Q=X_L/R;
disp(Q,'Q-factor at resonance for fig 2-18 =')

//PART-(B)
X_C=4.71*1e3;//in ohm
X_L=4.71*1e3; //in ohm
C=1/(2*pi*fr1*X_C);
disp(+'faraday',C,'capacitance for fig 2-18 =')
