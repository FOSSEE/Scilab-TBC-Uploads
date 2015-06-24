clc;
R=10;//in ohm
L=100*1e-3; //in henry
C=0.01*1e-6; //in faraday
pi=3.14;
fr=1/(2*pi*sqrt(L*C));
disp(+'Hz',fr,'fr=')
//since impedence at resonance is equal to R
Z_T=R;
disp(+'ohm',Z_T,'Z_T =')
X_L=2*pi*fr*L;
disp(+'ohm',X_L,'X_L=')
//At resonance X_L=X_C
X_C=X_L
disp(+'ohm',X_C,'X_C =')

//Need to find all parameters again at fr-1 KHZ frequency
X_L=2*pi*(fr-1000)*L; //we subtract fr from 1000 because fr is in khz
disp(+'ohm',X_L,'X_L=')
X_C=1/(2*pi*(fr-1000)*C);
disp(+'ohm',X_C,'X_C=')
Z_T=sqrt((R*R)+((X_L-X_C)*(X_L-X_C)));
disp(+'ohm',Z_T,'Z_T =')

//Need to find all parameters again at fr+1 KHZ frequency
X_L=2*pi*(fr+1000)*L; //we subtract fr from 1000 because fr is in khz
disp(+'ohm',X_L,'X_L=')
X_C=1/(2*pi*(fr+1000)*C);
disp(+'ohm',X_C,'X_C=')
Z_T=sqrt((R*R)+((X_L-X_C)*(X_L-X_C)));
disp(+'ohm',Z_T,'Z_T =')
