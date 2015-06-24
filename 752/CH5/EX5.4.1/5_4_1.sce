//page no 162
// problem no 5.4.1
//Resonating freq of a tuned ckt of a CE amplifier is 5MHz
f=5*10^6;
c=100*10^-12;//tuning capacitance in F
Q=150;// Q-factor of the ckt
Rl=5*10^3;//load resistance in ohm
Rc=40*10^3;//o/p reistance of transistor
Ic=500*10^-6;//transister collector current in A
C=0.6*10^-12;//collector to base capacitance in F
Vt=26*10^-3;//thermal voltage in V
//transe conductance is given as
gm=Ic/Vt;
RD2=Q/(2*%pi*f*c);
// At resonance the output admittance is purely conductive and is given as
Yo=(1/Rc)+(1/RD2)+(1/Rl);
//The voltage gain is given as
Av=-(gm/Yo);
disp(Av,'The voltage gain is');
//The Millar capacitance is given as
Cm=(1-Av)*C;
disp('pF',Cm*10^12,'The Millar capacitance is');