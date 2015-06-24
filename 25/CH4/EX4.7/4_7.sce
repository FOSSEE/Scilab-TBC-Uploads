//example:-4.7,page no.-187.
//program to calculate the width and length of microstrip line.
eipsilae=1.87;//effective dielectric constant.
Zo=50;q=%pi/2;c=3*10^8;
f=2.5*10^9;
ko=(2*%pi*f)/c;
d=0.00127;
eipsilar=2.20;
// for w/d>2;
B=7.985;
w=3.081*d*100;
disp(w,'width in centi meter=')
l=(q*100)/(sqrt(eipsilae)*ko);
disp(l,'length of microstrip in centi meter=')