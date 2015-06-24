x= [60 62 64 65 66 67 68 70 72 74];
y= [63.6 65.2 66 65.5 66.9 67.1 67.4 68.3 70.1 70];
x0 = 68;
xbar = mean(x);
ybar= mean(y);
n= 10;
SxY = 0;
for i= 1:n
    SxY = SxY + (x(i)*y(i)) - (xbar*ybar);
end
//disp(SxY, "SxY is");
Sxx = 0;
for i=1:n
    Sxx= Sxx + (x(i)*x(i)) - (xbar*xbar);
end
//disp(Sxx, "Sxx is");
SYY = 0;
for i=1:n
    SYY = SYY + (y(i)*y(i)) - (ybar*ybar);
end
//disp(SYY, "SYY is");
B = SxY/Sxx;
A = ybar - (B*xbar);
tvalue= cdft("T",n-2, 0.975, 0.025 );
SSR = ((Sxx*SYY)- (SxY*SxY))/Sxx ;
//disp(tvalue, "tvalue is");
intvl = A + (B*x0);
//disp(intvl);
change = sqrt(((n+1)/n)+(((x0-xbar)^2)/Sxx))* sqrt(SSR/(n-2))*tvalue;
intvl1 = intvl - change;
intvl2= intvl + change;
disp(intvl2, "to ", intvl1 ,"The 95% confidence interval is "  );