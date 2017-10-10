clc;
Pout=2000000;//output power in watts
Vt=400;//output voltage
P=14;//No of poles
A=14;//No of parallel paths of conductor
Pr=0.7;//pole arc to pole pitch ratio
Z=1100;//total armature conductors
Ia=Pout/Vt;//armature current
A_z=(Ia*Z)/(A*P);//armature ampere conductors per pole
A_z1=Pr*A_z;//armature ampere conductors per pole to be compensated by pole face winding
//The compensating winding carries the entire armature current of 5000 A.
Wc=A_z1/Ia;//compensating winding conductors per pole
printf('Total compensating winding conductors per pole are %f.',round(Wc));
