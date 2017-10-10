clc;
p=4; // number of poles
c=12; // number of coils
// Number of commutator segments is equal to number of coils=12
// Each coil has two coil side therefore total coil sides are 24
s=(2*c)/2 ; // total number of slots required
k=1; // integer added(or subtracted) to calculate back pitch to make it an odd integer
w=2; // winding pitch 
yb1=((2*c)/p)-k; // back pitch
// or
yb2=((2*c)/p)+k; // back pitch
disp('Back pitch is ');
disp(yb1,'or',yb2);
yf1=yb1-2; // front pitch for yb=5
yf2=yb2-2; // front pitch for yb=7
disp('front pitch for progressive winding is ');
disp(yf1,'or',yf2);
disp('It is desirable that (yb+yf)/2 should be equal to pole pitch that is 6(in terms of coil sides per pole). So choose yb=7 and yf=5');
disp('Commutator pitch for progressive lap winding is');
disp(1);
