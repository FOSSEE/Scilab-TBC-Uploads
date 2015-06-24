// calculate uncertainity in displacement
Pi=70*10^3;
r=0.4;
d2=1.6;
d1=0.75;
a=(d2/d1^2);
x1=(1.1-r)/(2*a);
disp(x1,'x1=')
r=0.9;
x2=(1.1-r)/(2*a);
disp(x2,'x2=')
x=x1-x2;
disp(x,'so the range is x (mm)')
d=-2*a;
Wr=12.5/Pi;
Wx=Wr/d;
disp(Wx,'uncertainity in displacement (mm)')
