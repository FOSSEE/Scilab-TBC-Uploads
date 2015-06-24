x= [5 10 20 30 40 50 60 80];
yold= [0.061 0.113 0.192 0.259 0.339 0.401 0.461 0.551];
plot2d(x, yold, -1);
y = -1*log(1-yold);
scf(2);
plot2d(x, y, -1);


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
//disp(A, "A is");
//disp(B, "B is");
SSR = ((Sxx*SYY)- (SxY*SxY))/Sxx ;
chat = exp(-1*A);
dhat = 1 - exp(-1*B);
disp(chat, "chat is");
disp(dhat, "dhat is");
