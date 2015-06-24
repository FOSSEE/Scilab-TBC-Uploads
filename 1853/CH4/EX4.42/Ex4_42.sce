
//calculate resistance nd reactance of circuit
P=15000;  //power
Vl=400;//line voltage
V=Vl/1.732
I=35;//line current equal to phase current
Z=V/I
coso=15e3/(1.732*400*35)
R=Z*coso
X=sqrt(Z^2-R^2)
disp('reactance='+string(X)+'ohms'  ,'resistance='+string(R)+'ohms')
