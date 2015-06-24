// example:-6.1,page no.-284.
// program to design an L section matching network to match a series RC load.
Zl=200-%i*100; // load impedence.
Rl=200;Xl=-100;f=500*10^6;Zo=100;
B1=(Xl+sqrt(Rl/Zo)*sqrt(Rl^2+Xl^2-(Rl*Zo)))/(Rl^2+Xl^2);
B2=(Xl-sqrt(Rl/Zo)*sqrt(Rl^2+Xl^2-(Rl*Zo)))/(Rl^2+Xl^2);
C1=(B1/(2*%pi*f))*10^12;
L2=(-1/(B2*2*%pi*f))*10^9;
X1=(1/B1)+((Xl*Zo)/Rl)-(Zo/(B1*Rl));
X2=(1/B2)+((Xl*Zo)/Rl)-(Zo/(B2*Rl));
L1=(X1/(2*%pi*f))*10^9;
C2=(-1/(X2*2*%pi*f))*10^12; 
disp(L1,'inductor of first circuit in nH = ') 
disp(C1,'capacitor of the first circuit in pF = ')
disp(L2,'inductor of second circuit in nH = ')
disp(C2,'capacitor of the second circuit in pF = ')
disp("NOTE:-for above specific problem Rl>Zo,positive X implies inductor,negative X implies capacitor,positive B implies capacitor and negative B implies inductor.")