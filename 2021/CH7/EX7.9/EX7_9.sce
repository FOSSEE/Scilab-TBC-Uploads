//Finding of Equivalent Diameter
//Given
L=1400;
L1=800;
L2=400;
L3=200;
D1=0.6;
D2=0.4;
D3=0.2;
//To Find
a=L1/(D1)^5;disp(a);
b=L2/(D2)^5;disp(b);
c=L3/(D3)^5;disp(c);
d=(a+b+c);disp(d);
d1=d^1/5;
D=L/d1;
disp( "Diameter ="+string(D)+" meter");
