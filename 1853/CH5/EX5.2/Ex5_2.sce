
//P5.2   determine the induced emf in the armature
P=4;//poles
A=4;//wave wound
N=50;//number of slots
SperCondctr=24;//slots/conductor
Z=SperCondctr*N;//total conductor
N=600;//rpm....speed of armature
F=10e-3;//webers....flux/poles
E=F*Z*N*P/(60*A);//emf induced
disp('e.m.f induced is = '+string(E)+' volts');
