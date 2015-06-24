// To find the inductance and KVA rating of the arc suppressor coil in the system 
clear
clc;
C1=2*%pi*(10^-9)/(36*%pi*log((4*4*8)^(1/3)/(10*(10^-3))));
C=C1*192*(10^9);// capacitance per phase (micro farad)
L=(10)^6/(3*314*314*C);
V=132;//voltage (kV)
MVA=V*V/(3*314*L);
mprintf("inductance ,L=%.2f H\n",L);
mprintf("MVA rating of suppressor  coil =%.3f MVA per coil",MVA);
