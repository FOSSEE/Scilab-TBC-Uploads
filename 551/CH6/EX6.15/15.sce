clc
T1=293; //K
T2=353; //K
Tf=1773; //K
T0=288; //K
c_pl=6.3; //kJ/kg K

dAE=c_pl*(T2-T1) - T0*c_pl*log(T2/T1);

n=(1-T0/Tf); //efficiency

//W=heat supplied*efficiency
//The possible work from a heat engine is a measure of the loss of availability, E
E=c_pl*(T2-T1)*n;

Effectiveness=dAE/E;
disp("Effectiveness of the heating process =")
disp(Effectiveness)
