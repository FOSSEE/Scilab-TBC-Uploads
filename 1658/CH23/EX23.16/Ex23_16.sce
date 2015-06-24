clc;
B=200;
ri=20*10**3;
RC=47*10**3;
RE=43*10**3;
Ac=(B*RE)/(ri+2*(B+1)*RE);
disp(Ac);
