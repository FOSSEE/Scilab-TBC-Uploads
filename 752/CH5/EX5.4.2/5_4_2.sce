clc;
//page no 163
// problem no 5.4.2
//Resonating freq of a tuned ckt of a CE amplifier is 5MHz
f=5*10^6;//in Hz
w0=2*%pi*f;
Q=100;//Q-factor of the ckt
L=2*10^-6;//inductance expressed in H
Rs=1000;//source resistance in ohm
Ic=500*10^-6;//transister collector current in A
Vt=26*10^-3;//thermal voltage in V
hfe=200;
C_be=10*10^-12;//in pF
// refer to problem 5.4.1
Av=78;
Cm=47;
gm=Ic/Vt;
r_be=hfe/gm;
// The dynamic resistance of the tuned ckt is
RD1=Q*w0*L;
//The effective dynamic conductance is
RD1eff_1=(1/Rs)+(1/RD1)+(1/r_be);
RD1_eff=1/RD1eff_1
// Tha effective Q-factor is 
Qeff=RD1_eff/(w0*L);
disp(Qeff,'The effective Q-factor is');
// The voltage gain refered to source is
Avs=RD1_eff*Av/Rs;
disp(Avs,'The voltage gain is');