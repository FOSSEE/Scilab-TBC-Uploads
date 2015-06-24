//Page Number: 4.18
//Example 4.15
clc;
//Given
//x(t)=10cos(wct+3sinwmt)
//Comparing with standard equation of fm
B=3;
fm=1D+3; //hz
fb=2*(B+1)*fm;

//B is inversaly proportional to fm

//(a)fm is doubled
Ba=B/2;
fma=2*fm;;
fba=2*(Ba+1)*fma;
disp(fba,"fb with 2fm: ");



//(b)fm is one halved
Bb=2*B;
fmb=fm/2;
fbb=2*(Bb+1)*fmb;
disp(fbb,"fb with 0.5fm: ");
