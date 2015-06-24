clc;
m=1; // Mass of ice in kg
T1=258;// Temperature of ice in kelvin
Tm=273; // Melting point of ice in kelvin
T2=303; // temperature of Surroundings in kelvin
Cpice=2.095; // Specific heat of ice in kJ/kg K
hsg=333.5; // Latent heat of fusion in kJ/kg
Cpw=4.1868; // Specific heat of water in kJ/kg K
// (a).Change of entropy
Q=m*(Cpice*(Tm-T1)+hsg+Cpw*(T2-Tm));// Heat transfer
del_Ssystem=m*((Cpice*log (Tm/T1))+(hsg/Tm)+(Cpw*log (T2/Tm)));// Change of entropy of system
del_Ssurr=-Q/T2; // Change of entropy of surroundings
del_Suniverse=del_Ssystem+del_Ssurr; // Change of entropy of universe
disp ("kJ/K",del_Suniverse,"Change of entropy of universe =","kJ/K",del_Ssurr,"Change of entropy of surroundings =","kJ/K",del_Ssystem,"Change of entropy of system =","(a).Entropy change");
// (b).The minimum work of restoring water back to ice
QL=Q; // Refrigerating effect
W=T2*del_Ssystem-QL; // The minimum work of restoring water back to ice
disp ("kJ",W,"(b).The minimum work of restoring water back to ice = ");
