//To dtermine the equivalent star connected capacity and the kVA required.
clear
clc;
V=20;//voltage (kV)
w=314;
C=2*3.04*10^-6;//capacitance per phase(micro-farad)
KVA=V*V*w*C*1000;
mprintf("3-phase kVA required =%.0f kVA",KVA); //Answer don't match due to difference in rounding off of digits
