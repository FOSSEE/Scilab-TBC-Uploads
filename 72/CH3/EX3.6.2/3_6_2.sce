
//chapter_no.-3,  page_no.-111
//Example_no.3-6-2
clc;

Zl=100+(%i*100);
R0=50;//charcteristic impedance of the stub and the line

zl=Zl/R0;
disp('1. compute the normalised load admittance and enter it on the smith chart');

disp('2 .plot a SWR circle and read the normalised load admittance 180 degree out of phase with zl on the SWR circle : ');
yl=1/zl;
disp(yl,'yl=');

disp('3. Draw the spacing circle of (3/8)lambda by rotating the constant-conductance unity circle (g=1) through a phase angle of 2Bd=2B(3/8lambda) =3/2(%pi)towards the load .now y11 must be on this spacing circle ,since yd2 will be on the g=1 circle(y11 and yd2 are 3/8lambda apart)');

disp('4. move yl for a distance of .4lambda from .458 to .358 along the SWR p circle toward the generator and read yd1 on the chart:');

yd1=.55- %i*1.08;
disp('yd1=.55-%i*1.08')
disp('5. there are two possible solutions for y11.they can be found by carrying yd1 along the constant-conducatnce (g=0.55)circle that intersects the spacing circle at two points        y11=.55-j(.11), y11=.55-j(1.88)');

y11=.55-(%i*.11);
y112=.55-(%i*1.88);

disp('at the junction 1-1  y11=yd1+ys1');
ys1=y11-yd1;
disp(ys1,'ys1=');
ys12=y112-yd1;
disp(ys12,'ys12=');

disp('7. the length of the stub 1 are found as l1=(.25+.123)lambda=.373lambda  l1`=(.25-.107)lambda=.143lambda');

disp('8. the 3/8lambda section of the line transforms y11 to yd2 and y11 to yd2` along their constant standing-wave circles respectively .That is  yd2=1-(%i*.61)  and yd2`=1+(%i*2.60)');

yd2=1-(%i*.61);
yd22=1+(%i*2.60);

disp('9. Then stub 2  must contribute ys2=(.61*%i) and ys2`=(-2.6*%i)');
disp('10. the length of the stub 1 are found as l2=(.25+.087)lambda=.337lambda  l1`=(.308-.25)lambda=.058lambda');
disp('11. It can be seen that normaised impedance yl located inside the hatched area cannot be brought to lie on the locus of y11 or y112 for a possible match by the parallel connection of any short-circuited stub because the spacing circle and g=2 circle are mutually tangent.Thus the area of g=2circle is called the forbidden region of the normalised load admittance for possible match.')
