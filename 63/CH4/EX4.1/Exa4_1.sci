//Calculate percentage power savings when carrier and one of the sidebands are suppressed in a AM wave modulated to a depth of (a) 100% (b) 50%


Pc = 10;
m1 = 1;
m2 = .5;

Pt1 = Pc*(1+(m1^2/2));
Psb1 = Pc*(m1^2/4);
s1 = (Pt1 - Psb1)/Pt1;
s1a = s1 * 100;

Pt2 = Pc*(1+(m2^2/2));
Psb2 = Pc*(m2^2/4);
s2 = (Pt2 - Psb2)/Pt2;
s2a = s2 * 100;

disp(s1a, 'Power savings when modulation index is 100%')
disp(s2a, 'Power savings when modulation index is 50%')