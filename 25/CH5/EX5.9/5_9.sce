// example:-5.9,page no.-248.
// program to derive the expression for taoin.
syms S S11 S22 S12 S21 taol taoin a1 a2 b1 b2 a b;
S=[S11 S12;S21 S22];
b=[b1;b2];
a=[a1;a2];
b=S*a;
disp(b)
//so, S11 will be the reflection coefficient i.e taoin.
taoin=S11+((S21*S12*taol)/(1-S22*taol));
// result
disp(taoin,'the expression for taoin will be=')