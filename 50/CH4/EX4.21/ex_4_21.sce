// example: 4.21;
// piecewise linear interpolating polinomials:

x1=1;x2=2; x3=4;x4=8;
f1=3; f2=7; f3=21; f4=73;
//  we need to apply legranges interpolation in sub-ranges [1,2];[2,4],[4,8];

 x=poly(0,"x");

P1=legrangeinterpol (x1,x2,f1,f2);         // in the range [1,2]
P1

P1=legrangeinterpol (x2,x3,f2,f3);         // in the range [2,4]
P1

P1=legrangeinterpol (x3,x4,f3,f4);         // in the range [4,8]
P1