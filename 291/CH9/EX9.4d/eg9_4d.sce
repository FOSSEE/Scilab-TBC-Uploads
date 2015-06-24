x= [121 96 85 113 102 118 90 84 107 112 95 101];
y= [104 91 101 110 117 108 96 102 114 96 88 106];

plot2d(x,y,-1);
xlabel("Deaths in 1988");
ylabel("Deaths in 1989");

xbar = mean(x);
ybar= mean(y);
n= 12;
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
