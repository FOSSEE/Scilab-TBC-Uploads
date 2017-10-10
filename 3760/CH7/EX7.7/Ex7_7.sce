clc;
p=6; // number of poles
s=72; // number of slots
ts=4; // number of coil sides per slot
C=(s*ts)/2; // total number of coils
// To make commutator pitch an integer one coil is made dummy coil therefore
C=C-1;
yc=(C+1)/(p/2); 
disp('commutator pitch');
disp(yc);
yw=((2*C)+2)/(p/2);
disp('Winding pitch is');
disp(yw);
// since back and front pitch should be odd choose
yb=49;
disp('Back pitch is');
disp(yb);
yf=47;
disp('Front pitch is');
disp(yf);
