//ex6.4
R_E=560;
f=2*10^3;    //minimum value of frequency in hertz
X_C=R_E/10;    //minimum value of capacitive reactance
C2=1/(2*%pi*X_C*f);
disp(C2,'value of bypass capacitor in farads')