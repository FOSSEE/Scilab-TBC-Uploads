//example 2.5,pg.no.20
x=[1 2 4 8 16 32 64];
y=[0 0 0 1 0 0 0];
z=x.*y;
a=0;
for i=1:length(z)
    a=a+z(i);
end
z,a//a=summation of z