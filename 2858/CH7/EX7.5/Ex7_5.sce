//example 7.5
clc; funcprot(0);
//parta
Gamma=105;
H=10;
Kae=0.474;
k1=0;
Pae=1/2*Gamma*H^2*Kae*(1-k1)
disp(Pae,"active force in lb/ft");
//oartb
Ka=0.246;
Pa=1/2*Gamma*H^2*Ka;
disp(Pa,"active force in lb/ft");
DPae=Pae-Pa;//deltaPae
zbar=(0.6*H*DPae+H/3*(Pa))/Pae;
disp(zbar,"the distance of resultant force from bottom in m");

