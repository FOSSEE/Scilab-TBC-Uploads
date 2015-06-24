x= [60 62 64 65 66 67 68 70 72 74];
y= [63.6 65.2 66 65.5 66.9 67.1 67.4 68.3 70.1 70];

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

SSR = ((Sxx*SYY)- (SxY*SxY))/Sxx ;
R2 = 1 - (SSR/SYY);
disp(R2, "The coefficient of determination is")