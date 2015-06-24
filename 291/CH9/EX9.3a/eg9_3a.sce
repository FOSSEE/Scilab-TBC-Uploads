x= [5 6 7 10 12 15 18 20];
y= [7.4 9.3 10.6 15.4 18.1 22.2 24.1 24.8];
plot2d(x,y,-1);

xbar = mean(x);
ybar= mean(y);
n= 8;
SxY = 0;
for i= 1:n
    SxY = SxY + (x(i)*y(i)) - (xbar*ybar);
end

Sxx = 0;
for i=1:n
    Sxx= Sxx + (x(i)*x(i)) - (xbar*xbar);
end
SYY = 0;
for i=1:n
    SYY = SYY + (y(i)*y(i)) - (ybar*ybar);
end
B = SxY/Sxx;
A = ybar - (B*xbar);
disp(A, "A is");
disp(B, "B is");
p= 0:0.1: 20;
q= A + B*p;
plot2d(p,q,2);

SSR = ((Sxx*SYY)- (SxY*SxY))/Sxx ;
disp(SSR, "The SSR is")