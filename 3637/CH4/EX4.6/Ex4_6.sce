//problem 6 pagenumber 4.40
//given
vref=10;//volt
is=1.875e-3;//A
z=['1111' '1100'];format(6);
//determine R I
n=4;
v0=vref/2^n*(1*2^(n-1)+1*2^(n-2)+1*2^(n-3)+1*2^(n-4));
r=v0/is;
disp('R = '+string(r/10^3)+' Kohm');
v0=vref/2^n*(1*2^(n-1)+1*2^(n-2))/r;
disp('I at 1100 = '+string(v0*10^3)+' mA');



