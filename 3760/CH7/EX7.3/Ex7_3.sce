clc;
p=4; // number of poles
s=14; // number of slots
cp=2; // coil sides per slots
w=2; // winding pitch
C=(s*cp)/2; // number of coils
yb=(2*C)/p;
disp('Back pitch is');
disp(yb);
yf=yb-w;
disp('Front pitch is');
disp(yf);
disp('winding table for progressive lap winding is');
disp('(1-8)-(3-10)-(5-12)-(7-14)-(9-16)-(11-18)-(13-20)-(15-22)-(17-24)-(19-26)');
disp('-(21-28)-(23-2)-(25-4)-(27-6)');
disp('from winding diagram')
disp('Brush A is touching segments 1 and 2 partly');
disp('Brush B is at segment 5');
disp('Brush C is at segment 8');
