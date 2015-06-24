//example:-7.2,page no.-342.
// program to compute the length of the line for resonance at 5 GHZ and the Q of the resonator.
W=0.0049;c=3*10^8;f=5*10^9;Zo=50;eipsilar=2.2;ko=104.7;tandelta=0.001;
Rs=0.0184; // taken from example 7.1.
eipsilae=1.87;  // effective permittivity.
l=c/(2*f*sqrt(eipsilae)); // resonator length.
B=(2*%pi*f*sqrt(eipsilae))/c;
alphac=Rs/(Zo*W);
alphad=(ko*eipsilar*(eipsilae-1)*tandelta)/(2*sqrt(eipsilae)*(eipsilar-1));
alpha=alphac+alphad;
Q=B/(2*alpha);
disp(l,'length of the line in meter = ')
disp(Q,'Q of the resonator = ')