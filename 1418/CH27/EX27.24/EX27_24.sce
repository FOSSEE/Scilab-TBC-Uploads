//EXAMPLE 27.24
//DC COMPOUND GENERATORS

clc;
funcprot(0);

//Variable Initialisation
Lt=500;.....//Total load current in Amperes
RaA=0.01;.......//Armature resistance of generator A in Ohms
RseA=0.004;......//Series field resistance of generator A in Ohms
emfA=240;.....//emf of generator A in Volts
RaB=0.02;.......//Armature resistance of generator B in Ohms
RseB=0.006;......//Series field resistance of generator B in Ohms
emfB=244;.....//emf of generator B in Volts

v=((RaB*100*emfA)+(RaA*100*emfB)-(Lt*RaA*RaB*100*100/100))/((RaA+RaB)*100);.....//Voltage between equalizer bus bar and the negative in Volts
i1=(emfA-v)/RaA;.........//Armature current of first generator in Amperes
i2=(emfB-v)/RaB;..........//Armature current of second gnerator in Amperes
disp(i1,"(a).Armature current of first generator in Amperes:");
disp(i2,"Armature current of second gnerator in Amperes:");

iseA=3/5*Lt;.......//Current in the series winding of generator A in Amperes
iseB=2/5*Lt;........//Current in the sries windings of generator B in Amperes
disp(iseA,"(b).Current in the series winding of generator A in Amperes:");
disp(iseB,"Current in the sries windings of generator B in Amperes:");

Ieb=iseA-iseB;.......//Current flowing through the equalizing bar in Amperes
disp(Ieb,"(c).Current flowing through the equalizing bar in Amperes:");

V=v-(iseA*RseA);......//bus bar voltage in Volts
disp(V,"(d).bus bar voltage in Volts:");
