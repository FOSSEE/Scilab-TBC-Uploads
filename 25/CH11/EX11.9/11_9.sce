// example:-11.9,page no.-635.
// program to design a load matching network for a 50 ohm load impedence.
Zo=50;f=6*10^9;taoin=1.25*expm(%i*(40)*%pi/180);
Zin=((1+taoin)/(1-taoin))*Zo;
Zl=-Zin;
disp(Zl,'the load impedence = ')