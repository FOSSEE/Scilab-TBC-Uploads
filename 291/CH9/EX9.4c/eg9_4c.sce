x= [60 62 64 65 66 67 68 70 72 74];
y= [63.6 65.2 66 65.5 66.9 67.1 67.4 68.3 70.1 70];
plot2d(x,y,-1);
xbar = mean(x);
ybar= mean(y);
n= 10;
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
//disp(A, "A is");
//disp(B, "B is");
p= 60:0.1: 72;
q= A + B*p;
plot2d(p,q,2);
SSR = ((Sxx*SYY)- (SxY*SxY))/Sxx ;
ts = sqrt(((n-2)*Sxx)/SSR)*(B-1)
//disp(ts);
tvalue= cdft("T",n-2, 0.99, 0.01 );
//disp(tvalue);
if(ts<(-1*tvalue))
    disp("Null hypotheis is rejected at 1% level of significance")
else
    disp("Null hypotheis is accepted at 1% level of significance")
end    