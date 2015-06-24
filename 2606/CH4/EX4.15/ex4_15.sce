//Page Number: 4.17
//Example 4.15
clc;
//Given
//x(t)=10cos(wct+3sinwmt)
//Comparing with standard equation
B=3;
fm=1D+3; //hz
fb=2*(B+1)*fm;

//(a)fm is doubled
fma=2*fm;
fba=2*(B+1)*fma;
disp(fba,"fb with 2fm: ");



//(b)fm is one halved
fmb=fm/2;
fbb=2*(B+1)*fmb;
disp(fbb,"fb with 0.5fm: ");

