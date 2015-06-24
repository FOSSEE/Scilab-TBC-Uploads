// example:-9.5,page no.-492.
// design a band pass filter having a 0.5 db equal ripple respnse with N=3.
N=3;Zo=50;f=1*10^9;delta=1*10^8;
L1=1.596;L3=1.5963;C2=1.0967;Rl=1.000;
L_1=(L1*Zo)/(2*%pi*f*delta);
C_1=delta/(2*%pi*f*L1*Zo);
L_2=(delta*Zo)/(2*%pi*f*C2);
C_2=C2/(2*%pi*f*delta*Zo);
L_3=(L3*Zo)/(2*%pi*f*delta);
C_3=delta/(2*%pi*f*L3*Zo);
disp(L_1)
disp(L_2)
disp(C_1)
disp(C_2)
disp(L_3)
disp(C_3)