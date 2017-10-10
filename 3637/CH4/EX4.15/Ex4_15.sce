//problem 15 pagenumber  4.44
//given
r=5e-3;//volt
vref=8;//volt
format(3);
//determine N
n=log10(1/(r/vref)+(1))/log10(2);
disp('N = '+string(n));//no unit



