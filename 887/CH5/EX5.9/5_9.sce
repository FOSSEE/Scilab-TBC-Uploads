clc
//ex5.9
//L is load
P_L=50*10^3;      //power of load
f=60;      //frequency
V_rms=10*10^3;      //rms voltage
PF_L=0.6;      //power factor
phi_L=acos(PF_L);      //power angle
Q_L=P_L*tan(phi_L);      //reactive power of load
//when capacitor is added, power angle changes
PF_L_new=0.9;
phi_L_new=acos(PF_L_new);
Q_new=P_L*tan(phi_L_new);
Q_C=Q_new-Q_L;      //reactive power of capacitance
X_C=-V_rms^2/Q_C;      //reactance of capacitor
W=2*%pi*f;      //angular frequency
C=1/(W*abs(X_C));      //capacitance
printf(" All the values in the textbook are approximated hence the values in this code differ from those of Textbook")
disp(C*10^6,'Required capacitance in micro-farads')
