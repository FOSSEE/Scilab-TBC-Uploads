clc;
m=1; // Mass of saturated steam in kg
T=100; // Teamperature of steam in degree celcius
T0=303; // temperature of Surroundings in kelvin
hfg=2257; // Latent heat of evaporation in kJ/kg
sfg=6.048; // specific entropy in kJ/kg K
// (a).Entropy change
Q=m*hfg; // Heat transfer
del_Ssystem=-m*sfg; // Change of entropy of system
del_Ssurr=Q/T0; // Change of entropy of surroundings
del_Suniverse=del_Ssystem+del_Ssurr; // Change of entropy of universe
disp ("kJ/K",del_Suniverse,"Change of entropy of universe =","kJ/K",del_Ssurr,"Change of entropy of surroundings =","kJ/K",del_Ssystem,"Change of entropy of system =","(a).Entropy change");
// (b).Effect of heat transfer
del_Suniverse=0; // process is reversible
del_Ssurr=del_Suniverse-del_Ssystem; //Change of entropy of surroundings
QH=hfg; // Heat transfer from the condensing steam to reversible heat engine
QL=T0*del_Ssurr; // Heat receiveded by the surroundins reversible heat engine
W=QH-QL; //work output of reversible heat engine
disp ("Difference between QH & QL is converted into work output in a reversible cyclic process","kJ",W,"work output of reversible heat engine =","kJ",QL,"Heat receiveded by the surroundins reversible heat engine =","kJ",QH,"Heat transfer from the condensing steam to reversible heat engine =","(b).Effect of heat transfer");
