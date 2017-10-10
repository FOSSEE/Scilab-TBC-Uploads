clc;
p=4; // number of poles
s=11; // number of slots
ts=2; // coil sides per slot
C=(s*ts)/2; // total coils
w=((2*C)+2)/(p/2); // winding pitch
// since both back and front pitch should be odd choose 
Yb=7; 
Yf=5; 
disp('Back pitch is')
disp(Yb);
disp('Front pitch is') 
disp(Yf);
yc=(C+1)/(p/2);  
disp('commutator pitch');
disp(yc);
disp('Using this data winding diagram can be drawn');
disp('Winding table is');
disp('(1-8)-(13-20)-(3-10)-(15-22)-(5-12)-(17-2)-(7-14)-(19-4)-(9-16)-(21-6)-(11-18)-1');
