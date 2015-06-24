clc;
x=[1 1 1 1];
h=[1 1 1];
Xz=0;
z=poly(0,"z");
for i=1:length(x)
    Xz=Xz+x(i)*z^(1-i);
end
Hz=0;
for i=1:length(h)
    Hz=Hz+h(i)*z^(1-i);
end
Yz=Xz*Hz;
y=coeff(numer(Yz))
disp(y,"y[n]=")